# api-documentation for  [mysql (v2.13.0)](https://github.com/mysqljs/mysql#readme)  



# <a name="apidoc.tableOfContents"></a>[table of contents](#apidoc.tableOfContents)  

#### [module mysql](#apidoc.module.mysql)      
1.  [function <span class="apidocSignatureSpan">mysql.</span>Connection (options)](#apidoc.element.mysql.Connection)   
1.  [function <span class="apidocSignatureSpan">mysql.</span>ConnectionConfig (options)](#apidoc.element.mysql.ConnectionConfig)   
1.  [function <span class="apidocSignatureSpan">mysql.</span>Pool (options)](#apidoc.element.mysql.Pool)   
1.  [function <span class="apidocSignatureSpan">mysql.</span>PoolCluster (config)](#apidoc.element.mysql.PoolCluster)   
1.  [function <span class="apidocSignatureSpan">mysql.</span>PoolConfig (options)](#apidoc.element.mysql.PoolConfig)   
1.  [function <span class="apidocSignatureSpan">mysql.</span>PoolConnection (pool, options)](#apidoc.element.mysql.PoolConnection)   
1.  [function <span class="apidocSignatureSpan">mysql.</span>PoolNamespace (cluster, pattern, selector)](#apidoc.element.mysql.PoolNamespace)   
1.  [function <span class="apidocSignatureSpan">mysql.</span>createConnection (config)](#apidoc.element.mysql.createConnection)   
1.  [function <span class="apidocSignatureSpan">mysql.</span>createPool (config)](#apidoc.element.mysql.createPool)   
1.  [function <span class="apidocSignatureSpan">mysql.</span>createPoolCluster (config)](#apidoc.element.mysql.createPoolCluster)   
1.  [function <span class="apidocSignatureSpan">mysql.</span>createQuery (sql, values, callback)](#apidoc.element.mysql.createQuery)   
1.  [function <span class="apidocSignatureSpan">mysql.</span>escape (value, stringifyObjects, timeZone)](#apidoc.element.mysql.escape)   
1.  [function <span class="apidocSignatureSpan">mysql.</span>escapeId (value, forbidQualified)](#apidoc.element.mysql.escapeId)   
1.  [function <span class="apidocSignatureSpan">mysql.</span>format (sql, values, stringifyObjects, timeZone)](#apidoc.element.mysql.format)   
1.  object <span class="apidocSignatureSpan">mysql.</span>Connection.prototype   
1.  object <span class="apidocSignatureSpan">mysql.</span>Pool.prototype   
1.  object <span class="apidocSignatureSpan">mysql.</span>PoolCluster.prototype   
1.  object <span class="apidocSignatureSpan">mysql.</span>PoolConfig.prototype   
1.  object <span class="apidocSignatureSpan">mysql.</span>PoolConnection.prototype   
1.  object <span class="apidocSignatureSpan">mysql.</span>PoolNamespace.prototype   
1.  object <span class="apidocSignatureSpan">mysql.</span>PoolSelector    

#### [module mysql.Connection](#apidoc.module.mysql.Connection)      
1.  [function <span class="apidocSignatureSpan">mysql.</span>Connection (options)](#apidoc.element.mysql.Connection.Connection)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.</span>createQuery (sql, values, callback)](#apidoc.element.mysql.Connection.createQuery)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.</span>super_ ()](#apidoc.element.mysql.Connection.super_)    

#### [module mysql.Connection.prototype](#apidoc.module.mysql.Connection.prototype)      
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_handleConnectTimeout ()](#apidoc.element.mysql.Connection.prototype._handleConnectTimeout)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_handleNetworkError (err)](#apidoc.element.mysql.Connection.prototype._handleNetworkError)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_handleProtocolConnect ()](#apidoc.element.mysql.Connection.prototype._handleProtocolConnect)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_handleProtocolDrain ()](#apidoc.element.mysql.Connection.prototype._handleProtocolDrain)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_handleProtocolEnd (err)](#apidoc.element.mysql.Connection.prototype._handleProtocolEnd)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_handleProtocolEnqueue (sequence)](#apidoc.element.mysql.Connection.prototype._handleProtocolEnqueue)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_handleProtocolError (err)](#apidoc.element.mysql.Connection.prototype._handleProtocolError)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_handleProtocolHandshake (packet)](#apidoc.element.mysql.Connection.prototype._handleProtocolHandshake)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_implyConnect ()](#apidoc.element.mysql.Connection.prototype._implyConnect)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_startTLS (onSecure)](#apidoc.element.mysql.Connection.prototype._startTLS)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>beginTransaction (options, callback)](#apidoc.element.mysql.Connection.prototype.beginTransaction)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>changeUser (options, callback)](#apidoc.element.mysql.Connection.prototype.changeUser)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>commit (options, callback)](#apidoc.element.mysql.Connection.prototype.commit)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>connect (options, callback)](#apidoc.element.mysql.Connection.prototype.connect)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>destroy ()](#apidoc.element.mysql.Connection.prototype.destroy)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>end (options, callback)](#apidoc.element.mysql.Connection.prototype.end)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>escape (value)](#apidoc.element.mysql.Connection.prototype.escape)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>escapeId (value)](#apidoc.element.mysql.Connection.prototype.escapeId)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>format (sql, values)](#apidoc.element.mysql.Connection.prototype.format)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>pause ()](#apidoc.element.mysql.Connection.prototype.pause)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>ping (options, callback)](#apidoc.element.mysql.Connection.prototype.ping)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>query (sql, values, cb)](#apidoc.element.mysql.Connection.prototype.query)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>resume ()](#apidoc.element.mysql.Connection.prototype.resume)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>rollback (options, callback)](#apidoc.element.mysql.Connection.prototype.rollback)   
1.  [function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>statistics (options, callback)](#apidoc.element.mysql.Connection.prototype.statistics)    

#### [module mysql.ConnectionConfig](#apidoc.module.mysql.ConnectionConfig)      
1.  [function <span class="apidocSignatureSpan">mysql.</span>ConnectionConfig (options)](#apidoc.element.mysql.ConnectionConfig.ConnectionConfig)   
1.  [function <span class="apidocSignatureSpan">mysql.ConnectionConfig.</span>getCharsetNumber (charset)](#apidoc.element.mysql.ConnectionConfig.getCharsetNumber)   
1.  [function <span class="apidocSignatureSpan">mysql.ConnectionConfig.</span>getDefaultFlags (options)](#apidoc.element.mysql.ConnectionConfig.getDefaultFlags)   
1.  [function <span class="apidocSignatureSpan">mysql.ConnectionConfig.</span>getSSLProfile (name)](#apidoc.element.mysql.ConnectionConfig.getSSLProfile)   
1.  [function <span class="apidocSignatureSpan">mysql.ConnectionConfig.</span>mergeFlags (defaultFlags, userFlags)](#apidoc.element.mysql.ConnectionConfig.mergeFlags)   
1.  [function <span class="apidocSignatureSpan">mysql.ConnectionConfig.</span>parseFlagList (flagList)](#apidoc.element.mysql.ConnectionConfig.parseFlagList)   
1.  [function <span class="apidocSignatureSpan">mysql.ConnectionConfig.</span>parseUrl (url)](#apidoc.element.mysql.ConnectionConfig.parseUrl)    

#### [module mysql.Pool](#apidoc.module.mysql.Pool)      
1.  [function <span class="apidocSignatureSpan">mysql.</span>Pool (options)](#apidoc.element.mysql.Pool.Pool)   
1.  [function <span class="apidocSignatureSpan">mysql.Pool.</span>super_ ()](#apidoc.element.mysql.Pool.super_)    

#### [module mysql.Pool.prototype](#apidoc.module.mysql.Pool.prototype)      
1.  [function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>_enqueueCallback (callback)](#apidoc.element.mysql.Pool.prototype._enqueueCallback)   
1.  [function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>_needsChangeUser (connection)](#apidoc.element.mysql.Pool.prototype._needsChangeUser)   
1.  [function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>_purgeConnection (connection, callback)](#apidoc.element.mysql.Pool.prototype._purgeConnection)   
1.  [function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>_removeConnection (connection)](#apidoc.element.mysql.Pool.prototype._removeConnection)   
1.  [function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>acquireConnection (connection, cb)](#apidoc.element.mysql.Pool.prototype.acquireConnection)   
1.  [function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>end (cb)](#apidoc.element.mysql.Pool.prototype.end)   
1.  [function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>escape (value)](#apidoc.element.mysql.Pool.prototype.escape)   
1.  [function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>escapeId (value)](#apidoc.element.mysql.Pool.prototype.escapeId)   
1.  [function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>getConnection (cb)](#apidoc.element.mysql.Pool.prototype.getConnection)   
1.  [function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>query (sql, values, cb)](#apidoc.element.mysql.Pool.prototype.query)   
1.  [function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>releaseConnection (connection)](#apidoc.element.mysql.Pool.prototype.releaseConnection)    

#### [module mysql.PoolCluster](#apidoc.module.mysql.PoolCluster)      
1.  [function <span class="apidocSignatureSpan">mysql.</span>PoolCluster (config)](#apidoc.element.mysql.PoolCluster.PoolCluster)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolCluster.</span>super_ ()](#apidoc.element.mysql.PoolCluster.super_)    

#### [module mysql.PoolCluster.prototype](#apidoc.module.mysql.PoolCluster.prototype)      
1.  [function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>_clearFindCaches ()](#apidoc.element.mysql.PoolCluster.prototype._clearFindCaches)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>_decreaseErrorCount (node)](#apidoc.element.mysql.PoolCluster.prototype._decreaseErrorCount)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>_findNodeIds (pattern, includeOffline)](#apidoc.element.mysql.PoolCluster.prototype._findNodeIds)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>_getConnection (node, cb)](#apidoc.element.mysql.PoolCluster.prototype._getConnection)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>_getNode (id)](#apidoc.element.mysql.PoolCluster.prototype._getNode)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>_increaseErrorCount (node)](#apidoc.element.mysql.PoolCluster.prototype._increaseErrorCount)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>_removeNode (node)](#apidoc.element.mysql.PoolCluster.prototype._removeNode)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>add (id, config)](#apidoc.element.mysql.PoolCluster.prototype.add)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>end (callback)](#apidoc.element.mysql.PoolCluster.prototype.end)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>getConnection (pattern, selector, cb)](#apidoc.element.mysql.PoolCluster.prototype.getConnection)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>of (pattern, selector)](#apidoc.element.mysql.PoolCluster.prototype.of)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>remove (pattern)](#apidoc.element.mysql.PoolCluster.prototype.remove)    

#### [module mysql.PoolConfig](#apidoc.module.mysql.PoolConfig)      
1.  [function <span class="apidocSignatureSpan">mysql.</span>PoolConfig (options)](#apidoc.element.mysql.PoolConfig.PoolConfig)    

#### [module mysql.PoolConfig.prototype](#apidoc.module.mysql.PoolConfig.prototype)      
1.  [function <span class="apidocSignatureSpan">mysql.PoolConfig.prototype.</span>newConnectionConfig ()](#apidoc.element.mysql.PoolConfig.prototype.newConnectionConfig)    

#### [module mysql.PoolConnection](#apidoc.module.mysql.PoolConnection)      
1.  [function <span class="apidocSignatureSpan">mysql.</span>PoolConnection (pool, options)](#apidoc.element.mysql.PoolConnection.PoolConnection)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolConnection.</span>super_ (options)](#apidoc.element.mysql.PoolConnection.super_)    

#### [module mysql.PoolConnection.prototype](#apidoc.module.mysql.PoolConnection.prototype)      
1.  [function <span class="apidocSignatureSpan">mysql.PoolConnection.prototype.</span>_realEnd (options, callback)](#apidoc.element.mysql.PoolConnection.prototype._realEnd)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolConnection.prototype.</span>_removeFromPool ()](#apidoc.element.mysql.PoolConnection.prototype._removeFromPool)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolConnection.prototype.</span>destroy ()](#apidoc.element.mysql.PoolConnection.prototype.destroy)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolConnection.prototype.</span>end ()](#apidoc.element.mysql.PoolConnection.prototype.end)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolConnection.prototype.</span>release ()](#apidoc.element.mysql.PoolConnection.prototype.release)    

#### [module mysql.PoolNamespace](#apidoc.module.mysql.PoolNamespace)      
1.  [function <span class="apidocSignatureSpan">mysql.</span>PoolNamespace (cluster, pattern, selector)](#apidoc.element.mysql.PoolNamespace.PoolNamespace)    

#### [module mysql.PoolNamespace.prototype](#apidoc.module.mysql.PoolNamespace.prototype)      
1.  [function <span class="apidocSignatureSpan">mysql.PoolNamespace.prototype.</span>_getClusterNode ()](#apidoc.element.mysql.PoolNamespace.prototype._getClusterNode)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolNamespace.prototype.</span>getConnection (cb)](#apidoc.element.mysql.PoolNamespace.prototype.getConnection)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolNamespace.prototype.</span>query (sql, values, cb)](#apidoc.element.mysql.PoolNamespace.prototype.query)    

#### [module mysql.PoolSelector](#apidoc.module.mysql.PoolSelector)      
1.  [function <span class="apidocSignatureSpan">mysql.PoolSelector.</span>ORDER ()](#apidoc.element.mysql.PoolSelector.ORDER)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolSelector.</span>RANDOM ()](#apidoc.element.mysql.PoolSelector.RANDOM)   
1.  [function <span class="apidocSignatureSpan">mysql.PoolSelector.</span>RR ()](#apidoc.element.mysql.PoolSelector.RR)     



# <a name="apidoc.module.mysql"></a>[module mysql](#apidoc.module.mysql)   

#### <a name="apidoc.element.mysql.Connection"></a>[function <span class="apidocSignatureSpan">mysql.</span>Connection (options)](#apidoc.element.mysql.Connection) 
- description and source-code 
```javascript 
function Connection(options) {
  Events.EventEmitter.call(this);

  this.config = options.config;

  this._socket        = options.socket;
  this._protocol      = new Protocol({config: this.config, connection: this});
  this._connectCalled = false;
  this.state          = 'disconnected';
  this.threadId       = null;
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.ConnectionConfig"></a>[function <span class="apidocSignatureSpan">mysql.</span>ConnectionConfig (options)](#apidoc.element.mysql.ConnectionConfig) 
- description and source-code 
```javascript 
function ConnectionConfig(options) {
  if (typeof options === 'string') {
    options = ConnectionConfig.parseUrl(options);
  }

  this.host               = options.host || 'localhost';
  this.port               = options.port || 3306;
  this.localAddress       = options.localAddress;
  this.socketPath         = options.socketPath;
  this.user               = options.user || undefined;
  this.password           = options.password || undefined;
  this.database           = options.database;
  this.connectTimeout     = (options.connectTimeout === undefined)
    ? (10 * 1000)
    : options.connectTimeout;
  this.insecureAuth       = options.insecureAuth || false;
  this.supportBigNumbers  = options.supportBigNumbers || false;
  this.bigNumberStrings   = options.bigNumberStrings || false;
  this.dateStrings        = options.dateStrings || false;
  this.debug              = options.debug;
  this.trace              = options.trace !== false;
  this.stringifyObjects   = options.stringifyObjects || false;
  this.timezone           = options.timezone || 'local';
  this.flags              = options.flags || '';
  this.queryFormat        = options.queryFormat;
  this.pool               = options.pool || undefined;
  this.ssl                = (typeof options.ssl === 'string')
    ? ConnectionConfig.getSSLProfile(options.ssl)
    : (options.ssl || false);
  this.multipleStatements = options.multipleStatements || false;
  this.typeCast           = (options.typeCast === undefined)
    ? true
    : options.typeCast;

  if (this.timezone[0] === ' ') {
    // "+" is a url encoded char for space so it
    // gets translated to space when giving a
    // connection string..
    this.timezone = '+' + this.timezone.substr(1);
  }

  if (this.ssl) {
    // Default rejectUnauthorized to true
    this.ssl.rejectUnauthorized = this.ssl.rejectUnauthorized !== false;
  }

  this.maxPacketSize = 0;
  this.charsetNumber = (options.charset)
    ? ConnectionConfig.getCharsetNumber(options.charset)
    : options.charsetNumber || Charsets.UTF8_GENERAL_CI;

  // Set the client flags
  var defaultFlags = ConnectionConfig.getDefaultFlags(options);
  this.clientFlags = ConnectionConfig.mergeFlags(defaultFlags, options.flags);
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.Pool"></a>[function <span class="apidocSignatureSpan">mysql.</span>Pool (options)](#apidoc.element.mysql.Pool) 
- description and source-code 
```javascript 
function Pool(options) {
  EventEmitter.call(this);
  this.config = options.config;
  this.config.connectionConfig.pool = this;

  this._acquiringConnections = [];
  this._allConnections       = [];
  this._freeConnections      = [];
  this._connectionQueue      = [];
  this._closed               = false;
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.PoolCluster"></a>[function <span class="apidocSignatureSpan">mysql.</span>PoolCluster (config)](#apidoc.element.mysql.PoolCluster) 
- description and source-code 
```javascript 
function PoolCluster(config) {
  EventEmitter.call(this);

  config = config || {};
  this._canRetry = typeof config.canRetry === 'undefined' ? true : config.canRetry;
  this._defaultSelector = config.defaultSelector || 'RR';
  this._removeNodeErrorCount = config.removeNodeErrorCount || 5;
  this._restoreNodeTimeout = config.restoreNodeTimeout || 0;

  this._closed = false;
  this._findCaches = Object.create(null);
  this._lastId = 0;
  this._namespaces = Object.create(null);
  this._nodes = Object.create(null);
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.PoolConfig"></a>[function <span class="apidocSignatureSpan">mysql.</span>PoolConfig (options)](#apidoc.element.mysql.PoolConfig) 
- description and source-code 
```javascript 
function PoolConfig(options) {
  if (typeof options === 'string') {
    options = ConnectionConfig.parseUrl(options);
  }

  this.acquireTimeout     = (options.acquireTimeout === undefined)
    ? 10 * 1000
    : Number(options.acquireTimeout);
  this.connectionConfig   = new ConnectionConfig(options);
  this.waitForConnections = (options.waitForConnections === undefined)
    ? true
    : Boolean(options.waitForConnections);
  this.connectionLimit    = (options.connectionLimit === undefined)
    ? 10
    : Number(options.connectionLimit);
  this.queueLimit         = (options.queueLimit === undefined)
    ? 0
    : Number(options.queueLimit);
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.PoolConnection"></a>[function <span class="apidocSignatureSpan">mysql.</span>PoolConnection (pool, options)](#apidoc.element.mysql.PoolConnection) 
- description and source-code 
```javascript 
function PoolConnection(pool, options) {
  Connection.call(this, options);
  this._pool  = pool;

  // Bind connection to pool domain
  if (Events.usingDomains) {
    this.domain = pool.domain;
  }

  // When a fatal error occurs the connection's protocol ends, which will cause
  // the connection to end as well, thus we only need to watch for the end event
  // and we will be notified of disconnects.
  this.on('end', this._removeFromPool);
  this.on('error', function (err) {
    if (err.fatal) {
      this._removeFromPool();
    }
  });
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.PoolNamespace"></a>[function <span class="apidocSignatureSpan">mysql.</span>PoolNamespace (cluster, pattern, selector)](#apidoc.element.mysql.PoolNamespace) 
- description and source-code 
```javascript 
function PoolNamespace(cluster, pattern, selector) {
  this._cluster = cluster;
  this._pattern = pattern;
  this._selector = new PoolSelector[selector]();
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.createConnection"></a>[function <span class="apidocSignatureSpan">mysql.</span>createConnection (config)](#apidoc.element.mysql.createConnection) 
- description and source-code 
```javascript 
function createConnection(config) {
  var Connection       = loadClass('Connection');
  var ConnectionConfig = loadClass('ConnectionConfig');

  return new Connection({config: new ConnectionConfig(config)});
} 
``` 
- example usage 
```shell 
...
This is a node.js driver for mysql. It is written in JavaScript, does not
require compiling, and is 100% MIT licensed.

Here is an example on how to use it:

'''js
var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'me',
  password : 'secret',
  database : 'my_db'
});

connection.connect();
... 
```    

#### <a name="apidoc.element.mysql.createPool"></a>[function <span class="apidocSignatureSpan">mysql.</span>createPool (config)](#apidoc.element.mysql.createPool) 
- description and source-code 
```javascript 
function createPool(config) {
  var Pool       = loadClass('Pool');
  var PoolConfig = loadClass('PoolConfig');

  return new Pool({config: new PoolConfig(config)});
} 
``` 
- example usage 
```shell 
...
'''

Unlike 'end()' the 'destroy()' method does not take a callback argument.

## Pooling connections

Rather than creating and managing connections one-by-one, this module also
provides built-in connection pooling using 'mysql.createPool(config)'.
[Read more about connection pooling](https://en.wikipedia.org/wiki/Connection_pool).

Use pool directly.
'''js
var mysql = require('mysql');
var pool  = mysql.createPool({
connectionLimit : 10,
... 
```    

#### <a name="apidoc.element.mysql.createPoolCluster"></a>[function <span class="apidocSignatureSpan">mysql.</span>createPoolCluster (config)](#apidoc.element.mysql.createPoolCluster) 
- description and source-code 
```javascript 
function createPoolCluster(config) {
  var PoolCluster = loadClass('PoolCluster');

  return new PoolCluster(config);
} 
``` 
- example usage 
```shell 
...

## PoolCluster

PoolCluster provides multiple hosts connection. (group & retry & selector)

'''js
// create
var poolCluster = mysql.createPoolCluster();

// add configurations (the config is a pool config object)
poolCluster.add(config); // add configuration with automatic name
poolCluster.add('MASTER', masterConfig); // add a named configuration
poolCluster.add('SLAVE1', slave1Config);
poolCluster.add('SLAVE2', slave2Config);
... 
```    

#### <a name="apidoc.element.mysql.createQuery"></a>[function <span class="apidocSignatureSpan">mysql.</span>createQuery (sql, values, callback)](#apidoc.element.mysql.createQuery) 
- description and source-code 
```javascript 
function createQuery(sql, values, callback) {
  var Connection = loadClass('Connection');

  return Connection.createQuery(sql, values, callback);
} 
``` 
- example usage 
```shell 
...
* @param {function} [callback] The callback to use when query is complete
* @return {Query} New query object
* @public
*/
exports.createQuery = function createQuery(sql, values, callback) {
 var Connection = loadClass('Connection');

 return Connection.createQuery(sql, values, callback);
};

/**
* Escape a value for SQL.
* @param {*} value The value to escape
* @param {boolean} [stringifyObjects=false] Setting if objects should be stringified
* @param {string} [timeZone=local] Setting for time zone to use for Date conversion
... 
```    

#### <a name="apidoc.element.mysql.escape"></a>[function <span class="apidocSignatureSpan">mysql.</span>escape (value, stringifyObjects, timeZone)](#apidoc.element.mysql.escape) 
- description and source-code 
```javascript 
function escape(value, stringifyObjects, timeZone) {
  var SqlString = loadClass('SqlString');

  return SqlString.escape(value, stringifyObjects, timeZone);
} 
``` 
- example usage 
```shell 
...
);
'''

## Escaping query values

In order to avoid SQL Injection attacks, you should always escape any user
provided data before using it inside a SQL query. You can do so using the
'mysql.escape()', 'connection.escape()' or 'pool.escape()' methods:

'''js
var userId = 'some user provided value';
var sql    = 'SELECT * FROM users WHERE id = ' + connection.escape(userId);
connection.query(sql, function (error, results, fields) {
if (error) throw error;
// ...
... 
```    

#### <a name="apidoc.element.mysql.escapeId"></a>[function <span class="apidocSignatureSpan">mysql.</span>escapeId (value, forbidQualified)](#apidoc.element.mysql.escapeId) 
- description and source-code 
```javascript 
function escapeId(value, forbidQualified) {
  var SqlString = loadClass('SqlString');

  return SqlString.escapeId(value, forbidQualified);
} 
``` 
- example usage 
```shell 
...

console.log(query); // SELECT * FROM posts WHERE title='Hello MySQL'
'''

## Escaping query identifiers

If you can't trust an SQL identifier (database / table / column name) because it is
provided by a user, you should escape it with 'mysql.escapeId(identifier)',
'connection.escapeId(identifier)' or 'pool.escapeId(identifier)' like this:

'''js
var sorter = 'date';
var sql    = 'SELECT * FROM posts ORDER BY ' + connection.escapeId(sorter);
connection.query(sql, function (error, results, fields) {
if (error) throw error;
... 
```    

#### <a name="apidoc.element.mysql.format"></a>[function <span class="apidocSignatureSpan">mysql.</span>format (sql, values, stringifyObjects, timeZone)](#apidoc.element.mysql.format) 
- description and source-code 
```javascript 
function format(sql, values, stringifyObjects, timeZone) {
  var SqlString = loadClass('SqlString');

  return SqlString.format(sql, values, stringifyObjects, timeZone);
} 
``` 
- example usage 
```shell 
...
### Preparing Queries

You can use mysql.format to prepare a query with multiple insertion points, utilizing the proper escaping for ids and values. A \
simple example of this follows:

'''js
var sql = "SELECT * FROM ?? WHERE ?? = ?";
var inserts = ['users', 'id', userId];
sql = mysql.format(sql, inserts);
'''

Following this you then have a valid, escaped query that you can then send to the database safely. This is useful if you are loo\
king to prepare the query before actually sending it to the database. As mysql.format is exposed from SqlString.format you also \
have the option (but are not required) to pass in stringifyObject and timezone, allowing you provide a custom means of turning o\
bjects into strings, as well as a location-specific/timezone-aware Date.

### Custom format

If you prefer to have another type of query escape format, there's a connection configuration option you can use to define a cus\
tom format function. You can access the connection object if you want to use the built-in '.escape()' or any other connection fu\
nction.
... 
```                  



# <a name="apidoc.module.mysql.Connection"></a>[module mysql.Connection](#apidoc.module.mysql.Connection)   

#### <a name="apidoc.element.mysql.Connection.Connection"></a>[function <span class="apidocSignatureSpan">mysql.</span>Connection (options)](#apidoc.element.mysql.Connection.Connection) 
- description and source-code 
```javascript 
function Connection(options) {
  Events.EventEmitter.call(this);

  this.config = options.config;

  this._socket        = options.socket;
  this._protocol      = new Protocol({config: this.config, connection: this});
  this._connectCalled = false;
  this.state          = 'disconnected';
  this.threadId       = null;
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.Connection.createQuery"></a>[function <span class="apidocSignatureSpan">mysql.Connection.</span>createQuery (sql, values, callback)](#apidoc.element.mysql.Connection.createQuery) 
- description and source-code 
```javascript 
function createQuery(sql, values, callback) {
  if (sql instanceof Query) {
    return sql;
  }

  var cb      = bindToCurrentDomain(callback);
  var options = {};

  if (typeof sql === 'function') {
    cb = bindToCurrentDomain(sql);
    return new Query(options, cb);
  }

  if (typeof sql === 'object') {
    for (var prop in sql) {
      options[prop] = sql[prop];
    }

    if (typeof values === 'function') {
      cb = bindToCurrentDomain(values);
    } else if (values !== undefined) {
      options.values = values;
    }

    return new Query(options, cb);
  }

  options.sql    = sql;
  options.values = values;

  if (typeof values === 'function') {
    cb = bindToCurrentDomain(values);
    options.values = undefined;
  }

  if (cb === undefined && callback !== undefined) {
    throw new TypeError('argument callback must be a function when provided');
  }

  return new Query(options, cb);
} 
``` 
- example usage 
```shell 
...
* @param {function} [callback] The callback to use when query is complete
* @return {Query} New query object
* @public
*/
exports.createQuery = function createQuery(sql, values, callback) {
 var Connection = loadClass('Connection');

 return Connection.createQuery(sql, values, callback);
};

/**
* Escape a value for SQL.
* @param {*} value The value to escape
* @param {boolean} [stringifyObjects=false] Setting if objects should be stringified
* @param {string} [timeZone=local] Setting for time zone to use for Date conversion
... 
```    

#### <a name="apidoc.element.mysql.Connection.super_"></a>[function <span class="apidocSignatureSpan">mysql.Connection.</span>super_ ()](#apidoc.element.mysql.Connection.super_) 
- description and source-code 
```javascript 
function EventEmitter() {
  EventEmitter.init.call(this);
} 
``` 
- example usage 
```shell 
n/a 
```    



# <a name="apidoc.module.mysql.Connection.prototype"></a>[module mysql.Connection.prototype](#apidoc.module.mysql.Connection.prototype)   

#### <a name="apidoc.element.mysql.Connection.prototype._handleConnectTimeout"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_handleConnectTimeout ()](#apidoc.element.mysql.Connection.prototype._handleConnectTimeout) 
- description and source-code 
```javascript 
_handleConnectTimeout = function () {
  if (this._socket) {
    this._socket.setTimeout(0);
    this._socket.destroy();
  }

  var err = new Error('connect ETIMEDOUT');
  err.errorno = 'ETIMEDOUT';
  err.code = 'ETIMEDOUT';
  err.syscall = 'connect';

  this._handleNetworkError(err);
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.Connection.prototype._handleNetworkError"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_handleNetworkError (err)](#apidoc.element.mysql.Connection.prototype._handleNetworkError) 
- description and source-code 
```javascript 
_handleNetworkError = function (err) {
  this._protocol.handleNetworkError(err);
} 
``` 
- example usage 
```shell 
...
  secureContext      : secureContext,
  isServer           : false
});

// error handler for secure socket
secureSocket.on('_tlsError', function(err) {
  if (secureEstablished) {
    connection._handleNetworkError(err);
  } else {
    onSecure(err);
  }
});

// cleartext <-> protocol
secureSocket.pipe(this._protocol);
... 
```    

#### <a name="apidoc.element.mysql.Connection.prototype._handleProtocolConnect"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_handleProtocolConnect ()](#apidoc.element.mysql.Connection.prototype._handleProtocolConnect) 
- description and source-code 
```javascript 
_handleProtocolConnect = function () {
  this.state = 'connected';
  this.emit('connect');
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.Connection.prototype._handleProtocolDrain"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_handleProtocolDrain ()](#apidoc.element.mysql.Connection.prototype._handleProtocolDrain) 
- description and source-code 
```javascript 
_handleProtocolDrain = function () {
  this.emit('drain');
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.Connection.prototype._handleProtocolEnd"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_handleProtocolEnd (err)](#apidoc.element.mysql.Connection.prototype._handleProtocolEnd) 
- description and source-code 
```javascript 
_handleProtocolEnd = function (err) {
  this.state = 'disconnected';
  this.emit('end', err);
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.Connection.prototype._handleProtocolEnqueue"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_handleProtocolEnqueue (sequence)](#apidoc.element.mysql.Connection.prototype._handleProtocolEnqueue) 
- description and source-code 
```javascript 
function _handleProtocolEnqueue(sequence) {
  this.emit('enqueue', sequence);
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.Connection.prototype._handleProtocolError"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_handleProtocolError (err)](#apidoc.element.mysql.Connection.prototype._handleProtocolError) 
- description and source-code 
```javascript 
_handleProtocolError = function (err) {
  this.state = 'protocol_error';
  this.emit('error', err);
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.Connection.prototype._handleProtocolHandshake"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_handleProtocolHandshake (packet)](#apidoc.element.mysql.Connection.prototype._handleProtocolHandshake) 
- description and source-code 
```javascript 
function _handleProtocolHandshake(packet) {
  this.state    = 'authenticated';
  this.threadId = packet.threadId;
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.Connection.prototype._implyConnect"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_implyConnect ()](#apidoc.element.mysql.Connection.prototype._implyConnect) 
- description and source-code 
```javascript 
_implyConnect = function () {
  if (!this._connectCalled) {
    this.connect();
  }
} 
``` 
- example usage 
```shell 
...

Connection.prototype.changeUser = function changeUser(options, callback) {
if (!callback && typeof options === 'function') {
  callback = options;
  options = {};
}

this._implyConnect();

var charsetNumber = (options.charset)
  ? ConnectionConfig.getCharsetNumber(options.charset)
  : this.config.charsetNumber;

return this._protocol.changeUser({
  user          : options.user || this.config.user,
... 
```    

#### <a name="apidoc.element.mysql.Connection.prototype._startTLS"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>_startTLS (onSecure)](#apidoc.element.mysql.Connection.prototype._startTLS) 
- description and source-code 
```javascript 
function _startTLS(onSecure) {
  var connection    = this;
  var secureContext = tls.createSecureContext({
    ca         : this.config.ssl.ca,
    cert       : this.config.ssl.cert,
    ciphers    : this.config.ssl.ciphers,
    key        : this.config.ssl.key,
    passphrase : this.config.ssl.passphrase
  });

  // "unpipe"
  this._socket.removeAllListeners('data');
  this._protocol.removeAllListeners('data');

  // socket <-> encrypted
  var rejectUnauthorized = this.config.ssl.rejectUnauthorized;
  var secureEstablished  = false;
  var secureSocket       = new tls.TLSSocket(this._socket, {
    rejectUnauthorized : rejectUnauthorized,
    requestCert        : true,
    secureContext      : secureContext,
    isServer           : false
  });

  // error handler for secure socket
  secureSocket.on('_tlsError', function(err) {
    if (secureEstablished) {
      connection._handleNetworkError(err);
    } else {
      onSecure(err);
    }
  });

  // cleartext <-> protocol
  secureSocket.pipe(this._protocol);
  this._protocol.on('data', function(data) {
    secureSocket.write(data);
  });

  secureSocket.on('secure', function() {
    secureEstablished = true;

    onSecure(rejectUnauthorized ? this.ssl.verifyError() : null);
  });

  // start TLS communications
  secureSocket._start();
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.Connection.prototype.beginTransaction"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>beginTransaction (options, callback)](#apidoc.element.mysql.Connection.prototype.beginTransaction) 
- description and source-code 
```javascript 
function beginTransaction(options, callback) {
  if (!callback && typeof options === 'function') {
    callback = options;
    options = {};
  }

  options = options || {};
  options.sql = 'START TRANSACTION';
  options.values = null;

  return this.query(options, callback);
} 
``` 
- example usage 
```shell 
...
'''

## Transactions

Simple transaction support is available at the connection level:

'''js
connection.beginTransaction(function(err) {
if (err) { throw err; }
connection.query('INSERT INTO posts SET title=?', title, function (error, results, fields) {
  if (error) {
    return connection.rollback(function() {
      throw error;
    });
  }
... 
```    

#### <a name="apidoc.element.mysql.Connection.prototype.changeUser"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>changeUser (options, callback)](#apidoc.element.mysql.Connection.prototype.changeUser) 
- description and source-code 
```javascript 
function changeUser(options, callback) {
  if (!callback && typeof options === 'function') {
    callback = options;
    options = {};
  }

  this._implyConnect();

  var charsetNumber = (options.charset)
    ? ConnectionConfig.getCharsetNumber(options.charset)
    : this.config.charsetNumber;

  return this._protocol.changeUser({
    user          : options.user || this.config.user,
    password      : options.password || this.config.password,
    database      : options.database || this.config.database,
    timeout       : options.timeout,
    charsetNumber : charsetNumber,
    currentConfig : this.config
  }, bindToCurrentDomain(callback));
} 
``` 
- example usage 
```shell 
...

## Switching users and altering connection state

MySQL offers a changeUser command that allows you to alter the current user and
other aspects of the connection without shutting down the underlying socket:

'''js
connection.changeUser({user : 'john'}, function(err) {
  if (err) throw err;
});
'''

The available options for this feature are:

* 'user': The name of the new user (defaults to the previous one).
... 
```    

#### <a name="apidoc.element.mysql.Connection.prototype.commit"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>commit (options, callback)](#apidoc.element.mysql.Connection.prototype.commit) 
- description and source-code 
```javascript 
function commit(options, callback) {
  if (!callback && typeof options === 'function') {
    callback = options;
    options = {};
  }

  options = options || {};
  options.sql = 'COMMIT';
  options.values = null;

  return this.query(options, callback);
} 
``` 
- example usage 
```shell 
...

    connection.query('INSERT INTO log SET data=?', log, function (error, results, fields) {
if (error) {
  return connection.rollback(function() {
    throw error;
  });
}
connection.commit(function(err) {
  if (err) {
    return connection.rollback(function() {
      throw err;
    });
  }
  console.log('success!');
});
... 
```    

#### <a name="apidoc.element.mysql.Connection.prototype.connect"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>connect (options, callback)](#apidoc.element.mysql.Connection.prototype.connect) 
- description and source-code 
```javascript 
function connect(options, callback) {
  if (!callback && typeof options === 'function') {
    callback = options;
    options = {};
  }

  if (!this._connectCalled) {
    this._connectCalled = true;

    // Connect either via a UNIX domain socket or a TCP socket.
    this._socket = (this.config.socketPath)
      ? Net.createConnection(this.config.socketPath)
      : Net.createConnection(this.config.port, this.config.host);

    // Connect socket to connection domain
    if (Events.usingDomains) {
      this._socket.domain = this.domain;
    }

    var connection = this;
    this._protocol.on('data', function(data) {
      connection._socket.write(data);
    });
    this._socket.on('data', function(data) {
      connection._protocol.write(data);
    });
    this._protocol.on('end', function() {
      connection._socket.end();
    });
    this._socket.on('end', function() {
      connection._protocol.end();
    });

    this._socket.on('error', this._handleNetworkError.bind(this));
    this._socket.on('connect', this._handleProtocolConnect.bind(this));
    this._protocol.on('handshake', this._handleProtocolHandshake.bind(this));
    this._protocol.on('unhandledError', this._handleProtocolError.bind(this));
    this._protocol.on('drain', this._handleProtocolDrain.bind(this));
    this._protocol.on('end', this._handleProtocolEnd.bind(this));
    this._protocol.on('enqueue', this._handleProtocolEnqueue.bind(this));

    if (this.config.connectTimeout) {
      var handleConnectTimeout = this._handleConnectTimeout.bind(this);

      this._socket.setTimeout(this.config.connectTimeout, handleConnectTimeout);
      this._socket.once('connect', function() {
        this.setTimeout(0, handleConnectTimeout);
      });
    }
  }

  this._protocol.handshake(options, bindToCurrentDomain(callback));
} 
``` 
- example usage 
```shell 
...
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'me',
  password : 'secret',
  database : 'my_db'
});

connection.connect();

connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
  if (error) throw error;
  console.log('The solution is: ', results[0].solution);
});

connection.end();
... 
```    

#### <a name="apidoc.element.mysql.Connection.prototype.destroy"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>destroy ()](#apidoc.element.mysql.Connection.prototype.destroy) 
- description and source-code 
```javascript 
destroy = function () {
  this.state = 'disconnected';
  this._implyConnect();
  this._socket.destroy();
  this._protocol.destroy();
} 
``` 
- example usage 
```shell 
...

An alternative way to end the connection is to call the 'destroy()' method.
This will cause an immediate termination of the underlying socket.
Additionally 'destroy()' guarantees that no more events or callbacks will be
triggered for the connection.

'''js
connection.destroy();
'''

Unlike 'end()' the 'destroy()' method does not take a callback argument.

## Pooling connections

Rather than creating and managing connections one-by-one, this module also
... 
```    

#### <a name="apidoc.element.mysql.Connection.prototype.end"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>end (options, callback)](#apidoc.element.mysql.Connection.prototype.end) 
- description and source-code 
```javascript 
function end(options, callback) {
  var cb   = callback;
  var opts = options;

  if (!callback && typeof options === 'function') {
    cb   = options;
    opts = null;
  }

  // create custom options reference
  opts = Object.create(opts || null);

  if (opts.timeout === undefined) {
    // default timeout of 30 seconds
    opts.timeout = 30000;
  }

  this._implyConnect();
  this._protocol.quit(opts, bindToCurrentDomain(cb));
} 
``` 
- example usage 
```shell 
...
connection.connect();

connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
if (error) throw error;
console.log('The solution is: ', results[0].solution);
});

connection.end();
'''

From this example, you can learn the following:

* Every method you invoke on a connection is queued and executed in sequence.
* Closing the connection is done using 'end()' which makes sure all remaining
queries are executed before sending a quit packet to the mysql server.
... 
```    

#### <a name="apidoc.element.mysql.Connection.prototype.escape"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>escape (value)](#apidoc.element.mysql.Connection.prototype.escape) 
- description and source-code 
```javascript 
escape = function (value) {
  return SqlString.escape(value, false, this.config.timezone);
} 
``` 
- example usage 
```shell 
...
);
'''

## Escaping query values

In order to avoid SQL Injection attacks, you should always escape any user
provided data before using it inside a SQL query. You can do so using the
'mysql.escape()', 'connection.escape()' or 'pool.escape()' methods:

'''js
var userId = 'some user provided value';
var sql    = 'SELECT * FROM users WHERE id = ' + connection.escape(userId);
connection.query(sql, function (error, results, fields) {
if (error) throw error;
// ...
... 
```    

#### <a name="apidoc.element.mysql.Connection.prototype.escapeId"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>escapeId (value)](#apidoc.element.mysql.Connection.prototype.escapeId) 
- description and source-code 
```javascript 
function escapeId(value) {
  return SqlString.escapeId(value, false);
} 
``` 
- example usage 
```shell 
...

console.log(query); // SELECT * FROM posts WHERE title='Hello MySQL'
'''

## Escaping query identifiers

If you can't trust an SQL identifier (database / table / column name) because it is
provided by a user, you should escape it with 'mysql.escapeId(identifier)',
'connection.escapeId(identifier)' or 'pool.escapeId(identifier)' like this:

'''js
var sorter = 'date';
var sql    = 'SELECT * FROM posts ORDER BY ' + connection.escapeId(sorter);
connection.query(sql, function (error, results, fields) {
if (error) throw error;
... 
```    

#### <a name="apidoc.element.mysql.Connection.prototype.format"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>format (sql, values)](#apidoc.element.mysql.Connection.prototype.format) 
- description and source-code 
```javascript 
format = function (sql, values) {
  if (typeof this.config.queryFormat === 'function') {
    return this.config.queryFormat.call(this, sql, values, this.config.timezone);
  }
  return SqlString.format(sql, values, this.config.stringifyObjects, this.config.timezone);
} 
``` 
- example usage 
```shell 
...
### Preparing Queries

You can use mysql.format to prepare a query with multiple insertion points, utilizing the proper escaping for ids and values. A \
simple example of this follows:

'''js
var sql = "SELECT * FROM ?? WHERE ?? = ?";
var inserts = ['users', 'id', userId];
sql = mysql.format(sql, inserts);
'''

Following this you then have a valid, escaped query that you can then send to the database safely. This is useful if you are loo\
king to prepare the query before actually sending it to the database. As mysql.format is exposed from SqlString.format you also \
have the option (but are not required) to pass in stringifyObject and timezone, allowing you provide a custom means of turning o\
bjects into strings, as well as a location-specific/timezone-aware Date.

### Custom format

If you prefer to have another type of query escape format, there's a connection configuration option you can use to define a cus\
tom format function. You can access the connection object if you want to use the built-in '.escape()' or any other connection fu\
nction.
... 
```    

#### <a name="apidoc.element.mysql.Connection.prototype.pause"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>pause ()](#apidoc.element.mysql.Connection.prototype.pause) 
- description and source-code 
```javascript 
pause = function () {
  this._socket.pause();
  this._protocol.pause();
} 
``` 
- example usage 
```shell 
...
  // Handle error, an 'end' event will be emitted after this as well
})
.on('fields', function(fields) {
  // the field packets for the rows to follow
})
.on('result', function(row) {
  // Pausing the connnection is useful if your processing involves I/O
  connection.pause();

  processRow(row, function() {
    connection.resume();
  });
})
.on('end', function() {
  // all rows have been received
... 
```    

#### <a name="apidoc.element.mysql.Connection.prototype.ping"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>ping (options, callback)](#apidoc.element.mysql.Connection.prototype.ping) 
- description and source-code 
```javascript 
function ping(options, callback) {
  if (!callback && typeof options === 'function') {
    callback = options;
    options = {};
  }

  this._implyConnect();
  this._protocol.ping(options, bindToCurrentDomain(callback));
} 
``` 
- example usage 
```shell 
...
## Ping

A ping packet can be sent over a connection using the 'connection.ping' method. This
method will send a ping packet to the server and when the server responds, the callback
will fire. If an error occurred, the callback will fire with an error argument.

'''js
connection.ping(function (err) {
  if (err) throw err;
  console.log('Server responded to ping');
})
'''

## Timeouts
... 
```    

#### <a name="apidoc.element.mysql.Connection.prototype.query"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>query (sql, values, cb)](#apidoc.element.mysql.Connection.prototype.query) 
- description and source-code 
```javascript 
function query(sql, values, cb) {
  var query = Connection.createQuery(sql, values, cb);
  query._connection = this;

  if (!(typeof sql === 'object' && 'typeCast' in sql)) {
    query.typeCast = this.config.typeCast;
  }

  if (query.sql) {
    query.sql = this.format(query.sql, query.values);
  }

  this._implyConnect();

  return this._protocol._enqueue(query);
} 
``` 
- example usage 
```shell 
...
  user     : 'me',
  password : 'secret',
  database : 'my_db'
});

connection.connect();

connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
  if (error) throw error;
  console.log('The solution is: ', results[0].solution);
});

connection.end();
'''
... 
```    

#### <a name="apidoc.element.mysql.Connection.prototype.resume"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>resume ()](#apidoc.element.mysql.Connection.prototype.resume) 
- description and source-code 
```javascript 
resume = function () {
  this._socket.resume();
  this._protocol.resume();
} 
``` 
- example usage 
```shell 
...
    // the field packets for the rows to follow
  })
  .on('result', function(row) {
    // Pausing the connnection is useful if your processing involves I/O
    connection.pause();

    processRow(row, function() {
      connection.resume();
    });
  })
  .on('end', function() {
    // all rows have been received
  });
'''
... 
```    

#### <a name="apidoc.element.mysql.Connection.prototype.rollback"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>rollback (options, callback)](#apidoc.element.mysql.Connection.prototype.rollback) 
- description and source-code 
```javascript 
function rollback(options, callback) {
  if (!callback && typeof options === 'function') {
    callback = options;
    options = {};
  }

  options = options || {};
  options.sql = 'ROLLBACK';
  options.values = null;

  return this.query(options, callback);
} 
``` 
- example usage 
```shell 
...
Simple transaction support is available at the connection level:

'''js
connection.beginTransaction(function(err) {
  if (err) { throw err; }
  connection.query('INSERT INTO posts SET title=?', title, function (error, results, fields) {
if (error) {
  return connection.rollback(function() {
    throw error;
  });
}

var log = 'Post ' + result.insertId + ' added';

connection.query('INSERT INTO log SET data=?', log, function (error, results, fields) {
... 
```    

#### <a name="apidoc.element.mysql.Connection.prototype.statistics"></a>[function <span class="apidocSignatureSpan">mysql.Connection.prototype.</span>statistics (options, callback)](#apidoc.element.mysql.Connection.prototype.statistics) 
- description and source-code 
```javascript 
function statistics(options, callback) {
  if (!callback && typeof options === 'function') {
    callback = options;
    options = {};
  }

  this._implyConnect();
  this._protocol.stats(options, bindToCurrentDomain(callback));
} 
``` 
- example usage 
```shell 
n/a 
```    



# <a name="apidoc.module.mysql.ConnectionConfig"></a>[module mysql.ConnectionConfig](#apidoc.module.mysql.ConnectionConfig)   

#### <a name="apidoc.element.mysql.ConnectionConfig.ConnectionConfig"></a>[function <span class="apidocSignatureSpan">mysql.</span>ConnectionConfig (options)](#apidoc.element.mysql.ConnectionConfig.ConnectionConfig) 
- description and source-code 
```javascript 
function ConnectionConfig(options) {
  if (typeof options === 'string') {
    options = ConnectionConfig.parseUrl(options);
  }

  this.host               = options.host || 'localhost';
  this.port               = options.port || 3306;
  this.localAddress       = options.localAddress;
  this.socketPath         = options.socketPath;
  this.user               = options.user || undefined;
  this.password           = options.password || undefined;
  this.database           = options.database;
  this.connectTimeout     = (options.connectTimeout === undefined)
    ? (10 * 1000)
    : options.connectTimeout;
  this.insecureAuth       = options.insecureAuth || false;
  this.supportBigNumbers  = options.supportBigNumbers || false;
  this.bigNumberStrings   = options.bigNumberStrings || false;
  this.dateStrings        = options.dateStrings || false;
  this.debug              = options.debug;
  this.trace              = options.trace !== false;
  this.stringifyObjects   = options.stringifyObjects || false;
  this.timezone           = options.timezone || 'local';
  this.flags              = options.flags || '';
  this.queryFormat        = options.queryFormat;
  this.pool               = options.pool || undefined;
  this.ssl                = (typeof options.ssl === 'string')
    ? ConnectionConfig.getSSLProfile(options.ssl)
    : (options.ssl || false);
  this.multipleStatements = options.multipleStatements || false;
  this.typeCast           = (options.typeCast === undefined)
    ? true
    : options.typeCast;

  if (this.timezone[0] === ' ') {
    // "+" is a url encoded char for space so it
    // gets translated to space when giving a
    // connection string..
    this.timezone = '+' + this.timezone.substr(1);
  }

  if (this.ssl) {
    // Default rejectUnauthorized to true
    this.ssl.rejectUnauthorized = this.ssl.rejectUnauthorized !== false;
  }

  this.maxPacketSize = 0;
  this.charsetNumber = (options.charset)
    ? ConnectionConfig.getCharsetNumber(options.charset)
    : options.charsetNumber || Charsets.UTF8_GENERAL_CI;

  // Set the client flags
  var defaultFlags = ConnectionConfig.getDefaultFlags(options);
  this.clientFlags = ConnectionConfig.mergeFlags(defaultFlags, options.flags);
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.ConnectionConfig.getCharsetNumber"></a>[function <span class="apidocSignatureSpan">mysql.ConnectionConfig.</span>getCharsetNumber (charset)](#apidoc.element.mysql.ConnectionConfig.getCharsetNumber) 
- description and source-code 
```javascript 
function getCharsetNumber(charset) {
  var num = Charsets[charset.toUpperCase()];

  if (num === undefined) {
    throw new TypeError('Unknown charset \'' + charset + '\'');
  }

  return num;
} 
``` 
- example usage 
```shell 
...
  callback = options;
  options = {};
}

this._implyConnect();

var charsetNumber = (options.charset)
  ? ConnectionConfig.getCharsetNumber(options.charset)
  : this.config.charsetNumber;

return this._protocol.changeUser({
  user          : options.user || this.config.user,
  password      : options.password || this.config.password,
  database      : options.database || this.config.database,
  timeout       : options.timeout,
... 
```    

#### <a name="apidoc.element.mysql.ConnectionConfig.getDefaultFlags"></a>[function <span class="apidocSignatureSpan">mysql.ConnectionConfig.</span>getDefaultFlags (options)](#apidoc.element.mysql.ConnectionConfig.getDefaultFlags) 
- description and source-code 
```javascript 
function getDefaultFlags(options) {
  var defaultFlags = [
    '-COMPRESS',          // Compression protocol *NOT* supported
    '-CONNECT_ATTRS',     // Does *NOT* send connection attributes in Protocol::HandshakeResponse41
    '+CONNECT_WITH_DB',   // One can specify db on connect in Handshake Response Packet
    '+FOUND_ROWS',        // Send found rows instead of affected rows
    '+IGNORE_SIGPIPE',    // Don't issue SIGPIPE if network failures
    '+IGNORE_SPACE',      // Let the parser ignore spaces before '('
    '+LOCAL_FILES',       // Can use LOAD DATA LOCAL
    '+LONG_FLAG',         // Longer flags in Protocol::ColumnDefinition320
    '+LONG_PASSWORD',     // Use the improved version of Old Password Authentication
    '+MULTI_RESULTS',     // Can handle multiple resultsets for COM_QUERY
    '+ODBC',              // Special handling of ODBC behaviour
    '-PLUGIN_AUTH',       // Does *NOT* support auth plugins
    '+PROTOCOL_41',       // Uses the 4.1 protocol
    '+PS_MULTI_RESULTS',  // Can handle multiple resultsets for COM_STMT_EXECUTE
    '+RESERVED',          // Unused
    '+SECURE_CONNECTION', // Supports Authentication::Native41
    '+TRANSACTIONS'       // Expects status flags
  ];

  if (options && options.multipleStatements) {
    // May send multiple statements per COM_QUERY and COM_STMT_PREPARE
    defaultFlags.push('+MULTI_STATEMENTS');
  }

  return defaultFlags;
} 
``` 
- example usage 
```shell 
...

this.maxPacketSize = 0;
this.charsetNumber = (options.charset)
  ? ConnectionConfig.getCharsetNumber(options.charset)
  : options.charsetNumber || Charsets.UTF8_GENERAL_CI;

// Set the client flags
var defaultFlags = ConnectionConfig.getDefaultFlags(options);
this.clientFlags = ConnectionConfig.mergeFlags(defaultFlags, options.flags);
}

ConnectionConfig.mergeFlags = function mergeFlags(defaultFlags, userFlags) {
var allFlags = ConnectionConfig.parseFlagList(defaultFlags);
var newFlags = ConnectionConfig.parseFlagList(userFlags);
... 
```    

#### <a name="apidoc.element.mysql.ConnectionConfig.getSSLProfile"></a>[function <span class="apidocSignatureSpan">mysql.ConnectionConfig.</span>getSSLProfile (name)](#apidoc.element.mysql.ConnectionConfig.getSSLProfile) 
- description and source-code 
```javascript 
function getSSLProfile(name) {
  if (!SSLProfiles) {
    SSLProfiles = require('./protocol/constants/ssl_profiles');
  }

  var ssl = SSLProfiles[name];

  if (ssl === undefined) {
    throw new TypeError('Unknown SSL profile \'' + name + '\'');
  }

  return ssl;
} 
``` 
- example usage 
```shell 
...
this.trace              = options.trace !== false;
this.stringifyObjects   = options.stringifyObjects || false;
this.timezone           = options.timezone || 'local';
this.flags              = options.flags || '';
this.queryFormat        = options.queryFormat;
this.pool               = options.pool || undefined;
this.ssl                = (typeof options.ssl === 'string')
  ? ConnectionConfig.getSSLProfile(options.ssl)
  : (options.ssl || false);
this.multipleStatements = options.multipleStatements || false;
this.typeCast           = (options.typeCast === undefined)
  ? true
  : options.typeCast;

if (this.timezone[0] === ' ') {
... 
```    

#### <a name="apidoc.element.mysql.ConnectionConfig.mergeFlags"></a>[function <span class="apidocSignatureSpan">mysql.ConnectionConfig.</span>mergeFlags (defaultFlags, userFlags)](#apidoc.element.mysql.ConnectionConfig.mergeFlags) 
- description and source-code 
```javascript 
function mergeFlags(defaultFlags, userFlags) {
  var allFlags = ConnectionConfig.parseFlagList(defaultFlags);
  var newFlags = ConnectionConfig.parseFlagList(userFlags);

  // Merge the new flags
  for (var flag in newFlags) {
    if (allFlags[flag] !== false) {
      allFlags[flag] = newFlags[flag];
    }
  }

  // Build flags
  var flags = 0x0;
  for (var flag in allFlags) {
    if (allFlags[flag]) {
      // TODO: Throw here on some future release
      flags |= ClientConstants['CLIENT_' + flag] || 0x0;
    }
  }

  return flags;
} 
``` 
- example usage 
```shell 
...
this.maxPacketSize = 0;
this.charsetNumber = (options.charset)
  ? ConnectionConfig.getCharsetNumber(options.charset)
  : options.charsetNumber || Charsets.UTF8_GENERAL_CI;

// Set the client flags
var defaultFlags = ConnectionConfig.getDefaultFlags(options);
this.clientFlags = ConnectionConfig.mergeFlags(defaultFlags, options.flags);
}

ConnectionConfig.mergeFlags = function mergeFlags(defaultFlags, userFlags) {
var allFlags = ConnectionConfig.parseFlagList(defaultFlags);
var newFlags = ConnectionConfig.parseFlagList(userFlags);

// Merge the new flags
... 
```    

#### <a name="apidoc.element.mysql.ConnectionConfig.parseFlagList"></a>[function <span class="apidocSignatureSpan">mysql.ConnectionConfig.</span>parseFlagList (flagList)](#apidoc.element.mysql.ConnectionConfig.parseFlagList) 
- description and source-code 
```javascript 
function parseFlagList(flagList) {
  var allFlags = Object.create(null);

  if (!flagList) {
    return allFlags;
  }

  var flags = !Array.isArray(flagList)
    ? String(flagList || '').toUpperCase().split(/\s*,+\s*/)
    : flagList;

  for (var i = 0; i < flags.length; i++) {
    var flag   = flags[i];
    var offset = 1;
    var state  = flag[0];

    if (state === undefined) {
      // TODO: throw here on some future release
      continue;
    }

    if (state !== '-' && state !== '+') {
      offset = 0;
      state  = '+';
    }

    allFlags[flag.substr(offset)] = state === '+';
  }

  return allFlags;
} 
``` 
- example usage 
```shell 
...

// Set the client flags
var defaultFlags = ConnectionConfig.getDefaultFlags(options);
this.clientFlags = ConnectionConfig.mergeFlags(defaultFlags, options.flags);
}

ConnectionConfig.mergeFlags = function mergeFlags(defaultFlags, userFlags) {
var allFlags = ConnectionConfig.parseFlagList(defaultFlags);
var newFlags = ConnectionConfig.parseFlagList(userFlags);

// Merge the new flags
for (var flag in newFlags) {
  if (allFlags[flag] !== false) {
    allFlags[flag] = newFlags[flag];
  }
... 
```    

#### <a name="apidoc.element.mysql.ConnectionConfig.parseUrl"></a>[function <span class="apidocSignatureSpan">mysql.ConnectionConfig.</span>parseUrl (url)](#apidoc.element.mysql.ConnectionConfig.parseUrl) 
- description and source-code 
```javascript 
parseUrl = function (url) {
  url = urlParse(url, true);

  var options = {
    host     : url.hostname,
    port     : url.port,
    database : url.pathname.substr(1)
  };

  if (url.auth) {
    var auth = url.auth.split(':');
    options.user     = auth.shift();
    options.password = auth.join(':');
  }

  if (url.query) {
    for (var key in url.query) {
      var value = url.query[key];

      try {
        // Try to parse this as a JSON expression first
        options[key] = JSON.parse(value);
      } catch (err) {
        // Otherwise assume it is a plain string
        options[key] = value;
      }
    }
  }

  return options;
} 
``` 
- example usage 
```shell 
...
var ClientConstants = require('./protocol/constants/client');
var Charsets        = require('./protocol/constants/charsets');
var SSLProfiles     = null;

module.exports = ConnectionConfig;
function ConnectionConfig(options) {
if (typeof options === 'string') {
  options = ConnectionConfig.parseUrl(options);
}

this.host               = options.host || 'localhost';
this.port               = options.port || 3306;
this.localAddress       = options.localAddress;
this.socketPath         = options.socketPath;
this.user               = options.user || undefined;
... 
```    



# <a name="apidoc.module.mysql.Pool"></a>[module mysql.Pool](#apidoc.module.mysql.Pool)   

#### <a name="apidoc.element.mysql.Pool.Pool"></a>[function <span class="apidocSignatureSpan">mysql.</span>Pool (options)](#apidoc.element.mysql.Pool.Pool) 
- description and source-code 
```javascript 
function Pool(options) {
  EventEmitter.call(this);
  this.config = options.config;
  this.config.connectionConfig.pool = this;

  this._acquiringConnections = [];
  this._allConnections       = [];
  this._freeConnections      = [];
  this._connectionQueue      = [];
  this._closed               = false;
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.Pool.super_"></a>[function <span class="apidocSignatureSpan">mysql.Pool.</span>super_ ()](#apidoc.element.mysql.Pool.super_) 
- description and source-code 
```javascript 
function EventEmitter() {
  EventEmitter.init.call(this);
} 
``` 
- example usage 
```shell 
n/a 
```    



# <a name="apidoc.module.mysql.Pool.prototype"></a>[module mysql.Pool.prototype](#apidoc.module.mysql.Pool.prototype)   

#### <a name="apidoc.element.mysql.Pool.prototype._enqueueCallback"></a>[function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>_enqueueCallback (callback)](#apidoc.element.mysql.Pool.prototype._enqueueCallback) 
- description and source-code 
```javascript 
function _enqueueCallback(callback) {

  if (this.config.queueLimit && this._connectionQueue.length >= this.config.queueLimit) {
    process.nextTick(function () {
      var err = new Error('Queue limit reached.');
      err.code = 'POOL_ENQUEUELIMIT';
      callback(err);
    });
    return;
  }

  // Bind to domain, as dequeue will likely occur in a different domain
  var cb = process.domain
    ? process.domain.bind(callback)
    : callback;

  this._connectionQueue.push(cb);
  this.emit('enqueue');
} 
``` 
- example usage 
```shell 
...
    var err = new Error('No connections available.');
    err.code = 'POOL_CONNLIMIT';
    cb(err);
  });
  return;
}

this._enqueueCallback(cb);
};

Pool.prototype.acquireConnection = function acquireConnection(connection, cb) {
if (connection._pool !== this) {
  throw new Error('Connection acquired from wrong pool.');
}
... 
```    

#### <a name="apidoc.element.mysql.Pool.prototype._needsChangeUser"></a>[function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>_needsChangeUser (connection)](#apidoc.element.mysql.Pool.prototype._needsChangeUser) 
- description and source-code 
```javascript 
function _needsChangeUser(connection) {
  var connConfig = connection.config;
  var poolConfig = this.config.connectionConfig;

  // check if changeUser values are different
  return connConfig.user !== poolConfig.user
    || connConfig.database !== poolConfig.database
    || connConfig.password !== poolConfig.password
    || connConfig.charsetNumber !== poolConfig.charsetNumber;
} 
``` 
- example usage 
```shell 
...
};

Pool.prototype.acquireConnection = function acquireConnection(connection, cb) {
if (connection._pool !== this) {
  throw new Error('Connection acquired from wrong pool.');
}

var changeUser = this._needsChangeUser(connection);
var pool       = this;

this._acquiringConnections.push(connection);

function onOperationComplete(err) {
  spliceConnection(pool._acquiringConnections, connection);
... 
```    

#### <a name="apidoc.element.mysql.Pool.prototype._purgeConnection"></a>[function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>_purgeConnection (connection, callback)](#apidoc.element.mysql.Pool.prototype._purgeConnection) 
- description and source-code 
```javascript 
function _purgeConnection(connection, callback) {
  var cb = callback || function () {};

  if (connection.state === 'disconnected') {
    connection.destroy();
  }

  this._removeConnection(connection);

  if (connection.state !== 'disconnected' && !connection._protocol._quitSequence) {
    connection._realEnd(cb);
    return;
  }

  process.nextTick(cb);
} 
``` 
- example usage 
```shell 
...

if (pool._closed) {
  err = new Error('Pool is closed.');
  err.code = 'POOL_CLOSED';
}

if (err) {
  pool._purgeConnection(connection);
  cb(err);
  return;
}

pool.emit('connection', connection);
pool.emit('acquire', connection);
cb(null, connection);
... 
```    

#### <a name="apidoc.element.mysql.Pool.prototype._removeConnection"></a>[function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>_removeConnection (connection)](#apidoc.element.mysql.Pool.prototype._removeConnection) 
- description and source-code 
```javascript 
_removeConnection = function (connection) {
  connection._pool = null;

  // Remove connection from all connections
  spliceConnection(this._allConnections, connection);

  // Remove connection from free connections
  spliceConnection(this._freeConnections, connection);

  this.releaseConnection(connection);
} 
``` 
- example usage 
```shell 
...
Pool.prototype._purgeConnection = function _purgeConnection(connection, callback) {
var cb = callback || function () {};

if (connection.state === 'disconnected') {
  connection.destroy();
}

this._removeConnection(connection);

if (connection.state !== 'disconnected' && !connection._protocol._quitSequence) {
  connection._realEnd(cb);
  return;
}

process.nextTick(cb);
... 
```    

#### <a name="apidoc.element.mysql.Pool.prototype.acquireConnection"></a>[function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>acquireConnection (connection, cb)](#apidoc.element.mysql.Pool.prototype.acquireConnection) 
- description and source-code 
```javascript 
function acquireConnection(connection, cb) {
  if (connection._pool !== this) {
    throw new Error('Connection acquired from wrong pool.');
  }

  var changeUser = this._needsChangeUser(connection);
  var pool       = this;

  this._acquiringConnections.push(connection);

  function onOperationComplete(err) {
    spliceConnection(pool._acquiringConnections, connection);

    if (pool._closed) {
      err = new Error('Pool is closed.');
      err.code = 'POOL_CLOSED';
    }

    if (err) {
      pool._connectionQueue.unshift(cb);
      pool._purgeConnection(connection);
      return;
    }

    if (changeUser) {
      pool.emit('connection', connection);
    }

    pool.emit('acquire', connection);
    cb(null, connection);
  }

  if (changeUser) {
    // restore user back to pool configuration
    connection.config = this.config.newConnectionConfig();
    connection.changeUser({timeout: this.config.acquireTimeout}, onOperationComplete);
  } else {
    // ping connection
    connection.ping({timeout: this.config.acquireTimeout}, onOperationComplete);
  }
} 
``` 
- example usage 
```shell 
...
  }

  var connection;
  var pool = this;

  if (this._freeConnections.length > 0) {
connection = this._freeConnections.shift();
this.acquireConnection(connection, cb);
return;
  }

  if (this.config.connectionLimit === 0 || this._allConnections.length < this.config.connectionLimit) {
connection = new PoolConnection(this, { config: this.config.newConnectionConfig() });

this._acquiringConnections.push(connection);
... 
```    

#### <a name="apidoc.element.mysql.Pool.prototype.end"></a>[function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>end (cb)](#apidoc.element.mysql.Pool.prototype.end) 
- description and source-code 
```javascript 
end = function (cb) {
  this._closed = true;

  if (typeof cb !== 'function') {
    cb = function (err) {
      if (err) throw err;
    };
  }

  var calledBack   = false;
  var waitingClose = 0;

  function onEnd(err) {
    if (!calledBack && (err || --waitingClose <= 0)) {
      calledBack = true;
      cb(err);
    }
  }

  while (this._allConnections.length !== 0) {
    waitingClose++;
    this._purgeConnection(this._allConnections[0], onEnd);
  }

  if (waitingClose === 0) {
    process.nextTick(onEnd);
  }
} 
``` 
- example usage 
```shell 
...
connection.connect();

connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
if (error) throw error;
console.log('The solution is: ', results[0].solution);
});

connection.end();
'''

From this example, you can learn the following:

* Every method you invoke on a connection is queued and executed in sequence.
* Closing the connection is done using 'end()' which makes sure all remaining
queries are executed before sending a quit packet to the mysql server.
... 
```    

#### <a name="apidoc.element.mysql.Pool.prototype.escape"></a>[function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>escape (value)](#apidoc.element.mysql.Pool.prototype.escape) 
- description and source-code 
```javascript 
escape = function (value) {
  return mysql.escape(value, this.config.connectionConfig.stringifyObjects, this.config.connectionConfig.timezone);
} 
``` 
- example usage 
```shell 
...
);
'''

## Escaping query values

In order to avoid SQL Injection attacks, you should always escape any user
provided data before using it inside a SQL query. You can do so using the
'mysql.escape()', 'connection.escape()' or 'pool.escape()' methods:

'''js
var userId = 'some user provided value';
var sql    = 'SELECT * FROM users WHERE id = ' + connection.escape(userId);
connection.query(sql, function (error, results, fields) {
if (error) throw error;
// ...
... 
```    

#### <a name="apidoc.element.mysql.Pool.prototype.escapeId"></a>[function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>escapeId (value)](#apidoc.element.mysql.Pool.prototype.escapeId) 
- description and source-code 
```javascript 
function escapeId(value) {
  return mysql.escapeId(value, false);
} 
``` 
- example usage 
```shell 
...

console.log(query); // SELECT * FROM posts WHERE title='Hello MySQL'
'''

## Escaping query identifiers

If you can't trust an SQL identifier (database / table / column name) because it is
provided by a user, you should escape it with 'mysql.escapeId(identifier)',
'connection.escapeId(identifier)' or 'pool.escapeId(identifier)' like this:

'''js
var sorter = 'date';
var sql    = 'SELECT * FROM posts ORDER BY ' + connection.escapeId(sorter);
connection.query(sql, function (error, results, fields) {
if (error) throw error;
... 
```    

#### <a name="apidoc.element.mysql.Pool.prototype.getConnection"></a>[function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>getConnection (cb)](#apidoc.element.mysql.Pool.prototype.getConnection) 
- description and source-code 
```javascript 
getConnection = function (cb) {

  if (this._closed) {
    var err = new Error('Pool is closed.');
    err.code = 'POOL_CLOSED';
    process.nextTick(function () {
      cb(err);
    });
    return;
  }

  var connection;
  var pool = this;

  if (this._freeConnections.length > 0) {
    connection = this._freeConnections.shift();
    this.acquireConnection(connection, cb);
    return;
  }

  if (this.config.connectionLimit === 0 || this._allConnections.length < this.config.connectionLimit) {
    connection = new PoolConnection(this, { config: this.config.newConnectionConfig() });

    this._acquiringConnections.push(connection);
    this._allConnections.push(connection);

    connection.connect({timeout: this.config.acquireTimeout}, function onConnect(err) {
      spliceConnection(pool._acquiringConnections, connection);

      if (pool._closed) {
        err = new Error('Pool is closed.');
        err.code = 'POOL_CLOSED';
      }

      if (err) {
        pool._purgeConnection(connection);
        cb(err);
        return;
      }

      pool.emit('connection', connection);
      pool.emit('acquire', connection);
      cb(null, connection);
    });
    return;
  }

  if (!this.config.waitForConnections) {
    process.nextTick(function(){
      var err = new Error('No connections available.');
      err.code = 'POOL_CONNLIMIT';
      cb(err);
    });
    return;
  }

  this._enqueueCallback(cb);
} 
``` 
- example usage 
```shell 
...
var pool  = mysql.createPool({
  host     : 'example.org',
  user     : 'bob',
  password : 'secret',
  database : 'my_db'
});

pool.getConnection(function(err, connection) {
  // connected! (unless 'err' is set)
});
'''

When you are done with a connection, just call 'connection.release()' and the
connection will return to the pool, ready to be used again by someone else.
... 
```    

#### <a name="apidoc.element.mysql.Pool.prototype.query"></a>[function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>query (sql, values, cb)](#apidoc.element.mysql.Pool.prototype.query) 
- description and source-code 
```javascript 
query = function (sql, values, cb) {
  var query = Connection.createQuery(sql, values, cb);

  if (!(typeof sql === 'object' && 'typeCast' in sql)) {
    query.typeCast = this.config.connectionConfig.typeCast;
  }

  if (this.config.connectionConfig.trace) {
    // Long stack trace support
    query._callSite = new Error();
  }

  this.getConnection(function (err, conn) {
    if (err) {
      query.on('error', function () {});
      query.end(err);
      return;
    }

    // Release connection based off event
    query.once('end', function() {
      conn.release();
    });

    conn.query(query);
  });

  return query;
} 
``` 
- example usage 
```shell 
...
  user     : 'me',
  password : 'secret',
  database : 'my_db'
});

connection.connect();

connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
  if (error) throw error;
  console.log('The solution is: ', results[0].solution);
});

connection.end();
'''
... 
```    

#### <a name="apidoc.element.mysql.Pool.prototype.releaseConnection"></a>[function <span class="apidocSignatureSpan">mysql.Pool.prototype.</span>releaseConnection (connection)](#apidoc.element.mysql.Pool.prototype.releaseConnection) 
- description and source-code 
```javascript 
function releaseConnection(connection) {

  if (this._acquiringConnections.indexOf(connection) !== -1) {
    // connection is being acquired
    return;
  }

  if (connection._pool) {
    if (connection._pool !== this) {
      throw new Error('Connection released to wrong pool');
    }

    if (this._freeConnections.indexOf(connection) !== -1) {
      // connection already in free connection pool
      // this won't catch all double-release cases
      throw new Error('Connection already released');
    } else {
      // add connection to end of free queue
      this._freeConnections.push(connection);
      this.emit('release', connection);
    }
  }

  if (this._closed) {
    // empty the connection queue
    this._connectionQueue.splice(0).forEach(function (cb) {
      var err = new Error('Pool is closed.');
      err.code = 'POOL_CLOSED';
      process.nextTick(function () {
        cb(err);
      });
    });
  } else if (this._connectionQueue.length) {
    // get connection with next waiting callback
    this.getConnection(this._connectionQueue.shift());
  }
} 
``` 
- example usage 
```shell 
...

  // Remove connection from all connections
  spliceConnection(this._allConnections, connection);

  // Remove connection from free connections
  spliceConnection(this._freeConnections, connection);

  this.releaseConnection(connection);
};

Pool.prototype.escape = function(value) {
  return mysql.escape(value, this.config.connectionConfig.stringifyObjects, this.config.connectionConfig.timezone);
};

Pool.prototype.escapeId = function escapeId(value) {
... 
```    



# <a name="apidoc.module.mysql.PoolCluster"></a>[module mysql.PoolCluster](#apidoc.module.mysql.PoolCluster)   

#### <a name="apidoc.element.mysql.PoolCluster.PoolCluster"></a>[function <span class="apidocSignatureSpan">mysql.</span>PoolCluster (config)](#apidoc.element.mysql.PoolCluster.PoolCluster) 
- description and source-code 
```javascript 
function PoolCluster(config) {
  EventEmitter.call(this);

  config = config || {};
  this._canRetry = typeof config.canRetry === 'undefined' ? true : config.canRetry;
  this._defaultSelector = config.defaultSelector || 'RR';
  this._removeNodeErrorCount = config.removeNodeErrorCount || 5;
  this._restoreNodeTimeout = config.restoreNodeTimeout || 0;

  this._closed = false;
  this._findCaches = Object.create(null);
  this._lastId = 0;
  this._namespaces = Object.create(null);
  this._nodes = Object.create(null);
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.PoolCluster.super_"></a>[function <span class="apidocSignatureSpan">mysql.PoolCluster.</span>super_ ()](#apidoc.element.mysql.PoolCluster.super_) 
- description and source-code 
```javascript 
function EventEmitter() {
  EventEmitter.init.call(this);
} 
``` 
- example usage 
```shell 
n/a 
```    



# <a name="apidoc.module.mysql.PoolCluster.prototype"></a>[module mysql.PoolCluster.prototype](#apidoc.module.mysql.PoolCluster.prototype)   

#### <a name="apidoc.element.mysql.PoolCluster.prototype._clearFindCaches"></a>[function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>_clearFindCaches ()](#apidoc.element.mysql.PoolCluster.prototype._clearFindCaches) 
- description and source-code 
```javascript 
function _clearFindCaches() {
  this._findCaches = Object.create(null);
} 
``` 
- example usage 
```shell 
...
this._nodes[nodeId] = {
  id            : nodeId,
  errorCount    : 0,
  pool          : new Pool({config: poolConfig}),
  _offlineUntil : 0
};

this._clearFindCaches();
};

PoolCluster.prototype.end = function end(callback) {
var cb = callback !== undefined
  ? callback
  : _cb;
... 
```    

#### <a name="apidoc.element.mysql.PoolCluster.prototype._decreaseErrorCount"></a>[function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>_decreaseErrorCount (node)](#apidoc.element.mysql.PoolCluster.prototype._decreaseErrorCount) 
- description and source-code 
```javascript 
function _decreaseErrorCount(node) {
  var errorCount = node.errorCount;

  if (errorCount > this._removeNodeErrorCount) {
    errorCount = this._removeNodeErrorCount;
  }

  if (errorCount < 1) {
    errorCount = 1;
  }

  node.errorCount = errorCount - 1;

  if (node._offlineUntil) {
    node._offlineUntil = 0;
    this.emit('online', node.id);
  }
} 
``` 
- example usage 
```shell 
...

  node.pool.getConnection(function (err, connection) {
    if (err) {
      self._increaseErrorCount(node);
      cb(err);
      return;
    } else {
      self._decreaseErrorCount(node);
    }

    connection._clusterId = node.id;

    cb(null, connection);
  });
};
... 
```    

#### <a name="apidoc.element.mysql.PoolCluster.prototype._findNodeIds"></a>[function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>_findNodeIds (pattern, includeOffline)](#apidoc.element.mysql.PoolCluster.prototype._findNodeIds) 
- description and source-code 
```javascript 
function _findNodeIds(pattern, includeOffline) {
  var currentTime  = 0;
  var foundNodeIds = this._findCaches[pattern];

  if (foundNodeIds === undefined) {
    var expression = patternRegExp(pattern);
    var nodeIds    = Object.keys(this._nodes);

    foundNodeIds = nodeIds.filter(function (id) {
      return id.match(expression);
    });

    this._findCaches[pattern] = foundNodeIds;
  }

  if (includeOffline) {
    return foundNodeIds;
  }

  return foundNodeIds.filter(function (nodeId) {
    var node = this._getNode(nodeId);

    if (!node._offlineUntil) {
      return true;
    }

    if (!currentTime) {
      currentTime = getMonotonicMilliseconds();
    }

    return node._offlineUntil <= currentTime;
  }, this);
} 
``` 
- example usage 
```shell 
...
this._namespaces[key] = new PoolNamespace(this, pattern, selector);
  }

  return this._namespaces[key];
};

PoolCluster.prototype.remove = function remove(pattern) {
  var foundNodeIds = this._findNodeIds(pattern, true);

  for (var i = 0; i < foundNodeIds.length; i++) {
var node = this._getNode(foundNodeIds[i]);

if (node) {
  this._removeNode(node);
}
... 
```    

#### <a name="apidoc.element.mysql.PoolCluster.prototype._getConnection"></a>[function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>_getConnection (node, cb)](#apidoc.element.mysql.PoolCluster.prototype._getConnection) 
- description and source-code 
```javascript 
_getConnection = function (node, cb) {
  var self = this;

  node.pool.getConnection(function (err, connection) {
    if (err) {
      self._increaseErrorCount(node);
      cb(err);
      return;
    } else {
      self._decreaseErrorCount(node);
    }

    connection._clusterId = node.id;

    cb(null, connection);
  });
} 
``` 
- example usage 
```shell 
...
  err.code = 'POOL_NOEXIST';
}

cb(err);
return;
  }

  cluster._getConnection(clusterNode, function(err, connection) {
var retry = err && cluster._canRetry
  && cluster._findNodeIds(namespace._pattern).length !== 0;

if (retry) {
  namespace.getConnection(cb);
  return;
}
... 
```    

#### <a name="apidoc.element.mysql.PoolCluster.prototype._getNode"></a>[function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>_getNode (id)](#apidoc.element.mysql.PoolCluster.prototype._getNode) 
- description and source-code 
```javascript 
function _getNode(id) {
  return this._nodes[id] || null;
} 
``` 
- example usage 
```shell 
...
  return this._namespaces[key];
};

PoolCluster.prototype.remove = function remove(pattern) {
  var foundNodeIds = this._findNodeIds(pattern, true);

  for (var i = 0; i < foundNodeIds.length; i++) {
    var node = this._getNode(foundNodeIds[i]);

    if (node) {
      this._removeNode(node);
    }
  }
};
... 
```    

#### <a name="apidoc.element.mysql.PoolCluster.prototype._increaseErrorCount"></a>[function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>_increaseErrorCount (node)](#apidoc.element.mysql.PoolCluster.prototype._increaseErrorCount) 
- description and source-code 
```javascript 
function _increaseErrorCount(node) {
  var errorCount = ++node.errorCount;

  if (this._removeNodeErrorCount > errorCount) {
    return;
  }

  if (this._restoreNodeTimeout > 0) {
    node._offlineUntil = getMonotonicMilliseconds() + this._restoreNodeTimeout;
    this.emit('offline', node.id);
    return;
  }

  this._removeNode(node);
  this.emit('remove', node.id);
} 
``` 
- example usage 
```shell 
...
};

PoolCluster.prototype._getConnection = function(node, cb) {
  var self = this;

  node.pool.getConnection(function (err, connection) {
if (err) {
  self._increaseErrorCount(node);
  cb(err);
  return;
} else {
  self._decreaseErrorCount(node);
}

connection._clusterId = node.id;
... 
```    

#### <a name="apidoc.element.mysql.PoolCluster.prototype._removeNode"></a>[function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>_removeNode (node)](#apidoc.element.mysql.PoolCluster.prototype._removeNode) 
- description and source-code 
```javascript 
function _removeNode(node) {
  delete this._nodes[node.id];

  this._clearFindCaches();

  node.pool.end(_noop);
} 
``` 
- example usage 
```shell 
...
PoolCluster.prototype.remove = function remove(pattern) {
var foundNodeIds = this._findNodeIds(pattern, true);

for (var i = 0; i < foundNodeIds.length; i++) {
  var node = this._getNode(foundNodeIds[i]);

  if (node) {
    this._removeNode(node);
  }
}
};

PoolCluster.prototype.getConnection = function(pattern, selector, cb) {
var namespace;
if (typeof pattern === 'function') {
... 
```    

#### <a name="apidoc.element.mysql.PoolCluster.prototype.add"></a>[function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>add (id, config)](#apidoc.element.mysql.PoolCluster.prototype.add) 
- description and source-code 
```javascript 
function add(id, config) {
  if (this._closed) {
    throw new Error('PoolCluster is closed.');
  }

  var nodeId = typeof id === 'object'
    ? 'CLUSTER::' + (++this._lastId)
    : String(id);

  if (this._nodes[nodeId] !== undefined) {
    throw new Error('Node ID "' + nodeId + '" is already defined in PoolCluster.');
  }

  var poolConfig = typeof id !== 'object'
    ? new PoolConfig(config)
    : new PoolConfig(id);

  this._nodes[nodeId] = {
    id            : nodeId,
    errorCount    : 0,
    pool          : new Pool({config: poolConfig}),
    _offlineUntil : 0
  };

  this._clearFindCaches();
} 
``` 
- example usage 
```shell 
...
PoolCluster provides multiple hosts connection. (group & retry & selector)

'''js
// create
var poolCluster = mysql.createPoolCluster();

// add configurations (the config is a pool config object)
poolCluster.add(config); // add configuration with automatic name
poolCluster.add('MASTER', masterConfig); // add a named configuration
poolCluster.add('SLAVE1', slave1Config);
poolCluster.add('SLAVE2', slave2Config);

// remove configurations
poolCluster.remove('SLAVE2'); // By nodeId
poolCluster.remove('SLAVE*'); // By target group : SLAVE1-2
... 
```    

#### <a name="apidoc.element.mysql.PoolCluster.prototype.end"></a>[function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>end (callback)](#apidoc.element.mysql.PoolCluster.prototype.end) 
- description and source-code 
```javascript 
function end(callback) {
  var cb = callback !== undefined
    ? callback
    : _cb;

  if (typeof cb !== 'function') {
    throw TypeError('callback argument must be a function');
  }

  if (this._closed) {
    process.nextTick(cb);
    return;
  }

  this._closed = true;

  var calledBack   = false;
  var nodeIds      = Object.keys(this._nodes);
  var waitingClose = 0;

  function onEnd(err) {
    if (!calledBack && (err || --waitingClose <= 0)) {
      calledBack = true;
      cb(err);
    }
  }

  for (var i = 0; i < nodeIds.length; i++) {
    var nodeId = nodeIds[i];
    var node = this._nodes[nodeId];

    waitingClose++;
    node.pool.end(onEnd);
  }

  if (waitingClose === 0) {
    process.nextTick(onEnd);
  }
} 
``` 
- example usage 
```shell 
...
connection.connect();

connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
if (error) throw error;
console.log('The solution is: ', results[0].solution);
});

connection.end();
'''

From this example, you can learn the following:

* Every method you invoke on a connection is queued and executed in sequence.
* Closing the connection is done using 'end()' which makes sure all remaining
queries are executed before sending a quit packet to the mysql server.
... 
```    

#### <a name="apidoc.element.mysql.PoolCluster.prototype.getConnection"></a>[function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>getConnection (pattern, selector, cb)](#apidoc.element.mysql.PoolCluster.prototype.getConnection) 
- description and source-code 
```javascript 
getConnection = function (pattern, selector, cb) {
  var namespace;
  if (typeof pattern === 'function') {
    cb = pattern;
    namespace = this.of();
  } else {
    if (typeof selector === 'function') {
      cb = selector;
      selector = this._defaultSelector;
    }

    namespace = this.of(pattern, selector);
  }

  namespace.getConnection(cb);
} 
``` 
- example usage 
```shell 
...
var pool  = mysql.createPool({
  host     : 'example.org',
  user     : 'bob',
  password : 'secret',
  database : 'my_db'
});

pool.getConnection(function(err, connection) {
  // connected! (unless 'err' is set)
});
'''

When you are done with a connection, just call 'connection.release()' and the
connection will return to the pool, ready to be used again by someone else.
... 
```    

#### <a name="apidoc.element.mysql.PoolCluster.prototype.of"></a>[function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>of (pattern, selector)](#apidoc.element.mysql.PoolCluster.prototype.of) 
- description and source-code 
```javascript 
of = function (pattern, selector) {
  pattern = pattern || '*';

  selector = selector || this._defaultSelector;
  selector = selector.toUpperCase();
  if (typeof PoolSelector[selector] === 'undefined') {
    selector = this._defaultSelector;
  }

  var key = pattern + selector;

  if (typeof this._namespaces[key] === 'undefined') {
    this._namespaces[key] = new PoolNamespace(this, pattern, selector);
  }

  return this._namespaces[key];
} 
``` 
- example usage 
```shell 
...
// A pattern can be passed with *  as wildcard
poolCluster.getConnection('SLAVE*', 'ORDER', function (err, connection) {});

// The pattern can also be a regular expression
poolCluster.getConnection(/^SLAVE[12]$/, function (err, connection) {});

// of namespace : of(pattern, selector)
poolCluster.of('*').getConnection(function (err, connection) {});

var pool = poolCluster.of('SLAVE*', 'RANDOM');
pool.getConnection(function (err, connection) {});
pool.getConnection(function (err, connection) {});
pool.query(function (error, results, fields) {});

// close all connections
... 
```    

#### <a name="apidoc.element.mysql.PoolCluster.prototype.remove"></a>[function <span class="apidocSignatureSpan">mysql.PoolCluster.prototype.</span>remove (pattern)](#apidoc.element.mysql.PoolCluster.prototype.remove) 
- description and source-code 
```javascript 
function remove(pattern) {
  var foundNodeIds = this._findNodeIds(pattern, true);

  for (var i = 0; i < foundNodeIds.length; i++) {
    var node = this._getNode(foundNodeIds[i]);

    if (node) {
      this._removeNode(node);
    }
  }
} 
``` 
- example usage 
```shell 
...
// add configurations (the config is a pool config object)
poolCluster.add(config); // add configuration with automatic name
poolCluster.add('MASTER', masterConfig); // add a named configuration
poolCluster.add('SLAVE1', slave1Config);
poolCluster.add('SLAVE2', slave2Config);

// remove configurations
poolCluster.remove('SLAVE2'); // By nodeId
poolCluster.remove('SLAVE*'); // By target group : SLAVE1-2

// Target Group : ALL(anonymous, MASTER, SLAVE1-2), Selector : round-robin(default)
poolCluster.getConnection(function (err, connection) {});

// Target Group : MASTER, Selector : round-robin
poolCluster.getConnection('MASTER', function (err, connection) {});
... 
```    



# <a name="apidoc.module.mysql.PoolConfig"></a>[module mysql.PoolConfig](#apidoc.module.mysql.PoolConfig)   

#### <a name="apidoc.element.mysql.PoolConfig.PoolConfig"></a>[function <span class="apidocSignatureSpan">mysql.</span>PoolConfig (options)](#apidoc.element.mysql.PoolConfig.PoolConfig) 
- description and source-code 
```javascript 
function PoolConfig(options) {
  if (typeof options === 'string') {
    options = ConnectionConfig.parseUrl(options);
  }

  this.acquireTimeout     = (options.acquireTimeout === undefined)
    ? 10 * 1000
    : Number(options.acquireTimeout);
  this.connectionConfig   = new ConnectionConfig(options);
  this.waitForConnections = (options.waitForConnections === undefined)
    ? true
    : Boolean(options.waitForConnections);
  this.connectionLimit    = (options.connectionLimit === undefined)
    ? 10
    : Number(options.connectionLimit);
  this.queueLimit         = (options.queueLimit === undefined)
    ? 0
    : Number(options.queueLimit);
} 
``` 
- example usage 
```shell 
n/a 
```    



# <a name="apidoc.module.mysql.PoolConfig.prototype"></a>[module mysql.PoolConfig.prototype](#apidoc.module.mysql.PoolConfig.prototype)   

#### <a name="apidoc.element.mysql.PoolConfig.prototype.newConnectionConfig"></a>[function <span class="apidocSignatureSpan">mysql.PoolConfig.prototype.</span>newConnectionConfig ()](#apidoc.element.mysql.PoolConfig.prototype.newConnectionConfig) 
- description and source-code 
```javascript 
function newConnectionConfig() {
  var connectionConfig = new ConnectionConfig(this.connectionConfig);

  connectionConfig.clientFlags   = this.connectionConfig.clientFlags;
  connectionConfig.maxPacketSize = this.connectionConfig.maxPacketSize;

  return connectionConfig;
} 
``` 
- example usage 
```shell 
...
  if (this._freeConnections.length > 0) {
connection = this._freeConnections.shift();
this.acquireConnection(connection, cb);
return;
  }

  if (this.config.connectionLimit === 0 || this._allConnections.length < this.config.connectionLimit) {
connection = new PoolConnection(this, { config: this.config.newConnectionConfig() });

this._acquiringConnections.push(connection);
this._allConnections.push(connection);

connection.connect({timeout: this.config.acquireTimeout}, function onConnect(err) {
  spliceConnection(pool._acquiringConnections, connection);
... 
```    



# <a name="apidoc.module.mysql.PoolConnection"></a>[module mysql.PoolConnection](#apidoc.module.mysql.PoolConnection)   

#### <a name="apidoc.element.mysql.PoolConnection.PoolConnection"></a>[function <span class="apidocSignatureSpan">mysql.</span>PoolConnection (pool, options)](#apidoc.element.mysql.PoolConnection.PoolConnection) 
- description and source-code 
```javascript 
function PoolConnection(pool, options) {
  Connection.call(this, options);
  this._pool  = pool;

  // Bind connection to pool domain
  if (Events.usingDomains) {
    this.domain = pool.domain;
  }

  // When a fatal error occurs the connection's protocol ends, which will cause
  // the connection to end as well, thus we only need to watch for the end event
  // and we will be notified of disconnects.
  this.on('end', this._removeFromPool);
  this.on('error', function (err) {
    if (err.fatal) {
      this._removeFromPool();
    }
  });
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.PoolConnection.super_"></a>[function <span class="apidocSignatureSpan">mysql.PoolConnection.</span>super_ (options)](#apidoc.element.mysql.PoolConnection.super_) 
- description and source-code 
```javascript 
function Connection(options) {
  Events.EventEmitter.call(this);

  this.config = options.config;

  this._socket        = options.socket;
  this._protocol      = new Protocol({config: this.config, connection: this});
  this._connectCalled = false;
  this.state          = 'disconnected';
  this.threadId       = null;
} 
``` 
- example usage 
```shell 
n/a 
```    



# <a name="apidoc.module.mysql.PoolConnection.prototype"></a>[module mysql.PoolConnection.prototype](#apidoc.module.mysql.PoolConnection.prototype)   

#### <a name="apidoc.element.mysql.PoolConnection.prototype._realEnd"></a>[function <span class="apidocSignatureSpan">mysql.PoolConnection.prototype.</span>_realEnd (options, callback)](#apidoc.element.mysql.PoolConnection.prototype._realEnd) 
- description and source-code 
```javascript 
function end(options, callback) {
  var cb   = callback;
  var opts = options;

  if (!callback && typeof options === 'function') {
    cb   = options;
    opts = null;
  }

  // create custom options reference
  opts = Object.create(opts || null);

  if (opts.timeout === undefined) {
    // default timeout of 30 seconds
    opts.timeout = 30000;
  }

  this._implyConnect();
  this._protocol.quit(opts, bindToCurrentDomain(cb));
} 
``` 
- example usage 
```shell 
...
  if (connection.state === 'disconnected') {
    connection.destroy();
  }

  this._removeConnection(connection);

  if (connection.state !== 'disconnected' && !connection._protocol._quitSequence) {
    connection._realEnd(cb);
    return;
  }

  process.nextTick(cb);
};

Pool.prototype._removeConnection = function(connection) {
... 
```    

#### <a name="apidoc.element.mysql.PoolConnection.prototype._removeFromPool"></a>[function <span class="apidocSignatureSpan">mysql.PoolConnection.prototype.</span>_removeFromPool ()](#apidoc.element.mysql.PoolConnection.prototype._removeFromPool) 
- description and source-code 
```javascript 
function _removeFromPool() {
  if (!this._pool || this._pool._closed) {
    return;
  }

  var pool = this._pool;
  this._pool = null;

  pool._purgeConnection(this);
} 
``` 
- example usage 
```shell 
...

// When a fatal error occurs the connection's protocol ends, which will cause
// the connection to end as well, thus we only need to watch for the end event
// and we will be notified of disconnects.
this.on('end', this._removeFromPool);
this.on('error', function (err) {
  if (err.fatal) {
    this._removeFromPool();
  }
});
}

PoolConnection.prototype.release = function release() {
var pool = this._pool;
... 
```    

#### <a name="apidoc.element.mysql.PoolConnection.prototype.destroy"></a>[function <span class="apidocSignatureSpan">mysql.PoolConnection.prototype.</span>destroy ()](#apidoc.element.mysql.PoolConnection.prototype.destroy) 
- description and source-code 
```javascript 
destroy = function () {
  Connection.prototype.destroy.apply(this, arguments);
  this._removeFromPool(this);
} 
``` 
- example usage 
```shell 
...

An alternative way to end the connection is to call the 'destroy()' method.
This will cause an immediate termination of the underlying socket.
Additionally 'destroy()' guarantees that no more events or callbacks will be
triggered for the connection.

'''js
connection.destroy();
'''

Unlike 'end()' the 'destroy()' method does not take a callback argument.

## Pooling connections

Rather than creating and managing connections one-by-one, this module also
... 
```    

#### <a name="apidoc.element.mysql.PoolConnection.prototype.end"></a>[function <span class="apidocSignatureSpan">mysql.PoolConnection.prototype.</span>end ()](#apidoc.element.mysql.PoolConnection.prototype.end) 
- description and source-code 
```javascript 
end = function () {
  console.warn( 'Calling conn.end() to release a pooled connection is '
              + 'deprecated. In next version calling conn.end() will be '
              + 'restored to default conn.end() behavior. Use '
              + 'conn.release() instead.'
              );
  this.release();
} 
``` 
- example usage 
```shell 
...
connection.connect();

connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
if (error) throw error;
console.log('The solution is: ', results[0].solution);
});

connection.end();
'''

From this example, you can learn the following:

* Every method you invoke on a connection is queued and executed in sequence.
* Closing the connection is done using 'end()' which makes sure all remaining
queries are executed before sending a quit packet to the mysql server.
... 
```    

#### <a name="apidoc.element.mysql.PoolConnection.prototype.release"></a>[function <span class="apidocSignatureSpan">mysql.PoolConnection.prototype.</span>release ()](#apidoc.element.mysql.PoolConnection.prototype.release) 
- description and source-code 
```javascript 
function release() {
  var pool = this._pool;

  if (!pool || pool._closed) {
    return undefined;
  }

  return pool.releaseConnection(this);
} 
``` 
- example usage 
```shell 
...
});

pool.getConnection(function(err, connection) {
  // connected! (unless 'err' is set)
});
'''

When you are done with a connection, just call 'connection.release()' and the
connection will return to the pool, ready to be used again by someone else.

'''js
var mysql = require('mysql');
var pool  = mysql.createPool(...);

pool.getConnection(function(err, connection) {
... 
```    



# <a name="apidoc.module.mysql.PoolNamespace"></a>[module mysql.PoolNamespace](#apidoc.module.mysql.PoolNamespace)   

#### <a name="apidoc.element.mysql.PoolNamespace.PoolNamespace"></a>[function <span class="apidocSignatureSpan">mysql.</span>PoolNamespace (cluster, pattern, selector)](#apidoc.element.mysql.PoolNamespace.PoolNamespace) 
- description and source-code 
```javascript 
function PoolNamespace(cluster, pattern, selector) {
  this._cluster = cluster;
  this._pattern = pattern;
  this._selector = new PoolSelector[selector]();
} 
``` 
- example usage 
```shell 
n/a 
```    



# <a name="apidoc.module.mysql.PoolNamespace.prototype"></a>[module mysql.PoolNamespace.prototype](#apidoc.module.mysql.PoolNamespace.prototype)   

#### <a name="apidoc.element.mysql.PoolNamespace.prototype._getClusterNode"></a>[function <span class="apidocSignatureSpan">mysql.PoolNamespace.prototype.</span>_getClusterNode ()](#apidoc.element.mysql.PoolNamespace.prototype._getClusterNode) 
- description and source-code 
```javascript 
function _getClusterNode() {
  var foundNodeIds = this._cluster._findNodeIds(this._pattern);
  var nodeId;

  switch (foundNodeIds.length) {
    case 0:
      nodeId = null;
      break;
    case 1:
      nodeId = foundNodeIds[0];
      break;
    default:
      nodeId = this._selector(foundNodeIds);
      break;
  }

  return nodeId !== null
    ? this._cluster._getNode(nodeId)
    : null;
} 
``` 
- example usage 
```shell 
...
function PoolNamespace(cluster, pattern, selector) {
  this._cluster = cluster;
  this._pattern = pattern;
  this._selector = new PoolSelector[selector]();
}

PoolNamespace.prototype.getConnection = function(cb) {
  var clusterNode = this._getClusterNode();
  var cluster     = this._cluster;
  var namespace   = this;

  if (clusterNode === null) {
var err = null;

if (this._cluster._findNodeIds(this._pattern, true).length !== 0) {
... 
```    

#### <a name="apidoc.element.mysql.PoolNamespace.prototype.getConnection"></a>[function <span class="apidocSignatureSpan">mysql.PoolNamespace.prototype.</span>getConnection (cb)](#apidoc.element.mysql.PoolNamespace.prototype.getConnection) 
- description and source-code 
```javascript 
getConnection = function (cb) {
  var clusterNode = this._getClusterNode();
  var cluster     = this._cluster;
  var namespace   = this;

  if (clusterNode === null) {
    var err = null;

    if (this._cluster._findNodeIds(this._pattern, true).length !== 0) {
      err = new Error('Pool does not have online node.');
      err.code = 'POOL_NONEONLINE';
    } else {
      err = new Error('Pool does not exist.');
      err.code = 'POOL_NOEXIST';
    }

    cb(err);
    return;
  }

  cluster._getConnection(clusterNode, function(err, connection) {
    var retry = err && cluster._canRetry
      && cluster._findNodeIds(namespace._pattern).length !== 0;

    if (retry) {
      namespace.getConnection(cb);
      return;
    }

    if (err) {
      cb(err);
      return;
    }

    cb(null, connection);
  });
} 
``` 
- example usage 
```shell 
...
var pool  = mysql.createPool({
  host     : 'example.org',
  user     : 'bob',
  password : 'secret',
  database : 'my_db'
});

pool.getConnection(function(err, connection) {
  // connected! (unless 'err' is set)
});
'''

When you are done with a connection, just call 'connection.release()' and the
connection will return to the pool, ready to be used again by someone else.
... 
```    

#### <a name="apidoc.element.mysql.PoolNamespace.prototype.query"></a>[function <span class="apidocSignatureSpan">mysql.PoolNamespace.prototype.</span>query (sql, values, cb)](#apidoc.element.mysql.PoolNamespace.prototype.query) 
- description and source-code 
```javascript 
query = function (sql, values, cb) {
  var cluster     = this._cluster;
  var clusterNode = this._getClusterNode();
  var query       = Connection.createQuery(sql, values, cb);
  var namespace   = this;

  if (clusterNode === null) {
    var err = null;

    if (this._cluster._findNodeIds(this._pattern, true).length !== 0) {
      err = new Error('Pool does not have online node.');
      err.code = 'POOL_NONEONLINE';
    } else {
      err = new Error('Pool does not exist.');
      err.code = 'POOL_NOEXIST';
    }

    process.nextTick(function () {
      query.on('error', function () {});
      query.end(err);
    });
    return query;
  }

  if (!(typeof sql === 'object' && 'typeCast' in sql)) {
    query.typeCast = clusterNode.pool.config.connectionConfig.typeCast;
  }

  if (clusterNode.pool.config.connectionConfig.trace) {
    // Long stack trace support
    query._callSite = new Error();
  }

  cluster._getConnection(clusterNode, function (err, conn) {
    var retry = err && cluster._canRetry
      && cluster._findNodeIds(namespace._pattern).length !== 0;

    if (retry) {
      namespace.query(query);
      return;
    }

    if (err) {
      query.on('error', function () {});
      query.end(err);
      return;
    }

    // Release connection based off event
    query.once('end', function() {
      conn.release();
    });

    conn.query(query);
  });

  return query;
} 
``` 
- example usage 
```shell 
...
  user     : 'me',
  password : 'secret',
  database : 'my_db'
});

connection.connect();

connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
  if (error) throw error;
  console.log('The solution is: ', results[0].solution);
});

connection.end();
'''
... 
```    



# <a name="apidoc.module.mysql.PoolSelector"></a>[module mysql.PoolSelector](#apidoc.module.mysql.PoolSelector)   

#### <a name="apidoc.element.mysql.PoolSelector.ORDER"></a>[function <span class="apidocSignatureSpan">mysql.PoolSelector.</span>ORDER ()](#apidoc.element.mysql.PoolSelector.ORDER) 
- description and source-code 
```javascript 
function PoolSelectorOrder() {
  return function(clusterIds) {
    return clusterIds[0];
  };
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.PoolSelector.RANDOM"></a>[function <span class="apidocSignatureSpan">mysql.PoolSelector.</span>RANDOM ()](#apidoc.element.mysql.PoolSelector.RANDOM) 
- description and source-code 
```javascript 
function PoolSelectorRandom() {
  return function(clusterIds) {
    return clusterIds[Math.floor(Math.random() * clusterIds.length)];
  };
} 
``` 
- example usage 
```shell 
n/a 
```    

#### <a name="apidoc.element.mysql.PoolSelector.RR"></a>[function <span class="apidocSignatureSpan">mysql.PoolSelector.</span>RR ()](#apidoc.element.mysql.PoolSelector.RR) 
- description and source-code 
```javascript 
function PoolSelectorRoundRobin() {
  var index = 0;

  return function(clusterIds) {
    if (index >= clusterIds.length) {
      index = 0;
    }

    var clusterId = clusterIds[index++];

    return clusterId;
  };
} 
``` 
- example usage 
```shell 
n/a 
```    



# misc 
- this document was created with [utility2](https://github.com/kaizhu256/node-utility2) 
