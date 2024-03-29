#!/usr/bin/env node
/* istanbul instrument in package sandbox2 */
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
    /* istanbul ignore next */
    (function () {
        // init debug_inline
        (function () {
            var consoleError, context, key;
            context = (typeof window === "object" && window) || global;
            key = "debug_inline".replace("_i", "I");
            if (context[key]) {
                return;
            }
            consoleError = console.error;
            context[key] = function (arg0) {
            /*
             * this function will both print arg0 to stderr and return it
             */
                // debug arguments
                context["_" + key + "Arguments"] = arguments;
                consoleError("\n\n" + key);
                consoleError.apply(console, arguments);
                consoleError("\n");
                // return arg0 for inspection
                return arg0;
            };
        }());
        // init local
        local = {};
        // init modeJs
        (function () {
            try {
                local.modeJs = typeof process.versions.node === 'string' &&
                    typeof require('http').createServer === 'function' &&
                    'node';
            } catch (ignore) {
            }
            local.modeJs = local.modeJs || 'browser';
        }());
        // init global
        local.global = local.modeJs === 'browser'
            ? window
            : global;
        // re-init local
        local = local.global.utility2_rollup ||
            // local.global.utility2_rollup_old || require('./assets.utility2.rollup.js') ||
            local;
        // init nop
        local.nop = function () {
        /*
         * this function will do nothing
         */
            return;
        };
        // init exports
        if (local.modeJs === 'browser') {
            local.global.utility2_sandbox2 = local;
        } else {
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
            module.exports = local;
            module.exports.__dirname = __dirname;
        }
        // init lib main
        local.local = local.sandbox2 = local;



        /* validateLineSortedReset */
        return;
    }());
}());
