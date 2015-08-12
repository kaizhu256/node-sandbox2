import os, multiprocessing, subprocess
from runner import BrowserCore, path_from_root
from tools.shared import *

def clean_pids(pids):
  import signal, errno
  def pid_exists(pid):
    try:
      # NOTE: may just kill the process in Windows
      os.kill(pid, 0)
    except OSError, e:
      return e.errno == errno.EPERM
    else:
        return True
  def kill_pids(pids, sig):
    for pid in pids:
      if not pid_exists(pid):
        break
      print '[killing %d]' % pid
      try:
        os.kill(pid, sig)
        print '[kill succeeded]'
      except:
        print '[kill fail]'
  # ask nicely (to try and catch the children)
  kill_pids(pids, signal.SIGTERM)
  time.sleep(1)
  # extreme prejudice, may leave children
  kill_pids(pids, signal.SIGKILL)

def make_relay_server(port1, port2):
  print >> sys.stderr, 'creating relay server on ports %d,%d' % (port1, port2)
  proc = Popen([PYTHON, path_from_root('tests', 'sockets', 'socket_relay.py'), str(port1), str(port2)])
  return proc

class WebsockifyServerHarness:
  def __init__(self, filename, args, listen_port):
    self.pids = []
    self.filename = filename
    self.listen_port = listen_port
    self.target_port = listen_port-1
    self.args = args or []

  def __enter__(self):
    import socket, websockify

    # compile the server
    # NOTE empty filename support is a hack to support
    # the current test_enet
    if self.filename:
      Popen([CLANG_CC, path_from_root('tests', self.filename), '-o', 'server', '-DSOCKK=%d' % self.target_port] + get_clang_native_args() + self.args).communicate()
      process = Popen([os.path.abspath('server')])
      self.pids.append(process.pid)

    # start the websocket proxy
    print >> sys.stderr, 'running websockify on %d, forward to tcp %d' % (self.listen_port, self.target_port)
    wsp = websockify.WebSocketProxy(verbose=True, listen_port=self.listen_port, target_host="127.0.0.1", target_port=self.target_port, run_once=True)
    self.websockify = multiprocessing.Process(target=wsp.start_server)
    self.websockify.start()
    self.pids.append(self.websockify.pid)
    print '[Websockify on process %s]' % str(self.pids[-2:])

  def __exit__(self, *args, **kwargs):
    # try to kill the websockify proxy gracefully
    if self.websockify.is_alive():
      self.websockify.terminate()
    self.websockify.join()

    # clean up any processes we started
    clean_pids(self.pids)


class CompiledServerHarness:
  def __init__(self, filename, args, listen_port):
    self.pids = []
    self.filename = filename
    self.listen_port = listen_port
    self.args = args or []

  def __enter__(self):
    # assuming this is only used for WebSocket tests at the moment, validate that
    # the ws module is installed
    child = Popen(NODE_JS + ['-e', 'require("ws");'])
    child.communicate()
    assert child.returncode == 0, 'ws module for Node.js not installed. Please run \'npm install\' from %s' % EMSCRIPTEN_ROOT

    # compile the server
    Popen([PYTHON, EMCC, path_from_root('tests', self.filename), '-o', 'server.js', '-DSOCKK=%d' % self.listen_port] + self.args).communicate()
    process = Popen(NODE_JS + ['server.js'])
    self.pids.append(process.pid)

  def __exit__(self, *args, **kwargs):
    # clean up any processes we started
    clean_pids(self.pids)

    # always run these tests last
    # make sure to use different ports in each one because it takes a while for the processes to be cleaned up

    # NOTE all datagram tests are temporarily disabled, as
    # we can't truly test datagram sockets until we have
    # proper listen server support.

def filter_harnesses(harnesses):
  # XXX avoid websockify for now due to intermittent errors. see issue #2700
  return filter(lambda harness: (harness[0].__class__ if type(harness) is tuple else harness.__class__) is not WebsockifyServerHarness, harnesses)

class sockets(BrowserCore):
  emcc_args = []

  @classmethod
  def setUpClass(self):
    super(sockets, self).setUpClass()
    self.browser_timeout = 30
    print
    print 'Running the socket tests. Make sure the browser allows popups from localhost.'
    print

  def test_inet(self):
    src = r'''
      #include <stdio.h>
      #include <arpa/inet.h>

      int main() {
        printf("*%x,%x,%x,%x,%x,%x*\n", htonl(0xa1b2c3d4), htonl(0xfe3572e0), htonl(0x07abcdf0), htons(0xabcd), ntohl(0x43211234), ntohs(0xbeaf));
        in_addr_t i = inet_addr("190.180.10.78");
        printf("%x\n", i);
        return 0;
      }
    '''
    self.do_run(src, '*d4c3b2a1,e07235fe,f0cdab07,cdab,34122143,afbe*\n4e0ab4be\n')

  def test_inet2(self):
    src = r'''
      #include <stdio.h>
      #include <arpa/inet.h>

      int main() {
        struct in_addr x, x2;
        int *y = (int*)&x;
        *y = 0x12345678;
        printf("%s\n", inet_ntoa(x));
        int r = inet_aton(inet_ntoa(x), &x2);
        printf("%s\n", inet_ntoa(x2));
        return 0;
      }
    '''
    self.do_run(src, '120.86.52.18\n120.86.52.18\n')

  def test_inet3(self):
    src = r'''
      #include <stdio.h>
      #include <arpa/inet.h>
      #include <sys/socket.h>
      int main() {
        char dst[64];
        struct in_addr x, x2;
        int *y = (int*)&x;
        *y = 0x12345678;
        printf("%s\n", inet_ntop(AF_INET,&x,dst,sizeof dst));
        int r = inet_aton(inet_ntoa(x), &x2);
        printf("%s\n", inet_ntop(AF_INET,&x2,dst,sizeof dst));
        return 0;
      }
    '''
    self.do_run(src, '120.86.52.18\n120.86.52.18\n')

  def test_inet4(self):
    src = r'''
      #include <stdio.h>
      #include <arpa/inet.h>
      #include <sys/socket.h>

      void test(char *test_addr, bool first=true){
          char str[40];
          struct in6_addr addr;
          unsigned char *p = (unsigned char*)&addr;
          int ret;
          ret = inet_pton(AF_INET6,test_addr,&addr);
          if(ret == -1) return;
          if(ret == 0) return;
          if(inet_ntop(AF_INET6,&addr,str,sizeof(str)) == NULL ) return;
          printf("%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x - %s\n",
               p[0],p[1],p[2],p[3],p[4],p[5],p[6],p[7],p[8],p[9],p[10],p[11],p[12],p[13],p[14],p[15],str);
          if (first) test(str, false); // check again, on our output
      }
      int main(){
          test("::");
          test("::1");
          test("::1.2.3.4");
          test("::17.18.19.20");
          test("::ffff:1.2.3.4");
          test("1::ffff");
          test("::255.255.255.255");
          test("0:ff00:1::");
          test("0:ff::");
          test("abcd::");
          test("ffff::a");
          test("ffff::a:b");
          test("ffff::a:b:c");
          test("ffff::a:b:c:d");
          test("ffff::a:b:c:d:e");
          test("::1:2:0:0:0");
          test("0:0:1:2:3::");
          test("ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff");
          test("1::255.255.255.255");

          //below should fail and not produce results..
          test("1.2.3.4");
          test("");
          test("-");

          printf("ok.\n");
      }
    '''
    self.do_run(src, r'''0000:0000:0000:0000:0000:0000:0000:0000 - ::
0000:0000:0000:0000:0000:0000:0000:0000 - ::
0000:0000:0000:0000:0000:0000:0000:0001 - ::1
0000:0000:0000:0000:0000:0000:0000:0001 - ::1
0000:0000:0000:0000:0000:0000:0102:0304 - ::102:304
0000:0000:0000:0000:0000:0000:0102:0304 - ::102:304
0000:0000:0000:0000:0000:0000:1112:1314 - ::1112:1314
0000:0000:0000:0000:0000:0000:1112:1314 - ::1112:1314
0000:0000:0000:0000:0000:ffff:0102:0304 - ::ffff:1.2.3.4
0000:0000:0000:0000:0000:ffff:0102:0304 - ::ffff:1.2.3.4
0001:0000:0000:0000:0000:0000:0000:ffff - 1::ffff
0001:0000:0000:0000:0000:0000:0000:ffff - 1::ffff
0000:0000:0000:0000:0000:0000:ffff:ffff - ::ffff:ffff
0000:0000:0000:0000:0000:0000:ffff:ffff - ::ffff:ffff
0000:ff00:0001:0000:0000:0000:0000:0000 - 0:ff00:1::
0000:ff00:0001:0000:0000:0000:0000:0000 - 0:ff00:1::
0000:00ff:0000:0000:0000:0000:0000:0000 - 0:ff::
0000:00ff:0000:0000:0000:0000:0000:0000 - 0:ff::
abcd:0000:0000:0000:0000:0000:0000:0000 - abcd::
abcd:0000:0000:0000:0000:0000:0000:0000 - abcd::
ffff:0000:0000:0000:0000:0000:0000:000a - ffff::a
ffff:0000:0000:0000:0000:0000:0000:000a - ffff::a
ffff:0000:0000:0000:0000:0000:000a:000b - ffff::a:b
ffff:0000:0000:0000:0000:0000:000a:000b - ffff::a:b
ffff:0000:0000:0000:0000:000a:000b:000c - ffff::a:b:c
ffff:0000:0000:0000:0000:000a:000b:000c - ffff::a:b:c
ffff:0000:0000:0000:000a:000b:000c:000d - ffff::a:b:c:d
ffff:0000:0000:0000:000a:000b:000c:000d - ffff::a:b:c:d
ffff:0000:0000:000a:000b:000c:000d:000e - ffff::a:b:c:d:e
ffff:0000:0000:000a:000b:000c:000d:000e - ffff::a:b:c:d:e
0000:0000:0000:0001:0002:0000:0000:0000 - ::1:2:0:0:0
0000:0000:0000:0001:0002:0000:0000:0000 - ::1:2:0:0:0
0000:0000:0001:0002:0003:0000:0000:0000 - 0:0:1:2:3::
0000:0000:0001:0002:0003:0000:0000:0000 - 0:0:1:2:3::
ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff - ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff
ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff - ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff
0001:0000:0000:0000:0000:0000:ffff:ffff - 1::ffff:ffff
0001:0000:0000:0000:0000:0000:ffff:ffff - 1::ffff:ffff
ok.
''')

  def test_getaddrinfo(self):
    self.emcc_args=[]
    self.do_run(open(path_from_root('tests', 'sockets', 'test_getaddrinfo.c')).read(), 'success')

  def test_getnameinfo(self):
    self.do_run(open(path_from_root('tests', 'sockets', 'test_getnameinfo.c')).read(), 'success')

  def test_gethostbyname(self):
    self.do_run(open(path_from_root('tests', 'sockets', 'test_gethostbyname.c')).read(), 'success')

  def test_getprotobyname(self):
    self.do_run(open(path_from_root('tests', 'sockets', 'test_getprotobyname.c')).read(), 'success')

  def test_sockets_echo(self):
    sockets_include = '-I'+path_from_root('tests', 'sockets')

    # Websockify-proxied servers can't run dgram tests
    harnesses = [
      (WebsockifyServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include], 49160), 0),
      (CompiledServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include, '-DTEST_DGRAM=0'], 49161), 0),
      (CompiledServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include, '-DTEST_DGRAM=1'], 49162), 1),
      # The following forces non-NULL addr and addlen parameters for the accept call
      (CompiledServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include, '-DTEST_DGRAM=0', '-DTEST_ACCEPT_ADDR=1'], 49163), 0)
    ]
    harnesses = filter_harnesses(harnesses)

    for harness, datagram in harnesses:
      with harness:
        self.btest(os.path.join('sockets', 'test_sockets_echo_client.c'), expected='0', args=['-DSOCKK=%d' % harness.listen_port, '-DTEST_DGRAM=%d' % datagram, sockets_include])

  def test_sockets_async_echo(self):
    # Run with ./runner.py sockets.test_sockets_async_echo
    sockets_include = '-I'+path_from_root('tests', 'sockets')

    # Websockify-proxied servers can't run dgram tests
    harnesses = [
      (WebsockifyServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include, '-DTEST_ASYNC=1'], 49165), 0),
      (CompiledServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include, '-DTEST_DGRAM=0', '-DTEST_ASYNC=1'], 49166), 0),
      (CompiledServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include, '-DTEST_DGRAM=1', '-DTEST_ASYNC=1'], 49167), 1),
      # The following forces non-NULL addr and addlen parameters for the accept call
      (CompiledServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include, '-DTEST_DGRAM=0', '-DTEST_ACCEPT_ADDR=1', '-DTEST_ASYNC=1'], 49168), 0)
    ]
    #harnesses = filter_harnesses(harnesses)

    for harness, datagram in harnesses:
      with harness:
        self.btest(os.path.join('sockets', 'test_sockets_echo_client.c'), expected='0', args=['-DSOCKK=%d' % harness.listen_port, '-DTEST_DGRAM=%d' % datagram, '-DTEST_ASYNC=1', sockets_include])

    # Deliberately attempt a connection on a port that will fail to test the error callback and getsockopt
    self.btest(os.path.join('sockets', 'test_sockets_echo_client.c'), expected='0', args=['-DSOCKK=49169', '-DTEST_ASYNC=1', sockets_include])

  def test_sockets_echo_bigdata(self):
    sockets_include = '-I'+path_from_root('tests', 'sockets')

    # generate a large string literal to use as our message
    message = ''
    for i in range(256*256*2):
        message += str(unichr(ord('a') + (i % 26)))

    # re-write the client test with this literal (it's too big to pass via command line)
    input_filename = path_from_root('tests', 'sockets', 'test_sockets_echo_client.c')
    input = open(input_filename).read()
    output = input.replace('#define MESSAGE "pingtothepong"', '#define MESSAGE "%s"' % message)

    harnesses = [
      (WebsockifyServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include], 49170), 0),
      (CompiledServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include, '-DTEST_DGRAM=0'], 49171), 0),
      (CompiledServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include, '-DTEST_DGRAM=1'], 49172), 1)
    ]
    harnesses = filter_harnesses(harnesses)

    for harness, datagram in harnesses:
      with harness:
        self.btest(output, expected='0', args=[sockets_include, '-DSOCKK=%d' % harness.listen_port, '-DTEST_DGRAM=%d' % datagram], force_c=True)

  def test_sockets_partial(self):
    for harness in [
      WebsockifyServerHarness(os.path.join('sockets', 'test_sockets_partial_server.c'), [], 49180),
      CompiledServerHarness(os.path.join('sockets', 'test_sockets_partial_server.c'), [], 49181)
    ]:
      with harness:
        self.btest(os.path.join('sockets', 'test_sockets_partial_client.c'), expected='165', args=['-DSOCKK=%d' % harness.listen_port])

  def test_sockets_select_server_down(self):
    for harness in [
      WebsockifyServerHarness(os.path.join('sockets', 'test_sockets_select_server_down_server.c'), [], 49190),
      CompiledServerHarness(os.path.join('sockets', 'test_sockets_select_server_down_server.c'), [], 49191)
    ]:
      with harness:
        self.btest(os.path.join('sockets', 'test_sockets_select_server_down_client.c'), expected='266', args=['-DSOCKK=%d' % harness.listen_port])

  def test_sockets_select_server_closes_connection_rw(self):
    sockets_include = '-I'+path_from_root('tests', 'sockets')

    for harness in [
      WebsockifyServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include, '-DCLOSE_CLIENT_AFTER_ECHO'], 49200),
      CompiledServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include, '-DCLOSE_CLIENT_AFTER_ECHO'], 49201)
    ]:
      with harness:
        self.btest(os.path.join('sockets', 'test_sockets_select_server_closes_connection_client_rw.c'), expected='266', args=[sockets_include, '-DSOCKK=%d' % harness.listen_port])

  def test_enet(self):
    # this is also a good test of raw usage of emconfigure and emmake
    try_delete(self.in_dir('enet'))
    shutil.copytree(path_from_root('tests', 'enet'), self.in_dir('enet'))
    pwd = os.getcwd()
    os.chdir(self.in_dir('enet'))
    Popen([PYTHON, path_from_root('emconfigure'), './configure']).communicate()
    Popen([PYTHON, path_from_root('emmake'), 'make']).communicate()
    enet = [self.in_dir('enet', '.libs', 'libenet.a'), '-I'+path_from_root('tests', 'enet', 'include')]
    os.chdir(pwd)

    for harness in [
      CompiledServerHarness(os.path.join('sockets', 'test_enet_server.c'), enet, 49210)
    ]:
      with harness:
        self.btest(os.path.join('sockets', 'test_enet_client.c'), expected='0', args=enet + ['-DSOCKK=%d' % harness.listen_port])

  # This test is no longer in use for WebSockets as we can't truly emulate
  # a server in the browser (in the past, there were some hacks to make it
  # somewhat work, but those have been removed). However, with WebRTC it
  # should be able to resurect this test.
  # def test_enet_in_browser(self):
  #   try_delete(self.in_dir('enet'))
  #   shutil.copytree(path_from_root('tests', 'enet'), self.in_dir('enet'))
  #   pwd = os.getcwd()
  #   os.chdir(self.in_dir('enet'))
  #   Popen([PYTHON, path_from_root('emconfigure'), './configure']).communicate()
  #   Popen([PYTHON, path_from_root('emmake'), 'make']).communicate()
  #   enet = [self.in_dir('enet', '.libs', 'libenet.a'), '-I'+path_from_root('tests', 'enet', 'include')]
  #   os.chdir(pwd)
  #   Popen([PYTHON, EMCC, path_from_root('tests', 'sockets', 'test_enet_server.c'), '-o', 'server.html', '-DSOCKK=2235'] + enet).communicate()

  #   with WebsockifyServerHarness('', [], 2235, 2234):
  #     with WebsockifyServerHarness('', [], 2237, 2236):
  #       pids = []
  #       try:
  #         proc = make_relay_server(2234, 2236)
  #         pids.append(proc.pid)
  #         self.btest(os.path.join('sockets', 'test_enet_client.c'), expected='0', args=['-DSOCKK=2237', '-DUSE_IFRAME=1'] + enet)
  #       finally:
  #         clean_pids(pids);

  def test_webrtc(self): # XXX see src/settings.js, this is disabled pending investigation
    host_src = 'webrtc_host.c'
    peer_src = 'webrtc_peer.c'

    host_outfile = 'host.html'
    peer_outfile = 'peer.html'

    host_filepath = path_from_root('tests', 'sockets', host_src)
    temp_host_filepath = os.path.join(self.get_dir(), os.path.basename(host_src))
    with open(host_filepath) as f: host_src = f.read()
    with open(temp_host_filepath, 'w') as f: f.write(self.with_report_result(host_src))

    peer_filepath = path_from_root('tests', 'sockets', peer_src)
    temp_peer_filepath = os.path.join(self.get_dir(), os.path.basename(peer_src))
    with open(peer_filepath) as f: peer_src = f.read()
    with open(temp_peer_filepath, 'w') as f: f.write(self.with_report_result(peer_src))

    open(os.path.join(self.get_dir(), 'host_pre.js'), 'w').write('''
      var Module = {
        webrtc: {
          broker: 'http://localhost:8182',
          session: undefined,
          onpeer: function(peer, route) {
            window.open('http://localhost:8888/peer.html?' + route);
            // iframe = document.createElement("IFRAME");
            // iframe.setAttribute("src", "http://localhost:8888/peer.html?" + route);
            // iframe.style.display = "none";
            // document.body.appendChild(iframe);
            peer.listen();
          },
          onconnect: function(peer) {
          },
          ondisconnect: function(peer) {
          },
          onerror: function(error) {
            console.error(error);
          }
        },
      };
    ''')

    open(os.path.join(self.get_dir(), 'peer_pre.js'), 'w').write('''
      var Module = {
        webrtc: {
          broker: 'http://localhost:8182',
          session: window.location.toString().split('?')[1],
          onpeer: function(peer, route) {
            peer.connect(Module['webrtc']['session']);
          },
          onconnect: function(peer) {
          },
          ondisconnect: function(peer) {
            // Calling window.close() from this handler hangs my browser, so run it in the next turn
            setTimeout(window.close, 0);
          },
          onerror: function(error) {
            console.error(error);
          }
        }
      };
    ''')

    Popen([PYTHON, EMCC, temp_host_filepath, '-o', host_outfile] + ['-s', 'GL_TESTING=1', '--pre-js', 'host_pre.js', '-s', 'SOCKET_WEBRTC=1', '-s', 'SOCKET_DEBUG=1']).communicate()
    Popen([PYTHON, EMCC, temp_peer_filepath, '-o', peer_outfile] + ['-s', 'GL_TESTING=1', '--pre-js', 'peer_pre.js', '-s', 'SOCKET_WEBRTC=1', '-s', 'SOCKET_DEBUG=1']).communicate()

    # note: you may need to run this manually yourself, if npm is not in the path, or if you need a version that is not in the path
    Popen(['npm', 'install', path_from_root('tests', 'sockets', 'p2p')]).communicate()
    broker = Popen(NODE_JS + [path_from_root('tests', 'sockets', 'p2p', 'broker', 'p2p-broker.js')])

    expected = '1'
    self.run_browser(host_outfile, '.', ['/report_result?' + e for e in expected])

    broker.kill();

  def test_nodejs_sockets_echo(self):
    # This test checks that sockets work when the client code is run in Node.js
    # Run with ./runner.py sockets.test_nodejs_sockets_echo
    if not NODE_JS in JS_ENGINES:
        return self.skip('node is not present')

    sockets_include = '-I'+path_from_root('tests', 'sockets')

    harnesses = [
      (WebsockifyServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include], 59160), 0),
      (CompiledServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include, '-DTEST_DGRAM=0'], 59162), 0),
      (CompiledServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include, '-DTEST_DGRAM=1'], 59164), 1)
    ]
    harnesses = filter_harnesses(harnesses)

    # Basic test of node client against both a Websockified and compiled echo server.
    for harness, datagram in harnesses:
      with harness:
        Popen([PYTHON, EMCC, path_from_root('tests', 'sockets', 'test_sockets_echo_client.c'), '-o', 'client.js', '-DSOCKK=%d' % harness.listen_port, '-DTEST_DGRAM=%d' % datagram, '-DREPORT_RESULT=int dummy'], stdout=PIPE, stderr=PIPE).communicate()

        out = run_js('client.js', engine=NODE_JS, full_output=True)
        self.assertContained('do_msg_read: read 14 bytes', out)

    # Test against a Websockified server with compile time configured WebSocket subprotocol. We use a Websockified
    # server because as long as the subprotocol list contains binary it will configure itself to accept binary
    # This test also checks that the connect url contains the correct subprotocols.
    print "\nTesting compile time WebSocket configuration.\n"
    for harness in filter_harnesses([
      WebsockifyServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include], 59166)
    ]):
      with harness:
        Popen([PYTHON, EMCC, path_from_root('tests', 'sockets', 'test_sockets_echo_client.c'), '-o', 'client.js', '-s', 'SOCKET_DEBUG=1', '-s', 'WEBSOCKET_SUBPROTOCOL="base64, binary"', '-DSOCKK=59166', '-DREPORT_RESULT=int dummy'], stdout=PIPE, stderr=PIPE).communicate()

        out = run_js('client.js', engine=NODE_JS, full_output=True)
        self.assertContained('do_msg_read: read 14 bytes', out)
        self.assertContained(['connect: ws://127.0.0.1:59166, base64,binary', 'connect: ws://127.0.0.1:59166/, base64,binary'], out)

    # Test against a Websockified server with runtime WebSocket configuration. We specify both url and subprotocol.
    # In this test we have *deliberately* used the wrong port '-DSOCKK=12345' to configure the echo_client.c, so
    # the connection would fail without us specifying a valid WebSocket URL in the configuration.
    print "\nTesting runtime WebSocket configuration.\n"
    for harness in filter_harnesses([
      WebsockifyServerHarness(os.path.join('sockets', 'test_sockets_echo_server.c'), [sockets_include], 59168)
    ]):
      with harness:
        open(os.path.join(self.get_dir(), 'websocket_pre.js'), 'w').write('''
        var Module = {
          websocket: {
            url: 'ws://localhost:59168/testA/testB',
            subprotocol: 'text, base64, binary',
          }
        };
        ''')

        Popen([PYTHON, EMCC, path_from_root('tests', 'sockets', 'test_sockets_echo_client.c'), '-o', 'client.js', '--pre-js', 'websocket_pre.js', '-s', 'SOCKET_DEBUG=1', '-DSOCKK=12345', '-DREPORT_RESULT=int dummy'], stdout=PIPE, stderr=PIPE).communicate()

        out = run_js('client.js', engine=NODE_JS, full_output=True)
        self.assertContained('do_msg_read: read 14 bytes', out)
        self.assertContained('connect: ws://localhost:59168/testA/testB, text,base64,binary', out)

