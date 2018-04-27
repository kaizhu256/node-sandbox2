# utility2
the zero-dependency, swiss-army-knife utility for building, testing, and deploying webapps

# live web demo
- [https://kaizhu256.github.io/node-utility2/build..beta..travis-ci.org/app](https://kaizhu256.github.io/node-utility2/build..beta..travis-ci.org/app/)

[![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.deployGithub.browser.%252Fnode-utility2%252Fbuild%252Fapp.png)](https://kaizhu256.github.io/node-utility2/build..beta..travis-ci.org/app/)



[![travis-ci.org build-status](https://api.travis-ci.org/kaizhu256/node-utility2.svg)](https://travis-ci.org/kaizhu256/node-utility2) [![coverage](https://kaizhu256.github.io/node-utility2/build/coverage.badge.svg)](https://kaizhu256.github.io/node-utility2/build/coverage.html/index.html)

[![NPM](https://nodei.co/npm/utility2.png?downloads=true)](https://www.npmjs.com/package/utility2)

[![build commit status](https://kaizhu256.github.io/node-utility2/build/build.badge.svg)](https://travis-ci.org/kaizhu256/node-utility2)

| git-branch : | [master](https://github.com/kaizhu256/node-utility2/tree/master) | [beta](https://github.com/kaizhu256/node-utility2/tree/beta) | [alpha](https://github.com/kaizhu256/node-utility2/tree/alpha)|
|--:|:--|:--|:--|
| test-server-github : | [![github.com test-server](https://kaizhu256.github.io/node-utility2/GitHub-Mark-32px.png)](https://kaizhu256.github.io/node-utility2/build..master..travis-ci.org/app) | [![github.com test-server](https://kaizhu256.github.io/node-utility2/GitHub-Mark-32px.png)](https://kaizhu256.github.io/node-utility2/build..beta..travis-ci.org/app) | [![github.com test-server](https://kaizhu256.github.io/node-utility2/GitHub-Mark-32px.png)](https://kaizhu256.github.io/node-utility2/build..alpha..travis-ci.org/app)|
| test-server-heroku : | [![heroku.com test-server](https://kaizhu256.github.io/node-utility2/heroku-logo.75x25.png)](https://h1-utility2-master.herokuapp.com) | [![heroku.com test-server](https://kaizhu256.github.io/node-utility2/heroku-logo.75x25.png)](https://h1-utility2-beta.herokuapp.com) | [![heroku.com test-server](https://kaizhu256.github.io/node-utility2/heroku-logo.75x25.png)](https://h1-utility2-alpha.herokuapp.com)|
| test-report : | [![test-report](https://kaizhu256.github.io/node-utility2/build..master..travis-ci.org/test-report.badge.svg)](https://kaizhu256.github.io/node-utility2/build..master..travis-ci.org/test-report.html) | [![test-report](https://kaizhu256.github.io/node-utility2/build..beta..travis-ci.org/test-report.badge.svg)](https://kaizhu256.github.io/node-utility2/build..beta..travis-ci.org/test-report.html) | [![test-report](https://kaizhu256.github.io/node-utility2/build..alpha..travis-ci.org/test-report.badge.svg)](https://kaizhu256.github.io/node-utility2/build..alpha..travis-ci.org/test-report.html)|
| coverage : | [![coverage](https://kaizhu256.github.io/node-utility2/build..master..travis-ci.org/coverage.badge.svg)](https://kaizhu256.github.io/node-utility2/build..master..travis-ci.org/coverage.html/index.html) | [![coverage](https://kaizhu256.github.io/node-utility2/build..beta..travis-ci.org/coverage.badge.svg)](https://kaizhu256.github.io/node-utility2/build..beta..travis-ci.org/coverage.html/index.html) | [![coverage](https://kaizhu256.github.io/node-utility2/build..alpha..travis-ci.org/coverage.badge.svg)](https://kaizhu256.github.io/node-utility2/build..alpha..travis-ci.org/coverage.html/index.html)|
| build-artifacts : | [![build-artifacts](https://kaizhu256.github.io/node-utility2/glyphicons_144_folder_open.png)](https://github.com/kaizhu256/node-utility2/tree/gh-pages/build..master..travis-ci.org) | [![build-artifacts](https://kaizhu256.github.io/node-utility2/glyphicons_144_folder_open.png)](https://github.com/kaizhu256/node-utility2/tree/gh-pages/build..beta..travis-ci.org) | [![build-artifacts](https://kaizhu256.github.io/node-utility2/glyphicons_144_folder_open.png)](https://github.com/kaizhu256/node-utility2/tree/gh-pages/build..alpha..travis-ci.org)|

[![npmPackageListing](https://kaizhu256.github.io/node-utility2/build/screenshot.npmPackageListing.svg)](https://github.com/kaizhu256/node-utility2)

![npmPackageDependencyTree](https://kaizhu256.github.io/node-utility2/build/screenshot.npmPackageDependencyTree.svg)



# table of contents
1. [cdn download](#cdn-download)
1. [documentation](#documentation)
1. [quickstart standalone app](#quickstart-standalone-app)
1. [quickstart example.js](#quickstart-examplejs)
1. [extra screenshots](#extra-screenshots)
1. [package.json](#packagejson)
1. [changelog of last 50 commits](#changelog-of-last-50-commits)
1. [internal build script](#internal-build-script)
1. [misc](#misc)



# cdn download
- [https://kaizhu256.github.io/node-utility2/build..beta..travis-ci.org/app/assets.utility2.rollup.js](https://kaizhu256.github.io/node-utility2/build..beta..travis-ci.org/app/assets.utility2.rollup.js)



# documentation
#### cli help
![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.npmPackageCliHelp.svg)

#### api doc
- [https://kaizhu256.github.io/node-utility2/build..beta..travis-ci.org/apidoc.html](https://kaizhu256.github.io/node-utility2/build..beta..travis-ci.org/apidoc.html)

[![apidoc](https://kaizhu256.github.io/node-utility2/build/screenshot.buildCi.browser.%252Ftmp%252Fbuild%252Fapidoc.html.png)](https://kaizhu256.github.io/node-utility2/build..beta..travis-ci.org/apidoc.html)

#### todo
- npm publish v2018.4.8-alpha
- rename function serverLog -> debugLog
- add server stress test using electron
- none

#### changelog for v2018.4.8-alpha
- add function domOnEventSelecAllInsidePre
- update function ajax to be standalone in nodejs (by merging function httpRequest into function ajax)
- revert function browserTest with translate and scrape features removed
- add function ajaxCrawl
- update function onParallelList to restart if options.list has grown
- update shell-function shBuildAppSwgg0 to remove swgg-google-maps dependency
- add embedded-asset assets.readmeCustomOrg.swgg.template.md
- update shell-function shFilePackageJsonVersionIncrement to update README.md
- lib.apidoc.js - improve error-handling for misbehaving property-accessors
- update file .vimrc from 2-space-indent to 4-space-indent
- none

#### this package requires
- darwin or linux os



# quickstart standalone app
#### to run this example, follow the instruction in the script below
- [assets.app.js](https://kaizhu256.github.io/node-utility2/build..beta..travis-ci.org/app/assets.app.js)
```shell
# example.sh

# this shell script will download and run a web-demo of utility2 as a standalone app

# 1. download standalone app
curl -O https://kaizhu256.github.io/node-utility2/build..beta..travis-ci.org/app/assets.app.js
# 2. run standalone app
PORT=8081 node ./assets.app.js
# 3. open a browser to http://127.0.0.1:8081 and play with the web-demo
# 4. edit file assets.app.js to suit your needs
```

#### output from browser
[![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.testExampleSh.browser.%252F.png)](https://kaizhu256.github.io/node-utility2/build/app/assets.example.html)

#### output from shell
![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.testExampleSh.svg)



# quickstart example.js
![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.testExampleJs.browser.%252Ftmp%252Fbuild%252Ftest-report.html.png)

#### to run this example, follow the instruction in the script below
- [example.js](https://kaizhu256.github.io/node-utility2/build/example.js)
```javascript
/*
example.js

this script will demo automated browser-tests with coverage (via electron and istanbul)

instruction
    1. save this script as example.js
    2. run the shell command:
        $ npm install utility2 electron-lite && \
            PATH="$(pwd)/node_modules/.bin:$PATH" \
            PORT=8081 \
            npm_config_mode_coverage=utility2 \
            node_modules/.bin/utility2 test example.js
    3. view test-report in ./tmp/build/test-report.html
    4. view coverage in ./tmp/build/coverage.html/index.html
*/



/* istanbul instrument in package utility2 */
/* jslint-utility2 */
/*jslint
    bitwise: true,
    browser: true,
    maxerr: 4,
    maxlen: 100,
    node: true,
    nomen: true,
    regexp: true,
    stupid: true
*/
(function () {
    'use strict';
    var local;



    // run shared js-env code - init-before
    (function () {
        // init local
        local = {};
        // init modeJs
        local.modeJs = (function () {
            try {
                return typeof navigator.userAgent === 'string' &&
                    typeof document.querySelector('body') === 'object' &&
                    typeof XMLHttpRequest.prototype.open === 'function' &&
                    'browser';
            } catch (errorCaughtBrowser) {
                return module.exports &&
                    typeof process.versions.node === 'string' &&
                    typeof require('http').createServer === 'function' &&
                    'node';
            }
        }());
        // init global
        local.global = local.modeJs === 'browser'
            ? window
            : global;
        // init utility2_rollup
        local = local.global.utility2_rollup || (local.modeJs === 'browser'
            ? local.global.utility2_utility2
            : require('utility2'));
        // init exports
        local.global.local = local;
        // run test-server
        local.testRunServer(local);
        // init assets
        local.assetsDict['/assets.hello'] = 'hello\n';
        local.assetsDict['/assets.index.template.html'] = '';
    }());
    switch (local.modeJs) {



    // run browser js-env code - function
    case 'browser':
        local.testCase_ajax_200 = function (options, onError) {
        /*
         * this function will test ajax's "200 ok" handling-behavior
         */
            options = {};
            // test ajax-path 'assets.hello'
            local.ajax({ url: 'assets.hello' }, function (error, xhr) {
                local.tryCatchOnError(function () {
                    // validate no error occurred
                    local.assert(!error, error);
                    // validate data
                    options.data = xhr.responseText;
                    local.assert(options.data === 'hello\n', options.data);
                    onError();
                }, onError);
            });
        };
        local.testCase_ajax_404 = function (options, onError) {
        /*
         * this function will test ajax's "404 not found" handling-behavior
         */
            options = {};
            // test ajax-path '/undefined'
            local.ajax({ url: '/undefined' }, function (error) {
                local.tryCatchOnError(function () {
                    // validate error occurred
                    local.assert(error, error);
                    options.statusCode = error.statusCode;
                    // validate 404 http statusCode
                    local.assert(options.statusCode === 404, options.statusCode);
                    onError();
                }, onError);
            });
        };
        break;



    // run node js-env code - function
    case 'node':
        local.testCase_webpage_default = function (options, onError) {
        /*
         * this function will test webpage's default handling-behavior
         */
            options = { modeCoverageMerge: true, url: local.serverLocalHost + '?modeTest=1' };
            local.browserTest(options, onError);
        };
        break;
    }
    switch (local.modeJs) {



    // run browser js-env code - init-test
    /* istanbul ignore next */
    case 'browser':
        local.testRunBrowser = function (event) {
            if (!event || (event &&
                    event.currentTarget &&
                    event.currentTarget.className &&
                    event.currentTarget.className.includes &&
                    event.currentTarget.className.includes('onreset'))) {
                // reset output
                Array.from(
                    document.querySelectorAll('body > .resettable')
                ).forEach(function (element) {
                    switch (element.tagName) {
                    case 'INPUT':
                    case 'TEXTAREA':
                        element.value = '';
                        break;
                    default:
                        element.textContent = '';
                    }
                });
            }
            switch (event && event.currentTarget && event.currentTarget.id) {
            case 'testRunButton1':
                // show tests
                if (document.querySelector('#testReportDiv1').style.maxHeight === '0px') {
                    local.uiAnimateSlideDown(document.querySelector('#testReportDiv1'));
                    document.querySelector('#testRunButton1').textContent = 'hide internal test';
                    local.modeTest = true;
                    local.testRunDefault(local);
                // hide tests
                } else {
                    local.uiAnimateSlideUp(document.querySelector('#testReportDiv1'));
                    document.querySelector('#testRunButton1').textContent = 'run internal test';
                }
                break;
            // custom-case
            case 'testRunButton2':
                // run tests
                local.modeTest = true;
                local.testRunDefault(local);
                break;
            default:
                if (location.href.indexOf("modeTest=") >= 0) {
                    return;
                }
                // try to JSON.stringify #inputTextareaEval1
                try {
                    document.querySelector('#outputPreJsonStringify1').textContent = '';
                    document.querySelector('#outputPreJsonStringify1').textContent =
                        local.jsonStringifyOrdered(
                            JSON.parse(document.querySelector('#inputTextareaEval1').value),
                            null,
                            4
                        );
                } catch (ignore) {
                }
                // jslint #inputTextareaEval1
                local.jslint.errorText = '';
                if (document.querySelector('#inputTextareaEval1').value
                        .indexOf('/*jslint') >= 0) {
                    local.jslint.jslintAndPrint(
                        document.querySelector('#inputTextareaEval1').value,
                        'inputTextareaEval1.js'
                    );
                }
                document.querySelector('#outputPreJslint1').textContent =
                    local.jslint.errorText
                    .replace((/\u001b\[\d+m/g), '')
                    .trim();
                // try to cleanup __coverage__
                try {
                    delete local.global.__coverage__['/inputTextareaEval1.js'];
                } catch (ignore) {
                }
                // try to cover and eval input-code
                try {
                    /*jslint evil: true*/
                    document.querySelector('#outputTextarea1').value =
                        local.istanbul.instrumentSync(
                            document.querySelector('#inputTextareaEval1').value,
                            '/inputTextareaEval1.js'
                        );
                    eval(document.querySelector('#outputTextarea1').value);
                    document.querySelector('#coverageReportDiv1').innerHTML =
                        local.istanbul.coverageReportCreate({
                            coverage: window.__coverage__
                        });
                } catch (errorCaught) {
                    console.error(errorCaught);
                }
            }
            if (document.querySelector('#inputTextareaEval1') && (!event || (event &&
                    event.currentTarget &&
                    event.currentTarget.className &&
                    event.currentTarget.className.includes &&
                    event.currentTarget.className.includes('oneval')))) {
                // try to eval input-code
                try {
                    /*jslint evil: true*/
                    eval(document.querySelector('#inputTextareaEval1').value);
                } catch (errorCaught) {
                    console.error(errorCaught);
                }
            }
        };
        // log stderr and stdout to #outputTextareaStdout1
        ['error', 'log'].forEach(function (key) {
            console[key + '_original'] = console[key];
            console[key] = function () {
                var element;
                console[key + '_original'].apply(console, arguments);
                element = document.querySelector('#outputTextareaStdout1');
                if (!element) {
                    return;
                }
                // append text to #outputTextareaStdout1
                element.value += Array.from(arguments).map(function (arg) {
                    return typeof arg === 'string'
                        ? arg
                        : JSON.stringify(arg, null, 4);
                }).join(' ') + '\n';
                // scroll textarea to bottom
                element.scrollTop = element.scrollHeight;
            };
        });
        // init event-handling
        ['change', 'click', 'keyup'].forEach(function (event) {
            Array.from(document.querySelectorAll('.on' + event)).forEach(function (element) {
                element.addEventListener(event, local.testRunBrowser);
            });
        });
        // run tests
        local.testRunBrowser();
        break;



    // run node js-env code - init-test
    /* istanbul ignore next */
    case 'node':
        // init exports
        module.exports = local;
        // require builtins
        // local.assert = require('assert');
        local.buffer = require('buffer');
        local.child_process = require('child_process');
        local.cluster = require('cluster');
        local.console = require('console');
        local.constants = require('constants');
        local.crypto = require('crypto');
        local.dgram = require('dgram');
        local.dns = require('dns');
        local.domain = require('domain');
        local.events = require('events');
        local.fs = require('fs');
        local.http = require('http');
        local.https = require('https');
        local.module = require('module');
        local.net = require('net');
        local.os = require('os');
        local.path = require('path');
        local.process = require('process');
        local.punycode = require('punycode');
        local.querystring = require('querystring');
        local.readline = require('readline');
        local.repl = require('repl');
        local.stream = require('stream');
        local.string_decoder = require('string_decoder');
        local.timers = require('timers');
        local.tls = require('tls');
        local.tty = require('tty');
        local.url = require('url');
        local.util = require('util');
        local.v8 = require('v8');
        local.vm = require('vm');
        local.zlib = require('zlib');
/* validateLineSortedReset */
        // init assets
        local.assetsDict = local.assetsDict || {};
        /* jslint-ignore-begin */
        local.assetsDict['/assets.index.template.html'] = '\
<!doctype html>\n\
<html lang="en">\n\
<head>\n\
<meta charset="UTF-8">\n\
<meta name="viewport" content="width=device-width, initial-scale=1">\n\
<!-- "assets.index.default.template.html" -->\n\
<title>{{env.npm_package_name}} (v{{env.npm_package_version}})</title>\n\
<style>\n\
/* jslint-utility2 */\n\
/*csslint\n\
*/\n\
/* jslint-ignore-begin */\n\
*,\n\
*:after,\n\
*:before {\n\
    box-sizing: border-box;\n\
}\n\
/* jslint-ignore-end */\n\
@keyframes uiAnimateShake {\n\
    0%, 50% {\n\
        transform: translateX(10px);\n\
    }\n\
    25%, 75% {\n\
        transform: translateX(-10px);\n\
    }\n\
    100% {\n\
        transform: translateX(0);\n\
    }\n\
}\n\
@keyframes uiAnimateSpin {\n\
    0% {\n\
        transform: rotate(0deg);\n\
    }\n\
    100% {\n\
        transform: rotate(360deg);\n\
    }\n\
}\n\
a {\n\
    overflow-wrap: break-word;\n\
}\n\
body > div,\n\
body > pre,\n\
body > textarea,\n\
body > .button {\n\
    margin-bottom: 20px;\n\
}\n\
body > textarea {\n\
    height: 10rem;\n\
    width: 100%;\n\
}\n\
body > textarea[readonly] {\n\
    background: #ddd;\n\
}\n\
body > .button {\n\
    width: 20rem;\n\
}\n\
code,\n\
pre,\n\
textarea {\n\
    font-family: Consolas, Menlo, monospace;\n\
    font-size: small;\n\
}\n\
pre {\n\
    overflow-wrap: break-word;\n\
    white-space: pre-wrap;\n\
}\n\
textarea {\n\
    overflow: auto;\n\
    white-space: pre;\n\
}\n\
.button {\n\
    background-color: #fff;\n\
    border: 1px solid;\n\
    border-bottom-color: rgb(186, 186, 186);\n\
    border-left-color: rgb(209, 209, 209);\n\
    border-radius: 4px;\n\
    border-right-color: rgb(209, 209, 209);\n\
    border-top-color: rgb(216, 216, 216);\n\
    color: #00d;\n\
    cursor: pointer;\n\
    display: inline-block;\n\
    font-family: Arial, Helvetica, sans-serif;\n\
    font-size: 12px;\n\
    font-style: normal;\n\
    font-weight: normal;\n\
    margin: 0;\n\
    padding: 2px 7px 3px 7px;\n\
    text-align: center;\n\
    text-decoration: underline;\n\
}\n\
.colorError {\n\
    color: #d00;\n\
}\n\
.uiAnimateShake {\n\
    animation-duration: 500ms;\n\
    animation-name: uiAnimateShake;\n\
}\n\
.uiAnimateSlide {\n\
    overflow-y: hidden;\n\
    transition: max-height ease-in 250ms, min-height ease-in 250ms, padding-bottom ease-in 250ms, padding-top ease-in 250ms;\n\
}\n\
.utility2FooterDiv {\n\
    text-align: center;\n\
}\n\
.zeroPixel {\n\
    border: 0;\n\
    height: 0;\n\
    margin: 0;\n\
    padding: 0;\n\
    width: 0;\n\
}\n\
</style>\n\
</head>\n\
<body style="background: #eef; font-family: Arial, Helvetica, sans-serif; margin: 0 40px;">\n\
<div id="ajaxProgressDiv1" style="background: #d00; height: 2px; left: 0; margin: 0; padding: 0; position: fixed; top: 0; transition: background 500ms, width 1500ms; width: 0%; z-index: 1;"></div>\n\
<div class="uiAnimateSpin" style="animation: uiAnimateSpin 2s linear infinite; border: 5px solid #999; border-radius: 50%; border-top: 5px solid #7d7; display: none; height: 25px; vertical-align: middle; width: 25px;"></div>\n\
<code style="display: none;"></code><div class="button colorError uiAnimateShake uiAnimateSlide utility2FooterDiv zeroPixel" style="display: none;"></div><pre style="display: none;"></pre><textarea readonly style="display: none;"></textarea>\n\
<script>\n\
/* jslint-utility2 */\n\
/*jslint\n\
    bitwise: true,\n\
    browser: true,\n\
    maxerr: 4,\n\
    maxlen: 100,\n\
    node: true,\n\
    nomen: true,\n\
    regexp: true,\n\
    stupid: true\n\
*/\n\
(function () {\n\
    "use strict";\n\
    var ajaxProgressDiv1,\n\
        ajaxProgressState,\n\
        ajaxProgressUpdate,\n\
        timerIntervalAjaxProgressUpdate;\n\
    ajaxProgressDiv1 = document.querySelector("#ajaxProgressDiv1");\n\
    setTimeout(function () {\n\
        ajaxProgressDiv1.style.width = "25%";\n\
    });\n\
    ajaxProgressState = 0;\n\
    ajaxProgressUpdate = (window.local &&\n\
        window.local.ajaxProgressUpdate) || function () {\n\
        ajaxProgressDiv1.style.width = "100%";\n\
        setTimeout(function () {\n\
            ajaxProgressDiv1.style.background = "transparent";\n\
            setTimeout(function () {\n\
                ajaxProgressDiv1.style.width = "0%";\n\
            }, 500);\n\
        }, 1500);\n\
    };\n\
    timerIntervalAjaxProgressUpdate = setInterval(function () {\n\
        ajaxProgressState += 1;\n\
        ajaxProgressDiv1.style.width = Math.max(\n\
            100 - 75 * Math.exp(-0.125 * ajaxProgressState),\n\
            Number(ajaxProgressDiv1.style.width.slice(0, -1)) || 0\n\
        ) + "%";\n\
    }, 1000);\n\
    window.addEventListener("load", function () {\n\
        clearInterval(timerIntervalAjaxProgressUpdate);\n\
        ajaxProgressUpdate();\n\
    });\n\
}());\n\
</script>\n\
<h1>\n\
<!-- utility2-comment\n\
    <a\n\
        {{#if env.npm_package_homepage}}\n\
        href="{{env.npm_package_homepage}}"\n\
        {{/if env.npm_package_homepage}}\n\
        target="_blank"\n\
    >\n\
utility2-comment -->\n\
        {{env.npm_package_name}} (v{{env.npm_package_version}})\n\
<!-- utility2-comment\n\
    </a>\n\
utility2-comment -->\n\
</h1>\n\
<h3>{{env.npm_package_description}}</h3>\n\
<!-- utility2-comment\n\
<a class="button" download href="assets.app.js">download standalone app</a><br>\n\
<button class="button onclick onreset" id="testRunButton2">run internal test</button><br>\n\
utility2-comment -->\n\
\n\
\n\
\n\
<label>edit or paste script below to cover and test</label>\n\
<textarea class="oneval onkeyup onreset" id="inputTextareaEval1">\n\
// remove comment below to disable jslint\n\
/*jslint\n\
    browser: true,\n\
    es6: true\n\
*/\n\
/*global window*/\n\
(function () {\n\
    "use strict";\n\
    var testCaseDict;\n\
    testCaseDict = {};\n\
    testCaseDict.modeTest = true;\n\
\n\
    // comment this testCase to disable the failed assertion demo\n\
    testCaseDict.testCase_failed_assertion_demo = function (options, onError) {\n\
    /*\n\
     * this function will demo a failed assertion test\n\
     */\n\
        // jslint-hack\n\
        window.utility2.nop(options);\n\
        window.utility2.assert(false, "this is a failed assertion demo");\n\
        onError();\n\
    };\n\
\n\
    testCaseDict.testCase_passed_ajax_demo = function (options, onError) {\n\
    /*\n\
     * this function will demo a passed ajax test\n\
     */\n\
        var data;\n\
        options = {url: "/"};\n\
        // test ajax request for main-page "/"\n\
        window.utility2.ajax(options, function (error, xhr) {\n\
            try {\n\
                // validate no error occurred\n\
                window.utility2.assert(!error, error);\n\
                // validate "200 ok" status\n\
                window.utility2.assert(xhr.statusCode === 200, xhr.statusCode);\n\
                // validate non-empty data\n\
                data = xhr.responseText;\n\
                window.utility2.assert(data && data.length > 0, data);\n\
                onError();\n\
            } catch (errorCaught) {\n\
                onError(errorCaught);\n\
            }\n\
        });\n\
    };\n\
\n\
    window.utility2.testRunDefault(testCaseDict);\n\
}());\n\
</textarea>\n\
<pre id="outputPreJsonStringify1" tabindex="0"></pre>\n\
<pre class= "colorError" id="outputPreJslint1" tabindex="0"></pre>\n\
<label>instrumented-code</label>\n\
<textarea class="resettable" id="outputTextarea1" readonly></textarea>\n\
<label>stderr and stdout</label>\n\
<textarea class="resettable" id="outputTextareaStdout1" readonly></textarea>\n\
<div class="resettable" id="testReportDiv1"></div>\n\
<div class="resettable" id="coverageReportDiv1"></div>\n\
<!-- utility2-comment\n\
{{#if isRollup}}\n\
<script src="assets.app.js"></script>\n\
{{#unless isRollup}}\n\
utility2-comment -->\n\
<script src="assets.utility2.lib.istanbul.js"></script>\n\
<script src="assets.utility2.lib.jslint.js"></script>\n\
<script src="assets.utility2.lib.db.js"></script>\n\
<script src="assets.utility2.lib.marked.js"></script>\n\
<script src="assets.utility2.lib.sjcl.js"></script>\n\
<script src="assets.utility2.lib.uglifyjs.js"></script>\n\
<script src="assets.utility2.js"></script>\n\
<script>window.utility2.onResetBefore.counter += 1;</script>\n\
<script src="jsonp.utility2.stateInit?callback=window.utility2.stateInit"></script>\n\
<script src="assets.example.js"></script>\n\
<script src="assets.test.js"></script>\n\
<script>window.utility2.onResetBefore();</script>\n\
<!-- utility2-comment\n\
{{/if isRollup}}\n\
utility2-comment -->\n\
<div class="utility2FooterDiv">\n\
    [ this app was created with\n\
    <a href="https://github.com/kaizhu256/node-utility2" target="_blank">utility2</a>\n\
    ]\n\
</div>\n\
</body>\n\
</html>\n\
';
        /* jslint-ignore-end */
        [
            'assets.index.css',
            'assets.index.template.html',
            'assets.swgg.swagger.json',
            'assets.swgg.swagger.server.json'
        ].forEach(function (file) {
            file = '/' + file;
            local.assetsDict[file] = local.assetsDict[file] || '';
            if (local.fs.existsSync(local.__dirname + file)) {
                local.assetsDict[file] = local.fs.readFileSync(
                    local.__dirname + file,
                    'utf8'
                );
            }
        });
/* validateLineSortedReset */
        // bug-workaround - long $npm_package_buildCustomOrg
        /* jslint-ignore-begin */
        local.assetsDict['/assets.utility2.js'] = local.assetsDict['/assets.utility2.js'] ||
            local.fs.readFileSync(local.__dirname + '/lib.utility2.js', 'utf8'
        ).replace((/^#!/), '//');
/* validateLineSortedReset */
        local.assetsDict['/'] =
            local.assetsDict['/assets.example.html'] =
            local.assetsDict['/assets.index.template.html']
            .replace((/\{\{env\.(\w+?)\}\}/g), function (match0, match1) {
                switch (match1) {
                case 'npm_package_description':
                    return 'the greatest app in the world!';
                case 'npm_package_name':
                    return 'utility2';
                case 'npm_package_nameLib':
                    return 'utility2';
                case 'npm_package_version':
                    return '0.0.1';
                default:
                    return match0;
                }
            });
        // init cli
        if (module !== require.main || local.global.utility2_rollup) {
            break;
        }
        local.assetsDict['/assets.example.js'] =
            local.assetsDict['/assets.example.js'] ||
            local.fs.readFileSync(__filename, 'utf8');
        /* jslint-ignore-end */
        local.assetsDict['/favicon.ico'] = local.assetsDict['/favicon.ico'] || '';
        // if $npm_config_timeout_exit exists,
        // then exit this process after $npm_config_timeout_exit ms
        if (Number(process.env.npm_config_timeout_exit)) {
            setTimeout(process.exit, Number(process.env.npm_config_timeout_exit));
        }
        // start server
        if (local.global.utility2_serverHttp1) {
            break;
        }
        process.env.PORT = process.env.PORT || '8081';
        console.error('server starting on port ' + process.env.PORT);
        local.http.createServer(function (request, response) {
            request.urlParsed = local.url.parse(request.url);
            if (local.assetsDict[request.urlParsed.pathname] !== undefined) {
                response.end(local.assetsDict[request.urlParsed.pathname]);
                return;
            }
            response.statusCode = 404;
            response.end();
        }).listen(process.env.PORT);
        break;
    }
}());
```

#### output from browser
[![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.testExampleJs.browser.%252F.png)](https://kaizhu256.github.io/node-utility2/build/app/assets.example.html)

#### output from shell
![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.testExampleJs.svg)



# extra screenshots
1. [https://kaizhu256.github.io/node-utility2/build/screenshot.buildCi.browser.%252Ftmp%252Fbuild%252Fapidoc.html.png](https://kaizhu256.github.io/node-utility2/build/screenshot.buildCi.browser.%252Ftmp%252Fbuild%252Fapidoc.html.png)
[![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.buildCi.browser.%252Ftmp%252Fbuild%252Fapidoc.html.png)](https://kaizhu256.github.io/node-utility2/build/screenshot.buildCi.browser.%252Ftmp%252Fbuild%252Fapidoc.html.png)

1. [https://kaizhu256.github.io/node-utility2/build/screenshot.buildCi.browser.%252Ftmp%252Fbuild%252Fcoverage.lib.html.png](https://kaizhu256.github.io/node-utility2/build/screenshot.buildCi.browser.%252Ftmp%252Fbuild%252Fcoverage.lib.html.png)
[![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.buildCi.browser.%252Ftmp%252Fbuild%252Fcoverage.lib.html.png)](https://kaizhu256.github.io/node-utility2/build/screenshot.buildCi.browser.%252Ftmp%252Fbuild%252Fcoverage.lib.html.png)

1. [https://kaizhu256.github.io/node-utility2/build/screenshot.buildCi.browser.%252Ftmp%252Fbuild%252Ftest-report.html.png](https://kaizhu256.github.io/node-utility2/build/screenshot.buildCi.browser.%252Ftmp%252Fbuild%252Ftest-report.html.png)
[![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.buildCi.browser.%252Ftmp%252Fbuild%252Ftest-report.html.png)](https://kaizhu256.github.io/node-utility2/build/screenshot.buildCi.browser.%252Ftmp%252Fbuild%252Ftest-report.html.png)

1. [https://kaizhu256.github.io/node-utility2/build/screenshot.deployGithub.browser.%252Fnode-utility2%252Fbuild%252Fapp%252Fassets.swgg.html.png](https://kaizhu256.github.io/node-utility2/build/screenshot.deployGithub.browser.%252Fnode-utility2%252Fbuild%252Fapp%252Fassets.swgg.html.png)
[![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.deployGithub.browser.%252Fnode-utility2%252Fbuild%252Fapp%252Fassets.swgg.html.png)](https://kaizhu256.github.io/node-utility2/build/screenshot.deployGithub.browser.%252Fnode-utility2%252Fbuild%252Fapp%252Fassets.swgg.html.png)

1. [https://kaizhu256.github.io/node-utility2/build/screenshot.deployGithub.browser.%252Fnode-utility2%252Fbuild%252Fapp.png](https://kaizhu256.github.io/node-utility2/build/screenshot.deployGithub.browser.%252Fnode-utility2%252Fbuild%252Fapp.png)
[![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.deployGithub.browser.%252Fnode-utility2%252Fbuild%252Fapp.png)](https://kaizhu256.github.io/node-utility2/build/screenshot.deployGithub.browser.%252Fnode-utility2%252Fbuild%252Fapp.png)

1. [https://kaizhu256.github.io/node-utility2/build/screenshot.deployGithubTest.browser.%252Fnode-utility2%252Fbuild%252Fapp.png](https://kaizhu256.github.io/node-utility2/build/screenshot.deployGithubTest.browser.%252Fnode-utility2%252Fbuild%252Fapp.png)
[![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.deployGithubTest.browser.%252Fnode-utility2%252Fbuild%252Fapp.png)](https://kaizhu256.github.io/node-utility2/build/screenshot.deployGithubTest.browser.%252Fnode-utility2%252Fbuild%252Fapp.png)

1. [https://kaizhu256.github.io/node-utility2/build/screenshot.deployHeroku.browser.%252Fassets.swgg.html.png](https://kaizhu256.github.io/node-utility2/build/screenshot.deployHeroku.browser.%252Fassets.swgg.html.png)
[![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.deployHeroku.browser.%252Fassets.swgg.html.png)](https://kaizhu256.github.io/node-utility2/build/screenshot.deployHeroku.browser.%252Fassets.swgg.html.png)

1. [https://kaizhu256.github.io/node-utility2/build/screenshot.deployHeroku.browser.%252F.png](https://kaizhu256.github.io/node-utility2/build/screenshot.deployHeroku.browser.%252F.png)
[![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.deployHeroku.browser.%252F.png)](https://kaizhu256.github.io/node-utility2/build/screenshot.deployHeroku.browser.%252F.png)

1. [https://kaizhu256.github.io/node-utility2/build/screenshot.deployHerokuTest.browser.%252F.png](https://kaizhu256.github.io/node-utility2/build/screenshot.deployHerokuTest.browser.%252F.png)
[![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.deployHerokuTest.browser.%252F.png)](https://kaizhu256.github.io/node-utility2/build/screenshot.deployHerokuTest.browser.%252F.png)

1. [https://kaizhu256.github.io/node-utility2/build/screenshot.npmTest.browser.%252F.png](https://kaizhu256.github.io/node-utility2/build/screenshot.npmTest.browser.%252F.png)
[![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.npmTest.browser.%252F.png)](https://kaizhu256.github.io/node-utility2/build/screenshot.npmTest.browser.%252F.png)

1. [https://kaizhu256.github.io/node-utility2/build/screenshot.testExampleJs.browser.%252F.png](https://kaizhu256.github.io/node-utility2/build/screenshot.testExampleJs.browser.%252F.png)
[![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.testExampleJs.browser.%252F.png)](https://kaizhu256.github.io/node-utility2/build/screenshot.testExampleJs.browser.%252F.png)

1. [https://kaizhu256.github.io/node-utility2/build/screenshot.testExampleSh.browser.%252F.png](https://kaizhu256.github.io/node-utility2/build/screenshot.testExampleSh.browser.%252F.png)
[![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.testExampleSh.browser.%252F.png)](https://kaizhu256.github.io/node-utility2/build/screenshot.testExampleSh.browser.%252F.png)



# package.json
```json
{
    "author": "kai zhu <kaizhu256@gmail.com>",
    "bin": {
        "utility2": "lib.utility2.sh",
        "utility2-apidoc": "lib.apidoc.js",
        "utility2-db": "lib.db.js",
        "utility2-github-crud": "lib.github_crud.js",
        "utility2-istanbul": "lib.istanbul.js",
        "utility2-jslint": "lib.jslint.js",
        "utility2-uglifyjs": "lib.uglifyjs.js"
    },
    "description": "the zero-dependency, swiss-army-knife utility for building, testing, and deploying webapps",
    "devDependencies": {
        "electron-lite": "kaizhu256/node-electron-lite#alpha"
    },
    "engines": {
        "node": ">=4.0"
    },
    "homepage": "https://github.com/kaizhu256/node-utility2",
    "keywords": [
        "continuous-integration",
        "npmdoc",
        "npmtest",
        "test-coverage",
        "travis-ci"
    ],
    "license": "MIT",
    "main": "lib.utility2.js",
    "name": "utility2",
    "nameAliasPublish": "npmtest-lite npmclassic npmtest4 test-lite",
    "nameLib": "utility2",
    "nameOriginal": "utility2",
    "os": [
        "darwin",
        "linux"
    ],
    "repository": {
        "type": "git",
        "url": "https://github.com/kaizhu256/node-utility2.git"
    },
    "scripts": {
        "apidocRawCreate": "[ ! -f npm_scripts.sh ] || ./npm_scripts.sh shNpmScriptApidocRawCreate",
        "apidocRawFetch": "[ ! -f npm_scripts.sh ] || ./npm_scripts.sh shNpmScriptApidocRawFetch",
        "build-ci": "./lib.utility2.sh shReadmeTest build_ci.sh",
        "env": "env",
        "heroku-postbuild": "./lib.utility2.sh shDeployHeroku",
        "postinstall": "[ ! -f npm_scripts.sh ] || ./npm_scripts.sh shNpmScriptPostinstall",
        "start": "set -e; export PORT=${PORT:-8080}; if [ -f assets.app.js ]; then node assets.app.js; else npm_config_mode_auto_restart=1 ./lib.utility2.sh shRun shIstanbulCover test.js; fi",
        "test": "PORT=$(./lib.utility2.sh shServerPortRandom) PORT_REPL=$(./lib.utility2.sh shServerPortRandom) npm_config_mode_auto_restart=1 npm_config_mode_test_utility2=1 ./lib.utility2.sh test test.js"
    },
    "version": "2018.4.8-alpha"
}
```



# changelog of last 50 commits
[![screenshot](https://kaizhu256.github.io/node-utility2/build/screenshot.gitLog.svg)](https://github.com/kaizhu256/node-utility2/commits)



# internal build script
- Dockerfile.base
```shell
# Dockerfile.base
# docker build -f tmp/README.Dockerfile.base -t kaizhu256/node-utility2:base .
# docker build -f "tmp/README.Dockerfile.$DOCKER_TAG" -t "$GITHUB_REPO:$DOCKER_TAG" .
# https://hub.docker.com/_/node/
FROM debian:stable-slim
MAINTAINER kai zhu <kaizhu256@gmail.com>
VOLUME [ \
  "/mnt", \
  "/root", \
  "/tmp", \
  "/usr/share/doc", \
  "/usr/share/man", \
  "/var/cache", \
  "/var/lib/apt", \
  "/var/log", \
  "/var/tmp" \
]
WORKDIR /tmp
# install nodejs
# https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
RUN (set -e; \
    export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    apt-get install --no-install-recommends -y \
        apt-utils \
        busybox \
        ca-certificates \
        curl \
        gnupg; \
    (busybox --list | xargs -n1 /bin/sh -c 'ln -s /bin/busybox /bin/$0 2>/dev/null' || true); \
    curl -#L https://deb.nodesource.com/setup_8.x | /bin/bash -; \
    apt-get install -y nodejs; \
)
# install sqlite3
RUN (set -e; \
    export DEBIAN_FRONTEND=noninteractive; \
    npm install sqlite3@3.1.8; \
    cp -a node_modules /; \
)
# install electron-lite
# COPY electron-*.zip /tmp
# libasound.so.2: cannot open shared object file: No such file or directory
# libgconf-2.so.4: cannot open shared object file: No such file or directory
# libgtk-x11-2.0.so.0: cannot open shared object file: No such file or directory
# libnss3.so: cannot open shared object file: No such file or directory
# libXss.so.1: cannot open shared object file: No such file or directory
# libXtst.so.6: cannot open shared object file: No such file or directory
RUN (set -e; \
    export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    apt-get install --no-install-recommends -y \
        git \
        libasound2 \
        libgconf-2-4 \
        libgtk2.0-0 \
        libnss3 \
        libxss1 \
        libxtst6 \
        xvfb; \
    rm -f /tmp/.X99-lock && export DISPLAY=:99.0 && (Xvfb "$DISPLAY" &); \
    npm install kaizhu256/node-electron-lite#alpha; \
    mv node_modules/electron-lite/external /opt/electron; \
    ln -s /opt/electron/electron /bin/electron; \
    cd node_modules/electron-lite; \
    npm install; \
    npm test; \
)
# install extra
RUN (set -e; \
    export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    apt-get install --no-install-recommends -y \
        nginx-extras \
        transmission-daemon \
        ssh \
        vim \
        wget; \
)
```

- Dockerfile.electron
```shell
# Dockerfile.electron
FROM kaizhu256/node-utility2:latest
MAINTAINER kai zhu <kaizhu256@gmail.com>
# install electron-lite
RUN (set -e; \
    export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    apt-get install --no-install-recommends -y \
        libnotify-dev; \
    for ELECTRON_VERSION in \
        v0.24.0 \
        v0.25.1 \
        v0.26.1 \
        v0.27.1 \
        v0.28.1 \
        v0.29.1 \
        v0.30.1 \
        v0.31.1 \
        v0.32.1 \
        v0.33.1 \
        v0.34.1 \
        v0.35.1 \
        v0.36.1 \
        v0.37.1 \
        v1.0.1 \
        v1.1.1 \
        v1.2.1 \
        v1.3.1 \
        v1.4.1 \
        v1.5.1 \
        v1.6.1 \
        v1.7.1; \
        v1.8.1; \
    do \
        npm install kaizhu256/node-electron-lite#alpha \
            --electron-version="$ELECTRON_VERSION"; \
        mv node_modules/electron-lite/external "/opt/electron-$ELECTRON_VERSION"; \
        ln -s "/opt/electron-$ELECTRON_VERSION/electron" "/bin/electron-$ELECTRON_VERSION"; \
        if [ "$ELECTRON_VERSION" \>= 0.35.0 ]; \
        then \
            cd node_modules/electron-lite; \
            npm install; \
            npm test; \
        fi; \
        cd /tmp; \
    done; \
    mv electron-v*.zip /; \
)
```

- Dockerfile.latest
```shell
# Dockerfile.latest
FROM kaizhu256/node-utility2:base
MAINTAINER kai zhu <kaizhu256@gmail.com>
# install utility2
RUN (set -e; \
    export DEBIAN_FRONTEND=noninteractive; \
    rm -f /tmp/.X99-lock && export DISPLAY=:99.0 && (Xvfb "$DISPLAY" &); \
    npm install kaizhu256/node-utility2#alpha; \
    cp -a node_modules /; \
    cd node_modules/utility2; \
    npm install; \
    npm test; \
)
# install elasticsearch-lite
RUN (set -e; \
    export DEBIAN_FRONTEND=noninteractive; \
    mkdir -p /usr/share/man/man1; \
    apt-get update; \
    apt-get install --no-install-recommends -y \
        default-jre; \
    rm -f /tmp/.X99-lock && export DISPLAY=:99.0 && (Xvfb "$DISPLAY" &); \
    npm install kaizhu256/node-elasticsearch-lite#alpha; \
    cp -a node_modules /; \
    cd node_modules/elasticsearch-lite; \
    npm install; \
    npm test; \
)
```

- Dockerfile.tmp
```shell
# Dockerfile.tmp
FROM kaizhu256/node-utility2:base
MAINTAINER kai zhu <kaizhu256@gmail.com>
# install extra
RUN (set -e; \
    export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    apt-get install --no-install-recommends -y \
        aptitude \
        cmake \
        g++ \
        make; \
)
# install binaryen
RUN (set -e; \
    export DEBIAN_FRONTEND=noninteractive; \
    git clone https://github.com/WebAssembly/binaryen.git \
        --branch version_31 \
        --depth 1; \
    cd binaryen; \
    cmake .; \
    make; \
    mv bin /opt/binaryen; \
)
```

- build_ci.sh
```shell
# build_ci.sh

# this shell script will run the build for this package

shBuildCiAfter () {(set -e
    #// coverage-hack - test comment handling-behavior
    # shDeployCustom
    shDeployGithub
    shDeployHeroku
    shReadmeTest example.sh
    # restore $CI_BRANCH
    export CI_BRANCH="$CI_BRANCH_OLD"
    # docker build
    docker --version 2>/dev/null || return
    export DOCKER_TAG="$(printf "$CI_BRANCH" | sed -e "s/docker.//")"
    # if $DOCKER_TAG is not unique from $CI_BRANCH, then return
    if [ "$DOCKER_TAG" = "$CI_BRANCH" ]
    then
        return
    fi
    # docker build
    docker build -f "tmp/README.Dockerfile.$DOCKER_TAG" -t "$GITHUB_REPO:$DOCKER_TAG" .
    # docker test
    case "$CI_BRANCH" in
    docker.base)
        # npm test utility2
        for PACKAGE in utility2 "kaizhu256/node-utility2#alpha"
        do
            docker run "$GITHUB_REPO:$DOCKER_TAG" /bin/sh -c "set -e
                curl -Ls https://raw.githubusercontent.com\
/kaizhu256/node-utility2/alpha/lib.utility2.sh > /tmp/lib.utility2.sh
                . /tmp/lib.utility2.sh
                npm install '$PACKAGE'
                cd node_modules/utility2
                shBuildInsideDocker
"
        done
        ;;
    esac
    # https://docs.travis-ci.com/user/docker/#Pushing-a-Docker-Image-to-a-Registry
    # docker push
    if [ "$DOCKER_PASSWORD" ]
    then
        docker login -p="$DOCKER_PASSWORD" -u="$DOCKER_USERNAME"
        docker push "$GITHUB_REPO:$DOCKER_TAG"
    fi
)}

shBuildCiBefore () {(set -e
    shNpmTestPublished
    shReadmeTest example.js
    # screenshot
    MODE_BUILD=testExampleJs shBrowserTest "
/tmp/app/tmp/build/coverage.html/app/example.js.html
tmp/build/test-report.html
" screenshot
)}

# run shBuildCi
. ./lib.utility2.sh
shBuildCi
```



# misc
- this package was created with [utility2](https://github.com/kaizhu256/node-utility2)
