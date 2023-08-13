(function webpackUniversalModuleDefinition(root, factory) {
	if(typeof exports === 'object' && typeof module === 'object')
		module.exports = factory();
	else if(typeof define === 'function' && define.amd)
		define("tdlib", [], factory);
	else if(typeof exports === 'object')
		exports["tdlib"] = factory();
	else
		root["tdlib"] = factory();
})(this, function() {
return /******/ (function(modules) { // webpackBootstrap
/******/ 	// install a JSONP callback for chunk loading
/******/ 	function webpackJsonpCallback(data) {
/******/ 		var chunkIds = data[0];
/******/ 		var moreModules = data[1];
/******/
/******/
/******/ 		// add "moreModules" to the modules object,
/******/ 		// then flag all "chunkIds" as loaded and fire callback
/******/ 		var moduleId, chunkId, i = 0, resolves = [];
/******/ 		for(;i < chunkIds.length; i++) {
/******/ 			chunkId = chunkIds[i];
/******/ 			if(Object.prototype.hasOwnProperty.call(installedChunks, chunkId) && installedChunks[chunkId]) {
/******/ 				resolves.push(installedChunks[chunkId][0]);
/******/ 			}
/******/ 			installedChunks[chunkId] = 0;
/******/ 		}
/******/ 		for(moduleId in moreModules) {
/******/ 			if(Object.prototype.hasOwnProperty.call(moreModules, moduleId)) {
/******/ 				modules[moduleId] = moreModules[moduleId];
/******/ 			}
/******/ 		}
/******/ 		if(parentJsonpFunction) parentJsonpFunction(data);
/******/
/******/ 		while(resolves.length) {
/******/ 			resolves.shift()();
/******/ 		}
/******/
/******/ 	};
/******/
/******/
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// object to store loaded and loading chunks
/******/ 	// undefined = chunk not loaded, null = chunk preloaded/prefetched
/******/ 	// Promise = chunk loading, 0 = chunk loaded
/******/ 	var installedChunks = {
/******/ 		0: 0
/******/ 	};
/******/
/******/
/******/
/******/ 	// script path function
/******/ 	function jsonpScriptSrc(chunkId) {
/******/ 		return __webpack_require__.p + "" + chunkId + ".tdlib.js"
/******/ 	}
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/ 	// This file contains only the entry chunk.
/******/ 	// The chunk loading function for additional chunks
/******/ 	__webpack_require__.e = function requireEnsure(chunkId) {
/******/ 		var promises = [];
/******/
/******/
/******/ 		// JSONP chunk loading for javascript
/******/
/******/ 		var installedChunkData = installedChunks[chunkId];
/******/ 		if(installedChunkData !== 0) { // 0 means "already installed".
/******/
/******/ 			// a Promise means "currently loading".
/******/ 			if(installedChunkData) {
/******/ 				promises.push(installedChunkData[2]);
/******/ 			} else {
/******/ 				// setup Promise in chunk cache
/******/ 				var promise = new Promise(function(resolve, reject) {
/******/ 					installedChunkData = installedChunks[chunkId] = [resolve, reject];
/******/ 				});
/******/ 				promises.push(installedChunkData[2] = promise);
/******/
/******/ 				// start chunk loading
/******/ 				var script = document.createElement('script');
/******/ 				var onScriptComplete;
/******/
/******/ 				script.charset = 'utf-8';
/******/ 				script.timeout = 120;
/******/ 				if (__webpack_require__.nc) {
/******/ 					script.setAttribute("nonce", __webpack_require__.nc);
/******/ 				}
/******/ 				script.src = jsonpScriptSrc(chunkId);
/******/
/******/ 				// create error before stack unwound to get useful stacktrace later
/******/ 				var error = new Error();
/******/ 				onScriptComplete = function (event) {
/******/ 					// avoid mem leaks in IE.
/******/ 					script.onerror = script.onload = null;
/******/ 					clearTimeout(timeout);
/******/ 					var chunk = installedChunks[chunkId];
/******/ 					if(chunk !== 0) {
/******/ 						if(chunk) {
/******/ 							var errorType = event && (event.type === 'load' ? 'missing' : event.type);
/******/ 							var realSrc = event && event.target && event.target.src;
/******/ 							error.message = 'Loading chunk ' + chunkId + ' failed.\n(' + errorType + ': ' + realSrc + ')';
/******/ 							error.name = 'ChunkLoadError';
/******/ 							error.type = errorType;
/******/ 							error.request = realSrc;
/******/ 							chunk[1](error);
/******/ 						}
/******/ 						installedChunks[chunkId] = undefined;
/******/ 					}
/******/ 				};
/******/ 				var timeout = setTimeout(function(){
/******/ 					onScriptComplete({ type: 'timeout', target: script });
/******/ 				}, 120000);
/******/ 				script.onerror = script.onload = onScriptComplete;
/******/ 				document.head.appendChild(script);
/******/ 			}
/******/ 		}
/******/ 		return Promise.all(promises);
/******/ 	};
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// on error function for async loading
/******/ 	__webpack_require__.oe = function(err) { console.error(err); throw err; };
/******/
/******/ 	var jsonpArray = this["webpackJsonptdlib"] = this["webpackJsonptdlib"] || [];
/******/ 	var oldJsonpFunction = jsonpArray.push.bind(jsonpArray);
/******/ 	jsonpArray.push = webpackJsonpCallback;
/******/ 	jsonpArray = jsonpArray.slice();
/******/ 	for(var i = 0; i < jsonpArray.length; i++) webpackJsonpCallback(jsonpArray[i]);
/******/ 	var parentJsonpFunction = oldJsonpFunction;
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 7);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(8);


/***/ }),
/* 1 */
/***/ (function(module, exports) {

function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) {
  try {
    var info = gen[key](arg);
    var value = info.value;
  } catch (error) {
    reject(error);
    return;
  }

  if (info.done) {
    resolve(value);
  } else {
    Promise.resolve(value).then(_next, _throw);
  }
}

function _asyncToGenerator(fn) {
  return function () {
    var self = this,
        args = arguments;
    return new Promise(function (resolve, reject) {
      var gen = fn.apply(self, args);

      function _next(value) {
        asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value);
      }

      function _throw(err) {
        asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err);
      }

      _next(undefined);
    });
  };
}

module.exports = _asyncToGenerator;

/***/ }),
/* 2 */
/***/ (function(module, exports) {

function _defineProperties(target, props) {
  for (var i = 0; i < props.length; i++) {
    var descriptor = props[i];
    descriptor.enumerable = descriptor.enumerable || false;
    descriptor.configurable = true;
    if ("value" in descriptor) descriptor.writable = true;
    Object.defineProperty(target, descriptor.key, descriptor);
  }
}

function _createClass(Constructor, protoProps, staticProps) {
  if (protoProps) _defineProperties(Constructor.prototype, protoProps);
  if (staticProps) _defineProperties(Constructor, staticProps);
  return Constructor;
}

module.exports = _createClass;

/***/ }),
/* 3 */
/***/ (function(module, exports) {

function _classCallCheck(instance, Constructor) {
  if (!(instance instanceof Constructor)) {
    throw new TypeError("Cannot call a class as a function");
  }
}

module.exports = _classCallCheck;

/***/ }),
/* 4 */
/***/ (function(module, exports) {

function _typeof2(obj) { if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") { _typeof2 = function _typeof2(obj) { return typeof obj; }; } else { _typeof2 = function _typeof2(obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }; } return _typeof2(obj); }

function _typeof(obj) {
  if (typeof Symbol === "function" && _typeof2(Symbol.iterator) === "symbol") {
    module.exports = _typeof = function _typeof(obj) {
      return _typeof2(obj);
    };
  } else {
    module.exports = _typeof = function _typeof(obj) {
      return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : _typeof2(obj);
    };
  }

  return _typeof(obj);
}

module.exports = _typeof;

/***/ }),
/* 5 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "0c8dfa03da09d37cee830d6bac9a262e.wasm";

/***/ }),
/* 6 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "8f753c8e6457d3cb854fc5e8dd3049a7.mem";

/***/ }),
/* 7 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(9);


/***/ }),
/* 8 */
/***/ (function(module, exports, __webpack_require__) {

/**
 * Copyright (c) 2014-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

var runtime = (function (exports) {
  "use strict";

  var Op = Object.prototype;
  var hasOwn = Op.hasOwnProperty;
  var undefined; // More compressible than void 0.
  var $Symbol = typeof Symbol === "function" ? Symbol : {};
  var iteratorSymbol = $Symbol.iterator || "@@iterator";
  var asyncIteratorSymbol = $Symbol.asyncIterator || "@@asyncIterator";
  var toStringTagSymbol = $Symbol.toStringTag || "@@toStringTag";

  function wrap(innerFn, outerFn, self, tryLocsList) {
    // If outerFn provided and outerFn.prototype is a Generator, then outerFn.prototype instanceof Generator.
    var protoGenerator = outerFn && outerFn.prototype instanceof Generator ? outerFn : Generator;
    var generator = Object.create(protoGenerator.prototype);
    var context = new Context(tryLocsList || []);

    // The ._invoke method unifies the implementations of the .next,
    // .throw, and .return methods.
    generator._invoke = makeInvokeMethod(innerFn, self, context);

    return generator;
  }
  exports.wrap = wrap;

  // Try/catch helper to minimize deoptimizations. Returns a completion
  // record like context.tryEntries[i].completion. This interface could
  // have been (and was previously) designed to take a closure to be
  // invoked without arguments, but in all the cases we care about we
  // already have an existing method we want to call, so there's no need
  // to create a new function object. We can even get away with assuming
  // the method takes exactly one argument, since that happens to be true
  // in every case, so we don't have to touch the arguments object. The
  // only additional allocation required is the completion record, which
  // has a stable shape and so hopefully should be cheap to allocate.
  function tryCatch(fn, obj, arg) {
    try {
      return { type: "normal", arg: fn.call(obj, arg) };
    } catch (err) {
      return { type: "throw", arg: err };
    }
  }

  var GenStateSuspendedStart = "suspendedStart";
  var GenStateSuspendedYield = "suspendedYield";
  var GenStateExecuting = "executing";
  var GenStateCompleted = "completed";

  // Returning this object from the innerFn has the same effect as
  // breaking out of the dispatch switch statement.
  var ContinueSentinel = {};

  // Dummy constructor functions that we use as the .constructor and
  // .constructor.prototype properties for functions that return Generator
  // objects. For full spec compliance, you may wish to configure your
  // minifier not to mangle the names of these two functions.
  function Generator() {}
  function GeneratorFunction() {}
  function GeneratorFunctionPrototype() {}

  // This is a polyfill for %IteratorPrototype% for environments that
  // don't natively support it.
  var IteratorPrototype = {};
  IteratorPrototype[iteratorSymbol] = function () {
    return this;
  };

  var getProto = Object.getPrototypeOf;
  var NativeIteratorPrototype = getProto && getProto(getProto(values([])));
  if (NativeIteratorPrototype &&
      NativeIteratorPrototype !== Op &&
      hasOwn.call(NativeIteratorPrototype, iteratorSymbol)) {
    // This environment has a native %IteratorPrototype%; use it instead
    // of the polyfill.
    IteratorPrototype = NativeIteratorPrototype;
  }

  var Gp = GeneratorFunctionPrototype.prototype =
    Generator.prototype = Object.create(IteratorPrototype);
  GeneratorFunction.prototype = Gp.constructor = GeneratorFunctionPrototype;
  GeneratorFunctionPrototype.constructor = GeneratorFunction;
  GeneratorFunctionPrototype[toStringTagSymbol] =
    GeneratorFunction.displayName = "GeneratorFunction";

  // Helper for defining the .next, .throw, and .return methods of the
  // Iterator interface in terms of a single ._invoke method.
  function defineIteratorMethods(prototype) {
    ["next", "throw", "return"].forEach(function(method) {
      prototype[method] = function(arg) {
        return this._invoke(method, arg);
      };
    });
  }

  exports.isGeneratorFunction = function(genFun) {
    var ctor = typeof genFun === "function" && genFun.constructor;
    return ctor
      ? ctor === GeneratorFunction ||
        // For the native GeneratorFunction constructor, the best we can
        // do is to check its .name property.
        (ctor.displayName || ctor.name) === "GeneratorFunction"
      : false;
  };

  exports.mark = function(genFun) {
    if (Object.setPrototypeOf) {
      Object.setPrototypeOf(genFun, GeneratorFunctionPrototype);
    } else {
      genFun.__proto__ = GeneratorFunctionPrototype;
      if (!(toStringTagSymbol in genFun)) {
        genFun[toStringTagSymbol] = "GeneratorFunction";
      }
    }
    genFun.prototype = Object.create(Gp);
    return genFun;
  };

  // Within the body of any async function, `await x` is transformed to
  // `yield regeneratorRuntime.awrap(x)`, so that the runtime can test
  // `hasOwn.call(value, "__await")` to determine if the yielded value is
  // meant to be awaited.
  exports.awrap = function(arg) {
    return { __await: arg };
  };

  function AsyncIterator(generator) {
    function invoke(method, arg, resolve, reject) {
      var record = tryCatch(generator[method], generator, arg);
      if (record.type === "throw") {
        reject(record.arg);
      } else {
        var result = record.arg;
        var value = result.value;
        if (value &&
            typeof value === "object" &&
            hasOwn.call(value, "__await")) {
          return Promise.resolve(value.__await).then(function(value) {
            invoke("next", value, resolve, reject);
          }, function(err) {
            invoke("throw", err, resolve, reject);
          });
        }

        return Promise.resolve(value).then(function(unwrapped) {
          // When a yielded Promise is resolved, its final value becomes
          // the .value of the Promise<{value,done}> result for the
          // current iteration.
          result.value = unwrapped;
          resolve(result);
        }, function(error) {
          // If a rejected Promise was yielded, throw the rejection back
          // into the async generator function so it can be handled there.
          return invoke("throw", error, resolve, reject);
        });
      }
    }

    var previousPromise;

    function enqueue(method, arg) {
      function callInvokeWithMethodAndArg() {
        return new Promise(function(resolve, reject) {
          invoke(method, arg, resolve, reject);
        });
      }

      return previousPromise =
        // If enqueue has been called before, then we want to wait until
        // all previous Promises have been resolved before calling invoke,
        // so that results are always delivered in the correct order. If
        // enqueue has not been called before, then it is important to
        // call invoke immediately, without waiting on a callback to fire,
        // so that the async generator function has the opportunity to do
        // any necessary setup in a predictable way. This predictability
        // is why the Promise constructor synchronously invokes its
        // executor callback, and why async functions synchronously
        // execute code before the first await. Since we implement simple
        // async functions in terms of async generators, it is especially
        // important to get this right, even though it requires care.
        previousPromise ? previousPromise.then(
          callInvokeWithMethodAndArg,
          // Avoid propagating failures to Promises returned by later
          // invocations of the iterator.
          callInvokeWithMethodAndArg
        ) : callInvokeWithMethodAndArg();
    }

    // Define the unified helper method that is used to implement .next,
    // .throw, and .return (see defineIteratorMethods).
    this._invoke = enqueue;
  }

  defineIteratorMethods(AsyncIterator.prototype);
  AsyncIterator.prototype[asyncIteratorSymbol] = function () {
    return this;
  };
  exports.AsyncIterator = AsyncIterator;

  // Note that simple async functions are implemented on top of
  // AsyncIterator objects; they just return a Promise for the value of
  // the final result produced by the iterator.
  exports.async = function(innerFn, outerFn, self, tryLocsList) {
    var iter = new AsyncIterator(
      wrap(innerFn, outerFn, self, tryLocsList)
    );

    return exports.isGeneratorFunction(outerFn)
      ? iter // If outerFn is a generator, return the full iterator.
      : iter.next().then(function(result) {
          return result.done ? result.value : iter.next();
        });
  };

  function makeInvokeMethod(innerFn, self, context) {
    var state = GenStateSuspendedStart;

    return function invoke(method, arg) {
      if (state === GenStateExecuting) {
        throw new Error("Generator is already running");
      }

      if (state === GenStateCompleted) {
        if (method === "throw") {
          throw arg;
        }

        // Be forgiving, per 25.3.3.3.3 of the spec:
        // https://people.mozilla.org/~jorendorff/es6-draft.html#sec-generatorresume
        return doneResult();
      }

      context.method = method;
      context.arg = arg;

      while (true) {
        var delegate = context.delegate;
        if (delegate) {
          var delegateResult = maybeInvokeDelegate(delegate, context);
          if (delegateResult) {
            if (delegateResult === ContinueSentinel) continue;
            return delegateResult;
          }
        }

        if (context.method === "next") {
          // Setting context._sent for legacy support of Babel's
          // function.sent implementation.
          context.sent = context._sent = context.arg;

        } else if (context.method === "throw") {
          if (state === GenStateSuspendedStart) {
            state = GenStateCompleted;
            throw context.arg;
          }

          context.dispatchException(context.arg);

        } else if (context.method === "return") {
          context.abrupt("return", context.arg);
        }

        state = GenStateExecuting;

        var record = tryCatch(innerFn, self, context);
        if (record.type === "normal") {
          // If an exception is thrown from innerFn, we leave state ===
          // GenStateExecuting and loop back for another invocation.
          state = context.done
            ? GenStateCompleted
            : GenStateSuspendedYield;

          if (record.arg === ContinueSentinel) {
            continue;
          }

          return {
            value: record.arg,
            done: context.done
          };

        } else if (record.type === "throw") {
          state = GenStateCompleted;
          // Dispatch the exception by looping back around to the
          // context.dispatchException(context.arg) call above.
          context.method = "throw";
          context.arg = record.arg;
        }
      }
    };
  }

  // Call delegate.iterator[context.method](context.arg) and handle the
  // result, either by returning a { value, done } result from the
  // delegate iterator, or by modifying context.method and context.arg,
  // setting context.delegate to null, and returning the ContinueSentinel.
  function maybeInvokeDelegate(delegate, context) {
    var method = delegate.iterator[context.method];
    if (method === undefined) {
      // A .throw or .return when the delegate iterator has no .throw
      // method always terminates the yield* loop.
      context.delegate = null;

      if (context.method === "throw") {
        // Note: ["return"] must be used for ES3 parsing compatibility.
        if (delegate.iterator["return"]) {
          // If the delegate iterator has a return method, give it a
          // chance to clean up.
          context.method = "return";
          context.arg = undefined;
          maybeInvokeDelegate(delegate, context);

          if (context.method === "throw") {
            // If maybeInvokeDelegate(context) changed context.method from
            // "return" to "throw", let that override the TypeError below.
            return ContinueSentinel;
          }
        }

        context.method = "throw";
        context.arg = new TypeError(
          "The iterator does not provide a 'throw' method");
      }

      return ContinueSentinel;
    }

    var record = tryCatch(method, delegate.iterator, context.arg);

    if (record.type === "throw") {
      context.method = "throw";
      context.arg = record.arg;
      context.delegate = null;
      return ContinueSentinel;
    }

    var info = record.arg;

    if (! info) {
      context.method = "throw";
      context.arg = new TypeError("iterator result is not an object");
      context.delegate = null;
      return ContinueSentinel;
    }

    if (info.done) {
      // Assign the result of the finished delegate to the temporary
      // variable specified by delegate.resultName (see delegateYield).
      context[delegate.resultName] = info.value;

      // Resume execution at the desired location (see delegateYield).
      context.next = delegate.nextLoc;

      // If context.method was "throw" but the delegate handled the
      // exception, let the outer generator proceed normally. If
      // context.method was "next", forget context.arg since it has been
      // "consumed" by the delegate iterator. If context.method was
      // "return", allow the original .return call to continue in the
      // outer generator.
      if (context.method !== "return") {
        context.method = "next";
        context.arg = undefined;
      }

    } else {
      // Re-yield the result returned by the delegate method.
      return info;
    }

    // The delegate iterator is finished, so forget it and continue with
    // the outer generator.
    context.delegate = null;
    return ContinueSentinel;
  }

  // Define Generator.prototype.{next,throw,return} in terms of the
  // unified ._invoke helper method.
  defineIteratorMethods(Gp);

  Gp[toStringTagSymbol] = "Generator";

  // A Generator should always return itself as the iterator object when the
  // @@iterator function is called on it. Some browsers' implementations of the
  // iterator prototype chain incorrectly implement this, causing the Generator
  // object to not be returned from this call. This ensures that doesn't happen.
  // See https://github.com/facebook/regenerator/issues/274 for more details.
  Gp[iteratorSymbol] = function() {
    return this;
  };

  Gp.toString = function() {
    return "[object Generator]";
  };

  function pushTryEntry(locs) {
    var entry = { tryLoc: locs[0] };

    if (1 in locs) {
      entry.catchLoc = locs[1];
    }

    if (2 in locs) {
      entry.finallyLoc = locs[2];
      entry.afterLoc = locs[3];
    }

    this.tryEntries.push(entry);
  }

  function resetTryEntry(entry) {
    var record = entry.completion || {};
    record.type = "normal";
    delete record.arg;
    entry.completion = record;
  }

  function Context(tryLocsList) {
    // The root entry object (effectively a try statement without a catch
    // or a finally block) gives us a place to store values thrown from
    // locations where there is no enclosing try statement.
    this.tryEntries = [{ tryLoc: "root" }];
    tryLocsList.forEach(pushTryEntry, this);
    this.reset(true);
  }

  exports.keys = function(object) {
    var keys = [];
    for (var key in object) {
      keys.push(key);
    }
    keys.reverse();

    // Rather than returning an object with a next method, we keep
    // things simple and return the next function itself.
    return function next() {
      while (keys.length) {
        var key = keys.pop();
        if (key in object) {
          next.value = key;
          next.done = false;
          return next;
        }
      }

      // To avoid creating an additional object, we just hang the .value
      // and .done properties off the next function object itself. This
      // also ensures that the minifier will not anonymize the function.
      next.done = true;
      return next;
    };
  };

  function values(iterable) {
    if (iterable) {
      var iteratorMethod = iterable[iteratorSymbol];
      if (iteratorMethod) {
        return iteratorMethod.call(iterable);
      }

      if (typeof iterable.next === "function") {
        return iterable;
      }

      if (!isNaN(iterable.length)) {
        var i = -1, next = function next() {
          while (++i < iterable.length) {
            if (hasOwn.call(iterable, i)) {
              next.value = iterable[i];
              next.done = false;
              return next;
            }
          }

          next.value = undefined;
          next.done = true;

          return next;
        };

        return next.next = next;
      }
    }

    // Return an iterator with no values.
    return { next: doneResult };
  }
  exports.values = values;

  function doneResult() {
    return { value: undefined, done: true };
  }

  Context.prototype = {
    constructor: Context,

    reset: function(skipTempReset) {
      this.prev = 0;
      this.next = 0;
      // Resetting context._sent for legacy support of Babel's
      // function.sent implementation.
      this.sent = this._sent = undefined;
      this.done = false;
      this.delegate = null;

      this.method = "next";
      this.arg = undefined;

      this.tryEntries.forEach(resetTryEntry);

      if (!skipTempReset) {
        for (var name in this) {
          // Not sure about the optimal order of these conditions:
          if (name.charAt(0) === "t" &&
              hasOwn.call(this, name) &&
              !isNaN(+name.slice(1))) {
            this[name] = undefined;
          }
        }
      }
    },

    stop: function() {
      this.done = true;

      var rootEntry = this.tryEntries[0];
      var rootRecord = rootEntry.completion;
      if (rootRecord.type === "throw") {
        throw rootRecord.arg;
      }

      return this.rval;
    },

    dispatchException: function(exception) {
      if (this.done) {
        throw exception;
      }

      var context = this;
      function handle(loc, caught) {
        record.type = "throw";
        record.arg = exception;
        context.next = loc;

        if (caught) {
          // If the dispatched exception was caught by a catch block,
          // then let that catch block handle the exception normally.
          context.method = "next";
          context.arg = undefined;
        }

        return !! caught;
      }

      for (var i = this.tryEntries.length - 1; i >= 0; --i) {
        var entry = this.tryEntries[i];
        var record = entry.completion;

        if (entry.tryLoc === "root") {
          // Exception thrown outside of any try block that could handle
          // it, so set the completion value of the entire function to
          // throw the exception.
          return handle("end");
        }

        if (entry.tryLoc <= this.prev) {
          var hasCatch = hasOwn.call(entry, "catchLoc");
          var hasFinally = hasOwn.call(entry, "finallyLoc");

          if (hasCatch && hasFinally) {
            if (this.prev < entry.catchLoc) {
              return handle(entry.catchLoc, true);
            } else if (this.prev < entry.finallyLoc) {
              return handle(entry.finallyLoc);
            }

          } else if (hasCatch) {
            if (this.prev < entry.catchLoc) {
              return handle(entry.catchLoc, true);
            }

          } else if (hasFinally) {
            if (this.prev < entry.finallyLoc) {
              return handle(entry.finallyLoc);
            }

          } else {
            throw new Error("try statement without catch or finally");
          }
        }
      }
    },

    abrupt: function(type, arg) {
      for (var i = this.tryEntries.length - 1; i >= 0; --i) {
        var entry = this.tryEntries[i];
        if (entry.tryLoc <= this.prev &&
            hasOwn.call(entry, "finallyLoc") &&
            this.prev < entry.finallyLoc) {
          var finallyEntry = entry;
          break;
        }
      }

      if (finallyEntry &&
          (type === "break" ||
           type === "continue") &&
          finallyEntry.tryLoc <= arg &&
          arg <= finallyEntry.finallyLoc) {
        // Ignore the finally entry if control is not jumping to a
        // location outside the try/catch block.
        finallyEntry = null;
      }

      var record = finallyEntry ? finallyEntry.completion : {};
      record.type = type;
      record.arg = arg;

      if (finallyEntry) {
        this.method = "next";
        this.next = finallyEntry.finallyLoc;
        return ContinueSentinel;
      }

      return this.complete(record);
    },

    complete: function(record, afterLoc) {
      if (record.type === "throw") {
        throw record.arg;
      }

      if (record.type === "break" ||
          record.type === "continue") {
        this.next = record.arg;
      } else if (record.type === "return") {
        this.rval = this.arg = record.arg;
        this.method = "return";
        this.next = "end";
      } else if (record.type === "normal" && afterLoc) {
        this.next = afterLoc;
      }

      return ContinueSentinel;
    },

    finish: function(finallyLoc) {
      for (var i = this.tryEntries.length - 1; i >= 0; --i) {
        var entry = this.tryEntries[i];
        if (entry.finallyLoc === finallyLoc) {
          this.complete(entry.completion, entry.afterLoc);
          resetTryEntry(entry);
          return ContinueSentinel;
        }
      }
    },

    "catch": function(tryLoc) {
      for (var i = this.tryEntries.length - 1; i >= 0; --i) {
        var entry = this.tryEntries[i];
        if (entry.tryLoc === tryLoc) {
          var record = entry.completion;
          if (record.type === "throw") {
            var thrown = record.arg;
            resetTryEntry(entry);
          }
          return thrown;
        }
      }

      // The context.catch method must only be called with a location
      // argument that corresponds to a known catch block.
      throw new Error("illegal catch attempt");
    },

    delegateYield: function(iterable, resultName, nextLoc) {
      this.delegate = {
        iterator: values(iterable),
        resultName: resultName,
        nextLoc: nextLoc
      };

      if (this.method === "next") {
        // Deliberately forget the last sent value so that we don't
        // accidentally pass it on to the delegate.
        this.arg = undefined;
      }

      return ContinueSentinel;
    }
  };

  // Regardless of whether this script is executing as a CommonJS module
  // or not, return the runtime object so that we can declare the variable
  // regeneratorRuntime in the outer scope, which allows this module to be
  // injected easily by `bin/regenerator --include-runtime script.js`.
  return exports;

}(
  // If this script is executing as a CommonJS module, use module.exports
  // as the regeneratorRuntime namespace. Otherwise create a new empty
  // object. Either way, the resulting object will be used to initialize
  // the regeneratorRuntime variable at the top of this file.
   true ? module.exports : undefined
));

try {
  regeneratorRuntime = runtime;
} catch (accidentalStrictMode) {
  // This module should not be running in strict mode, so the above
  // assignment should always work unless something is misconfigured. Just
  // in case runtime.js accidentally runs in strict mode, we can escape
  // strict mode using a global Function call. This could conceivably fail
  // if a Content Security Policy forbids using Function, but in that case
  // the proper solution is to fix the accidental strict mode problem. If
  // you've misconfigured your bundler to force strict mode and applied a
  // CSP to forbid Function, and you're not willing to fix either of those
  // problems, please detail your unique predicament in a GitHub issue.
  Function("r", "regeneratorRuntime = r")(runtime);
}


/***/ }),
/* 9 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
// ESM COMPAT FLAG
__webpack_require__.r(__webpack_exports__);

// EXTERNAL MODULE: ./node_modules/@babel/runtime/helpers/typeof.js
var helpers_typeof = __webpack_require__(4);
var typeof_default = /*#__PURE__*/__webpack_require__.n(helpers_typeof);

// EXTERNAL MODULE: ./node_modules/@babel/runtime/regenerator/index.js
var regenerator = __webpack_require__(0);
var regenerator_default = /*#__PURE__*/__webpack_require__.n(regenerator);

// EXTERNAL MODULE: ./node_modules/@babel/runtime/helpers/classCallCheck.js
var classCallCheck = __webpack_require__(3);
var classCallCheck_default = /*#__PURE__*/__webpack_require__.n(classCallCheck);

// EXTERNAL MODULE: ./node_modules/@babel/runtime/helpers/createClass.js
var createClass = __webpack_require__(2);
var createClass_default = /*#__PURE__*/__webpack_require__.n(createClass);

// EXTERNAL MODULE: ./node_modules/@babel/runtime/helpers/asyncToGenerator.js
var asyncToGenerator = __webpack_require__(1);
var asyncToGenerator_default = /*#__PURE__*/__webpack_require__.n(asyncToGenerator);

// CONCATENATED MODULE: ./src/logger.js



var logger_Logger =
/*#__PURE__*/
function () {
  function Logger() {
    classCallCheck_default()(this, Logger);

    this.setVerbosity('WARNING');
  }

  createClass_default()(Logger, [{
    key: "debug",
    value: function debug() {
      if (this.checkVerbosity(4)) {
        var _console;

        (_console = console).log.apply(_console, arguments);
      }
    }
  }, {
    key: "log",
    value: function log() {
      if (this.checkVerbosity(4)) {
        var _console2;

        (_console2 = console).log.apply(_console2, arguments);
      }
    }
  }, {
    key: "info",
    value: function info() {
      if (this.checkVerbosity(3)) {
        var _console3;

        (_console3 = console).info.apply(_console3, arguments);
      }
    }
  }, {
    key: "warn",
    value: function warn() {
      if (this.checkVerbosity(2)) {
        var _console4;

        (_console4 = console).warn.apply(_console4, arguments);
      }
    }
  }, {
    key: "error",
    value: function error() {
      if (this.checkVerbosity(1)) {
        var _console5;

        (_console5 = console).error.apply(_console5, arguments);
      }
    }
  }, {
    key: "setVerbosity",
    value: function setVerbosity(level) {
      var default_level = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : 'info';

      if (level === undefined) {
        level = default_level;
      }

      if (typeof level === 'string') {
        level = {
          ERROR: 1,
          WARNING: 2,
          INFO: 3,
          LOG: 4,
          DEBUG: 4
        }[level.toUpperCase()] || 2;
      }

      this.level = level;
    }
  }, {
    key: "checkVerbosity",
    value: function checkVerbosity(level) {
      return this.level >= level;
    }
  }]);

  return Logger;
}();

var log = new logger_Logger();
/* harmony default export */ var logger = (log);
// CONCATENATED MODULE: ./src/wasm-utils.js


// 1. +++ fetchAndInstantiate() +++ //
// This library function fetches the wasm module at 'url', instantiates it with
// the given 'importObject', and returns the instantiated object instance
function instantiateStreaming(_x, _x2) {
  return _instantiateStreaming.apply(this, arguments);
}

function _instantiateStreaming() {
  _instantiateStreaming = asyncToGenerator_default()(
  /*#__PURE__*/
  regenerator_default.a.mark(function _callee(url, importObject) {
    var result;
    return regenerator_default.a.wrap(function _callee$(_context) {
      while (1) {
        switch (_context.prev = _context.next) {
          case 0:
            _context.next = 2;
            return WebAssembly.instantiateStreaming(fetch(url), importObject);

          case 2:
            result = _context.sent;
            return _context.abrupt("return", result.instance);

          case 4:
          case "end":
            return _context.stop();
        }
      }
    }, _callee);
  }));
  return _instantiateStreaming.apply(this, arguments);
}

function fetchAndInstantiate(url, importObject) {
  return fetch(url).then(function (response) {
    return response.arrayBuffer();
  }).then(function (bytes) {
    return WebAssembly.instantiate(bytes, importObject);
  }).then(function (results) {
    return results.instance;
  });
} // 2. +++ instantiateCachedURL() +++ //
// This library function fetches the wasm Module at 'url', instantiates it with
// the given 'importObject', and returns a Promise resolving to the finished
// wasm Instance. Additionally, the function attempts to cache the compiled wasm
// Module in IndexedDB using 'url' as the key. The entire site's wasm cache (not
// just the given URL) is versioned by dbVersion and any change in dbVersion on
// any call to instantiateCachedURL() will conservatively clear out the entire
// cache to avoid stale modules.

function instantiateCachedURL(dbVersion, url, importObject) {
  var dbName = 'wasm-cache';
  var storeName = 'wasm-cache'; // This helper function Promise-ifies the operation of opening an IndexedDB
  // database and clearing out the cache when the version changes.

  function openDatabase() {
    return new Promise(function (resolve, reject) {
      var request = indexedDB.open(dbName, dbVersion);
      request.onerror = reject.bind(null, 'Error opening wasm cache database');

      request.onsuccess = function () {
        resolve(request.result);
      };

      request.onupgradeneeded = function (event) {
        var db = request.result;

        if (db.objectStoreNames.contains(storeName)) {
          console.log("Clearing out version ".concat(event.oldVersion, " wasm cache"));
          db.deleteObjectStore(storeName);
        }

        console.log("Creating version ".concat(event.newVersion, " wasm cache"));
        db.createObjectStore(storeName);
      };
    });
  } // This helper function Promise-ifies the operation of looking up 'url' in the
  // given IDBDatabase.


  function lookupInDatabase(db) {
    return new Promise(function (resolve, reject) {
      var store = db.transaction([storeName]).objectStore(storeName);
      var request = store.get(url);
      request.onerror = reject.bind(null, "Error getting wasm module ".concat(url));

      request.onsuccess = function (event) {
        if (request.result) resolve(request.result);else reject("Module ".concat(url, " was not found in wasm cache"));
      };
    });
  } // This helper function fires off an async operation to store the given wasm
  // Module in the given IDBDatabase.


  function storeInDatabase(db, module) {
    var store = db.transaction([storeName], 'readwrite').objectStore(storeName);
    var request = store.put(module, url);

    request.onerror = function (err) {
      console.log("Failed to store in wasm cache: ".concat(err));
    };

    request.onsuccess = function (err) {
      console.log("Successfully stored ".concat(url, " in wasm cache"));
    };
  } // This helper function fetches 'url', compiles it into a Module,
  // instantiates the Module with the given import object.


  function fetchAndInstantiate() {
    return fetch(url).then(function (response) {
      return response.arrayBuffer();
    }).then(function (buffer) {
      return WebAssembly.instantiate(buffer, importObject);
    });
  } // With all the Promise helper functions defined, we can now express the core
  // logic of an IndexedDB cache lookup. We start by trying to open a database.


  return openDatabase().then(function (db) {
    // Now see if we already have a compiled Module with key 'url' in 'db':
    return lookupInDatabase(db).then(function (module) {
      // We do! Instantiate it with the given import object.
      console.log("Found ".concat(url, " in wasm cache"));
      return WebAssembly.instantiate(module, importObject);
    }, function (errMsg) {
      // Nope! Compile from scratch and then store the compiled Module in 'db'
      // with key 'url' for next time.
      console.log(errMsg);
      return fetchAndInstantiate().then(function (results) {
        try {
          storeInDatabase(db, results.module);
        } catch (e) {
          console.log('Failed to store module into db');
        }

        return results.instance;
      });
    });
  }, function (errMsg) {
    // If opening the database failed (due to permissions or quota), fall back
    // to simply fetching and compiling the module and don't try to store the
    // results.
    console.log(errMsg);
    return fetchAndInstantiate().then(function (results) {
      return results.instance;
    });
  });
}
function instantiateAny(_x3, _x4, _x5) {
  return _instantiateAny.apply(this, arguments);
}

function _instantiateAny() {
  _instantiateAny = asyncToGenerator_default()(
  /*#__PURE__*/
  regenerator_default.a.mark(function _callee2(version, url, importObject) {
    return regenerator_default.a.wrap(function _callee2$(_context2) {
      while (1) {
        switch (_context2.prev = _context2.next) {
          case 0:
            console.log("instantiate");
            _context2.prev = 1;
            _context2.next = 4;
            return instantiateStreaming(url, importObject);

          case 4:
            return _context2.abrupt("return", _context2.sent);

          case 7:
            _context2.prev = 7;
            _context2.t0 = _context2["catch"](1);
            console.log("instantiateStreaming failed", _context2.t0);

          case 10:
            _context2.prev = 10;
            _context2.next = 13;
            return instantiateCachedURL(version, url, importObject);

          case 13:
            return _context2.abrupt("return", _context2.sent);

          case 16:
            _context2.prev = 16;
            _context2.t1 = _context2["catch"](10);
            console.log("instantiateCachedURL failed", _context2.t1);

          case 19:
            throw new Error("can't instantiate wasm");

          case 20:
          case "end":
            return _context2.stop();
        }
      }
    }, _callee2, null, [[1, 7], [10, 16]]);
  }));
  return _instantiateAny.apply(this, arguments);
}
// EXTERNAL MODULE: ./src/prebuilt/release/td_wasm.wasm
var release_td_wasm = __webpack_require__(5);
var td_wasm_default = /*#__PURE__*/__webpack_require__.n(release_td_wasm);

// EXTERNAL MODULE: ./src/prebuilt/release/td_asmjs.js.mem
var td_asmjs_js = __webpack_require__(6);
var td_asmjs_js_default = /*#__PURE__*/__webpack_require__.n(td_asmjs_js);

// CONCATENATED MODULE: ./src/index.js









var tdlibVersion = 6;

function loadTdlibWasm(_x, _x2) {
  return _loadTdlibWasm.apply(this, arguments);
}

function _loadTdlibWasm() {
  _loadTdlibWasm = asyncToGenerator_default()(
  /*#__PURE__*/
  regenerator_default.a.mark(function _callee17(onFS, wasmUrl) {
    var td_module, createTdwebModule, td_wasm, module;
    return regenerator_default.a.wrap(function _callee17$(_context17) {
      while (1) {
        switch (_context17.prev = _context17.next) {
          case 0:
            console.log('loadTdlibWasm');
            _context17.next = 3;
            return Promise.all(/* import() */[__webpack_require__.e(1), __webpack_require__.e(3)]).then(__webpack_require__.t.bind(null, 18, 7));

          case 3:
            td_module = _context17.sent;
            createTdwebModule = td_module["default"];
            logger.info('receive td_wasm.js', td_module, createTdwebModule);
            td_wasm = td_wasm_default.a;

            if (wasmUrl) {
              td_wasm = wasmUrl;
            }

            module = createTdwebModule({
              onRuntimeInitialized: function onRuntimeInitialized() {
                logger.info('runtime intialized');
                onFS(module.FS);
              },
              instantiateWasm: function instantiateWasm(imports, successCallback) {
                logger.info('start instantiateWasm', td_wasm, imports);

                var next = function next(instance) {
                  logger.info('finish instantiateWasm');
                  successCallback(instance);
                };

                instantiateAny(tdlibVersion, td_wasm, imports).then(next);
                return {};
              },
              ENVIROMENT: 'WORKER'
            });
            logger.info('Wait module');
            _context17.next = 12;
            return module;

          case 12:
            module = _context17.sent;
            logger.info('Loaded module', module); //onFS(module.FS);

            return _context17.abrupt("return", module);

          case 15:
          case "end":
            return _context17.stop();
        }
      }
    }, _callee17);
  }));
  return _loadTdlibWasm.apply(this, arguments);
}

function loadTdlibAsmjs(_x3) {
  return _loadTdlibAsmjs.apply(this, arguments);
}

function _loadTdlibAsmjs() {
  _loadTdlibAsmjs = asyncToGenerator_default()(
  /*#__PURE__*/
  regenerator_default.a.mark(function _callee18(onFS) {
    var createTdwebModule, fromFile, toFile, module;
    return regenerator_default.a.wrap(function _callee18$(_context18) {
      while (1) {
        switch (_context18.prev = _context18.next) {
          case 0:
            console.log('loadTdlibAsmjs');
            _context18.next = 3;
            return __webpack_require__.e(/* import() */ 2).then(__webpack_require__.t.bind(null, 19, 7));

          case 3:
            createTdwebModule = _context18.sent["default"];
            console.log('Loaded td_asm.js', createTdwebModule);
            fromFile = 'td_asmjs.js.mem';
            toFile = td_asmjs_js_default.a;
            module = createTdwebModule({
              onRuntimeInitialized: function onRuntimeInitialized() {
                console.log('runtime intialized');
                onFS(module.FS);
              },
              locateFile: function locateFile(name) {
                if (name === fromFile) {
                  return toFile;
                }

                return name;
              },
              ENVIROMENT: 'WORKER'
            });
            logger.info('Wait module');
            _context18.next = 11;
            return module;

          case 11:
            module = _context18.sent;
            logger.info('Loaded module', module); //onFS(module.FS);

            return _context18.abrupt("return", module);

          case 14:
          case "end":
            return _context18.stop();
        }
      }
    }, _callee18);
  }));
  return _loadTdlibAsmjs.apply(this, arguments);
}

function loadTdlib(_x4, _x5, _x6) {
  return _loadTdlib.apply(this, arguments);
}

function _loadTdlib() {
  _loadTdlib = asyncToGenerator_default()(
  /*#__PURE__*/
  regenerator_default.a.mark(function _callee19(mode, onFS, wasmUrl) {
    var wasmSupported;
    return regenerator_default.a.wrap(function _callee19$(_context19) {
      while (1) {
        switch (_context19.prev = _context19.next) {
          case 0:
            wasmSupported = function () {
              try {
                if ((typeof WebAssembly === "undefined" ? "undefined" : typeof_default()(WebAssembly)) === 'object' && typeof WebAssembly.instantiate === 'function') {
                  var module = new WebAssembly.Module(Uint8Array.of(0x0, 0x61, 0x73, 0x6d, 0x01, 0x00, 0x00, 0x00));
                  if (module instanceof WebAssembly.Module) return new WebAssembly.Instance(module) instanceof WebAssembly.Instance;
                }
              } catch (e) {}

              return false;
            }();

            if (!wasmSupported) {
              if (mode === 'wasm') {
                logger.error('WebAssembly is not supported, trying to use it anyway');
              } else {
                logger.warn('WebAssembly is not supported, trying to use asm.js');
                mode = 'asmjs';
              }
            }

            if (!(mode === 'asmjs')) {
              _context19.next = 4;
              break;
            }

            return _context19.abrupt("return", loadTdlibAsmjs(onFS));

          case 4:
            return _context19.abrupt("return", loadTdlibWasm(onFS, wasmUrl));

          case 5:
          case "end":
            return _context19.stop();
        }
      }
    }, _callee19);
  }));
  return _loadTdlib.apply(this, arguments);
}

var src_OutboundFileSystem =
/*#__PURE__*/
function () {
  function OutboundFileSystem(root, FS) {
    classCallCheck_default()(this, OutboundFileSystem);

    this.root = root;
    this.nextFileId = 0;
    this.FS = FS;
    this.files = new Set();
    FS.mkdir(root);
  }

  createClass_default()(OutboundFileSystem, [{
    key: "blobToPath",
    value: function blobToPath(blob, name) {
      var dir = this.root + '/' + this.nextFileId;

      if (!name) {
        name = 'blob';
      }

      this.nextFileId++;
      this.FS.mkdir(dir);
      this.FS.mount(this.FS.filesystems.WORKERFS, {
        blobs: [{
          name: name,
          data: blob
        }]
      }, dir);
      var path = dir + '/' + name;
      this.files.add(path);
      return path;
    }
  }, {
    key: "forgetPath",
    value: function forgetPath(path) {
      if (this.files.has(path)) {
        this.FS.unmount(path);
        this.files["delete"](path);
      }
    }
  }]);

  return OutboundFileSystem;
}();

var src_InboundFileSystem =
/*#__PURE__*/
function () {
  function InboundFileSystem() {
    classCallCheck_default()(this, InboundFileSystem);
  }

  createClass_default()(InboundFileSystem, [{
    key: "load_pids",
    value: function () {
      var _load_pids = asyncToGenerator_default()(
      /*#__PURE__*/
      regenerator_default.a.mark(function _callee() {
        var keys_start, idb, read, keys, keys_time;
        return regenerator_default.a.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                keys_start = performance.now();
                logger.debug('InboundFileSystem::create::keys start'); //const keys = await this.store.keys();

                _context.next = 4;
                return this.idb;

              case 4:
                idb = _context.sent;
                read = idb.transaction(['keyvaluepairs'], 'readonly').objectStore('keyvaluepairs');
                _context.next = 8;
                return new Promise(function (resolve, reject) {
                  var request = read.getAllKeys();

                  request.onsuccess = function () {
                    return resolve(request.result);
                  };

                  request.onerror = function () {
                    return reject(request.error);
                  };
                });

              case 8:
                keys = _context.sent;
                keys_time = (performance.now() - keys_start) / 1000;
                logger.debug('InboundFileSystem::create::keys ' + keys_time + ' ' + keys.length);
                this.pids = new Set(keys);

              case 12:
              case "end":
                return _context.stop();
            }
          }
        }, _callee, this);
      }));

      function load_pids() {
        return _load_pids.apply(this, arguments);
      }

      return load_pids;
    }()
  }, {
    key: "has",
    value: function has(pid) {
      if (!this.pids) {
        return true;
      }

      return this.pids.has(pid);
    }
  }, {
    key: "forget",
    value: function forget(pid) {
      if (this.pids) {
        this.pids["delete"](pid);
      }
    }
  }, {
    key: "doPersist",
    value: function () {
      var _doPersist = asyncToGenerator_default()(
      /*#__PURE__*/
      regenerator_default.a.mark(function _callee2(pid, path, arr, resolve, reject, write) {
        var size;
        return regenerator_default.a.wrap(function _callee2$(_context2) {
          while (1) {
            switch (_context2.prev = _context2.next) {
              case 0:
                this.persistCount++;
                size = arr.length;
                this.persistSize += size;
                _context2.prev = 3;
                _context2.next = 6;
                return new Promise(function (resolve, reject) {
                  var request = write.put(new Blob([arr]), pid);

                  request.onsuccess = function () {
                    return resolve(request.result);
                  };

                  request.onerror = function () {
                    return reject(request.error);
                  };
                });

              case 6:
                if (this.pids) {
                  this.pids.add(pid);
                }

                this.FS.unlink(path);
                _context2.next = 13;
                break;

              case 10:
                _context2.prev = 10;
                _context2.t0 = _context2["catch"](3);
                logger.error('Failed persist ' + path + ' ', _context2.t0);

              case 13:
                //log.debug('persist.do finish', pid, path, arr.length);
                this.persistCount--;
                this.persistSize -= size;
                resolve();
                this.tryFinishPersist();

              case 17:
              case "end":
                return _context2.stop();
            }
          }
        }, _callee2, this, [[3, 10]]);
      }));

      function doPersist(_x7, _x8, _x9, _x10, _x11, _x12) {
        return _doPersist.apply(this, arguments);
      }

      return doPersist;
    }()
  }, {
    key: "flushPersist",
    value: function () {
      var _flushPersist = asyncToGenerator_default()(
      /*#__PURE__*/
      regenerator_default.a.mark(function _callee3() {
        var idb, write, q;
        return regenerator_default.a.wrap(function _callee3$(_context3) {
          while (1) {
            switch (_context3.prev = _context3.next) {
              case 0:
                if (!this.inPersist) {
                  _context3.next = 2;
                  break;
                }

                return _context3.abrupt("return");

              case 2:
                logger.debug('persist.flush');
                this.inPersist = true;
                _context3.next = 6;
                return this.idb;

              case 6:
                idb = _context3.sent;
                this.writeBegin = performance.now();
                write = idb.transaction(['keyvaluepairs'], 'readwrite').objectStore('keyvaluepairs');

                while (this.pendingI < this.pending.length && this.persistCount < 20 && this.persistSize < 50 << 20) {
                  q = this.pending[this.pendingI];
                  this.pending[this.pendingI] = null; // TODO: add to transaction

                  this.doPersist(q.pid, q.path, q.arr, q.resolve, q.reject, write);
                  this.pendingI++;
                  this.totalCount++;
                }

                logger.debug('persist.flush transaction cnt=' + this.persistCount + ', size=' + this.persistSize);
                this.inPersist = false;
                this.tryFinishPersist();

              case 13:
              case "end":
                return _context3.stop();
            }
          }
        }, _callee3, this);
      }));

      function flushPersist() {
        return _flushPersist.apply(this, arguments);
      }

      return flushPersist;
    }()
  }, {
    key: "tryFinishPersist",
    value: function () {
      var _tryFinishPersist = asyncToGenerator_default()(
      /*#__PURE__*/
      regenerator_default.a.mark(function _callee4() {
        return regenerator_default.a.wrap(function _callee4$(_context4) {
          while (1) {
            switch (_context4.prev = _context4.next) {
              case 0:
                if (!this.inPersist) {
                  _context4.next = 2;
                  break;
                }

                return _context4.abrupt("return");

              case 2:
                if (!(this.persistCount !== 0)) {
                  _context4.next = 4;
                  break;
                }

                return _context4.abrupt("return");

              case 4:
                logger.debug('persist.finish ' + (performance.now() - this.writeBegin) / 1000);

                if (!(this.pendingI === this.pending.length)) {
                  _context4.next = 11;
                  break;
                }

                this.pending = [];
                this.pendingHasTimeout = false;
                this.pendingI = 0;
                logger.debug('persist.finish done');
                return _context4.abrupt("return");

              case 11:
                logger.debug('persist.finish continue');
                this.flushPersist();

              case 13:
              case "end":
                return _context4.stop();
            }
          }
        }, _callee4, this);
      }));

      function tryFinishPersist() {
        return _tryFinishPersist.apply(this, arguments);
      }

      return tryFinishPersist;
    }()
  }, {
    key: "persist",
    value: function () {
      var _persist = asyncToGenerator_default()(
      /*#__PURE__*/
      regenerator_default.a.mark(function _callee5(pid, path, arr) {
        var _this = this;

        return regenerator_default.a.wrap(function _callee5$(_context5) {
          while (1) {
            switch (_context5.prev = _context5.next) {
              case 0:
                if (!this.pendingHasTimeout) {
                  this.pendingHasTimeout = true;
                  logger.debug('persist set timeout');
                  setTimeout(function () {
                    _this.flushPersist();
                  }, 1);
                }

                _context5.next = 3;
                return new Promise(function (resolve, reject) {
                  _this.pending.push({
                    pid: pid,
                    path: path,
                    arr: arr,
                    resolve: resolve,
                    reject: reject
                  });
                });

              case 3:
              case "end":
                return _context5.stop();
            }
          }
        }, _callee5, this);
      }));

      function persist(_x13, _x14, _x15) {
        return _persist.apply(this, arguments);
      }

      return persist;
    }()
  }, {
    key: "unlink",
    value: function () {
      var _unlink = asyncToGenerator_default()(
      /*#__PURE__*/
      regenerator_default.a.mark(function _callee6(pid) {
        var idb;
        return regenerator_default.a.wrap(function _callee6$(_context6) {
          while (1) {
            switch (_context6.prev = _context6.next) {
              case 0:
                logger.debug('Unlink ' + pid);
                _context6.prev = 1;
                this.forget(pid); //await this.store.removeItem(pid);

                _context6.next = 5;
                return this.idb;

              case 5:
                idb = _context6.sent;
                _context6.next = 8;
                return new Promise(function (resolve, reject) {
                  var write = idb.transaction(['keyvaluepairs'], 'readwrite').objectStore('keyvaluepairs');
                  var request = write["delete"](pid);

                  request.onsuccess = function () {
                    return resolve(request.result);
                  };

                  request.onerror = function () {
                    return reject(request.error);
                  };
                });

              case 8:
                _context6.next = 13;
                break;

              case 10:
                _context6.prev = 10;
                _context6.t0 = _context6["catch"](1);
                logger.error('Failed unlink ' + pid + ' ', _context6.t0);

              case 13:
              case "end":
                return _context6.stop();
            }
          }
        }, _callee6, this, [[1, 10]]);
      }));

      function unlink(_x16) {
        return _unlink.apply(this, arguments);
      }

      return unlink;
    }()
  }], [{
    key: "create",
    value: function () {
      var _create = asyncToGenerator_default()(
      /*#__PURE__*/
      regenerator_default.a.mark(function _callee7(dbName, root, FS_promise) {
        var start, ifs, FS, create_time;
        return regenerator_default.a.wrap(function _callee7$(_context7) {
          while (1) {
            switch (_context7.prev = _context7.next) {
              case 0:
                start = performance.now();
                _context7.prev = 1;
                ifs = new InboundFileSystem();
                ifs.pending = [];
                ifs.pendingHasTimeout = false;
                ifs.persistCount = 0;
                ifs.persistSize = 0;
                ifs.pendingI = 0;
                ifs.inPersist = false;
                ifs.totalCount = 0;
                ifs.root = root; //ifs.store = localforage.createInstance({
                //name: dbName,
                //driver: localForageDrivers
                //});

                logger.debug('IDB name: ' + dbName);
                ifs.idb = new Promise(function (resolve, reject) {
                  var request = indexedDB.open(dbName);

                  request.onsuccess = function () {
                    return resolve(request.result);
                  };

                  request.onerror = function () {
                    return reject(request.error);
                  };

                  request.onupgradeneeded = function () {
                    request.result.createObjectStore('keyvaluepairs');
                  };
                });
                ifs.load_pids();
                _context7.next = 16;
                return FS_promise;

              case 16:
                FS = _context7.sent;
                _context7.next = 19;
                return ifs.idb;

              case 19:
                ifs.FS = FS;
                ifs.FS.mkdir(root);
                create_time = (performance.now() - start) / 1000;
                logger.debug('InboundFileSystem::create ' + create_time);
                return _context7.abrupt("return", ifs);

              case 26:
                _context7.prev = 26;
                _context7.t0 = _context7["catch"](1);
                logger.error('Failed to init Inbound FileSystem: ', _context7.t0);

              case 29:
              case "end":
                return _context7.stop();
            }
          }
        }, _callee7, null, [[1, 26]]);
      }));

      function create(_x17, _x18, _x19) {
        return _create.apply(this, arguments);
      }

      return create;
    }()
  }]);

  return InboundFileSystem;
}();

var src_DbFileSystem =
/*#__PURE__*/
function () {
  function DbFileSystem() {
    classCallCheck_default()(this, DbFileSystem);
  }

  createClass_default()(DbFileSystem, [{
    key: "sync",
    value: function () {
      var _sync = asyncToGenerator_default()(
      /*#__PURE__*/
      regenerator_default.a.mark(function _callee8(force) {
        var _this2 = this;

        var start;
        return regenerator_default.a.wrap(function _callee8$(_context8) {
          while (1) {
            switch (_context8.prev = _context8.next) {
              case 0:
                if (!this.readOnly) {
                  _context8.next = 2;
                  break;
                }

                return _context8.abrupt("return");

              case 2:
                if (!(this.syncActive > 0 && !force)) {
                  _context8.next = 5;
                  break;
                }

                logger.debug('SYNC: skip');
                return _context8.abrupt("return");

              case 5:
                this.syncActive++;
                start = performance.now();
                _context8.next = 9;
                return new Promise(function (resolve, reject) {
                  _this2.FS.syncfs(false, function () {
                    var syncfs_time = (performance.now() - start) / 1000;
                    _this2.syncfs_total_time += syncfs_time;
                    logger.debug('SYNC: ' + syncfs_time);
                    logger.debug('SYNC total: ' + _this2.syncfs_total_time);
                    resolve();
                  });
                });

              case 9:
                this.syncActive--;

              case 10:
              case "end":
                return _context8.stop();
            }
          }
        }, _callee8, this);
      }));

      function sync(_x20) {
        return _sync.apply(this, arguments);
      }

      return sync;
    }()
  }, {
    key: "close",
    value: function () {
      var _close = asyncToGenerator_default()(
      /*#__PURE__*/
      regenerator_default.a.mark(function _callee9() {
        return regenerator_default.a.wrap(function _callee9$(_context9) {
          while (1) {
            switch (_context9.prev = _context9.next) {
              case 0:
                clearInterval(this.syncfsInterval);
                _context9.next = 3;
                return this.sync(true);

              case 3:
              case "end":
                return _context9.stop();
            }
          }
        }, _callee9, this);
      }));

      function close() {
        return _close.apply(this, arguments);
      }

      return close;
    }()
  }, {
    key: "destroy",
    value: function () {
      var _destroy = asyncToGenerator_default()(
      /*#__PURE__*/
      regenerator_default.a.mark(function _callee10() {
        var req;
        return regenerator_default.a.wrap(function _callee10$(_context10) {
          while (1) {
            switch (_context10.prev = _context10.next) {
              case 0:
                clearInterval(this.syncfsInterval);

                if (!this.readOnly) {
                  _context10.next = 3;
                  break;
                }

                return _context10.abrupt("return");

              case 3:
                this.FS.unmount(this.root);
                req = indexedDB.deleteDatabase(this.root);
                _context10.next = 7;
                return new Promise(function (resolve, reject) {
                  req.onsuccess = function (e) {
                    logger.info('SUCCESS');
                    resolve(e.result);
                  };

                  req.onerror = function (e) {
                    logger.info('ONERROR');
                    reject(e.error);
                  };

                  req.onblocked = function (e) {
                    logger.info('ONBLOCKED');
                    reject('blocked');
                  };
                });

              case 7:
              case "end":
                return _context10.stop();
            }
          }
        }, _callee10, this);
      }));

      function destroy() {
        return _destroy.apply(this, arguments);
      }

      return destroy;
    }()
  }], [{
    key: "create",
    value: function () {
      var _create2 = asyncToGenerator_default()(
      /*#__PURE__*/
      regenerator_default.a.mark(function _callee11(root, FS_promise) {
        var readOnly,
            start,
            dbfs,
            FS,
            rmrf,
            dirs,
            root_dir,
            key,
            value,
            i,
            dir,
            create_time,
            _args11 = arguments;
        return regenerator_default.a.wrap(function _callee11$(_context11) {
          while (1) {
            switch (_context11.prev = _context11.next) {
              case 0:
                readOnly = _args11.length > 2 && _args11[2] !== undefined ? _args11[2] : false;
                start = performance.now();
                _context11.prev = 2;
                dbfs = new DbFileSystem();
                dbfs.root = root;
                _context11.next = 7;
                return FS_promise;

              case 7:
                FS = _context11.sent;
                dbfs.FS = FS;
                dbfs.syncfs_total_time = 0;
                dbfs.readOnly = readOnly;
                dbfs.syncActive = 0;
                FS.mkdir(root);
                FS.mount(FS.filesystems.IDBFS, {}, root);
                _context11.next = 16;
                return new Promise(function (resolve, reject) {
                  FS.syncfs(true, function (err) {
                    resolve();
                  });
                });

              case 16:
                rmrf = function rmrf(path) {
                  logger.debug('rmrf ', path);
                  var info;

                  try {
                    info = FS.lookupPath(path);
                  } catch (e) {
                    return;
                  }

                  logger.debug('rmrf ', path, info);

                  if (info.node.isFolder) {
                    for (var key in info.node.contents) {
                      rmrf(info.path + '/' + info.node.contents[key].name);
                    }

                    logger.debug('rmdir ', path);
                    FS.rmdir(path);
                  } else {
                    logger.debug('unlink ', path);
                    FS.unlink(path);
                  }
                }; //const dirs = ['thumbnails', 'profile_photos', 'secret', 'stickers', 'temp', 'wallpapers', 'secret_thumbnails', 'passport'];


                dirs = [];
                root_dir = FS.lookupPath(root);
                _context11.t0 = regenerator_default.a.keys(root_dir.node.contents);

              case 20:
                if ((_context11.t1 = _context11.t0()).done) {
                  _context11.next = 29;
                  break;
                }

                key = _context11.t1.value;
                value = root_dir.node.contents[key];
                logger.debug('node ', key, value);

                if (value.isFolder) {
                  _context11.next = 26;
                  break;
                }

                return _context11.abrupt("continue", 20);

              case 26:
                dirs.push(root_dir.path + '/' + value.name);
                _context11.next = 20;
                break;

              case 29:
                for (i in dirs) {
                  dir = dirs[i];
                  rmrf(dir); //FS.mkdir(dir);
                  //FS.mount(FS.filesystems.MEMFS, {}, dir);
                }

                dbfs.syncfsInterval = setInterval(function () {
                  dbfs.sync();
                }, 5000);
                create_time = (performance.now() - start) / 1000;
                logger.debug('DbFileSystem::create ' + create_time);
                return _context11.abrupt("return", dbfs);

              case 36:
                _context11.prev = 36;
                _context11.t2 = _context11["catch"](2);
                logger.error('Failed to init DbFileSystem: ', _context11.t2);

              case 39:
              case "end":
                return _context11.stop();
            }
          }
        }, _callee11, null, [[2, 36]]);
      }));

      function create(_x21, _x22) {
        return _create2.apply(this, arguments);
      }

      return create;
    }()
  }]);

  return DbFileSystem;
}();

var src_TdFileSystem =
/*#__PURE__*/
function () {
  function TdFileSystem() {
    classCallCheck_default()(this, TdFileSystem);
  }

  createClass_default()(TdFileSystem, [{
    key: "destroy",
    value: function () {
      var _destroy2 = asyncToGenerator_default()(
      /*#__PURE__*/
      regenerator_default.a.mark(function _callee12() {
        return regenerator_default.a.wrap(function _callee12$(_context12) {
          while (1) {
            switch (_context12.prev = _context12.next) {
              case 0:
                _context12.next = 2;
                return this.dbFileSystem.destroy();

              case 2:
              case "end":
                return _context12.stop();
            }
          }
        }, _callee12, this);
      }));

      function destroy() {
        return _destroy2.apply(this, arguments);
      }

      return destroy;
    }()
  }], [{
    key: "init_fs",
    value: function () {
      var _init_fs = asyncToGenerator_default()(
      /*#__PURE__*/
      regenerator_default.a.mark(function _callee13(prefix, FS_promise) {
        var FS;
        return regenerator_default.a.wrap(function _callee13$(_context13) {
          while (1) {
            switch (_context13.prev = _context13.next) {
              case 0:
                _context13.next = 2;
                return FS_promise;

              case 2:
                FS = _context13.sent;
                FS.mkdir(prefix);
                return _context13.abrupt("return", FS);

              case 5:
              case "end":
                return _context13.stop();
            }
          }
        }, _callee13);
      }));

      function init_fs(_x23, _x24) {
        return _init_fs.apply(this, arguments);
      }

      return init_fs;
    }()
  }, {
    key: "create",
    value: function () {
      var _create3 = asyncToGenerator_default()(
      /*#__PURE__*/
      regenerator_default.a.mark(function _callee14(instanceName, FS_promise) {
        var readOnly,
            tdfs,
            prefix,
            inboundFileSystem,
            dbFileSystem,
            FS,
            _args14 = arguments;
        return regenerator_default.a.wrap(function _callee14$(_context14) {
          while (1) {
            switch (_context14.prev = _context14.next) {
              case 0:
                readOnly = _args14.length > 2 && _args14[2] !== undefined ? _args14[2] : false;
                _context14.prev = 1;
                tdfs = new TdFileSystem();
                prefix = '/' + instanceName;
                tdfs.prefix = prefix;
                FS_promise = TdFileSystem.init_fs(prefix, FS_promise); //MEMFS. Store to IDB and delete files as soon as possible

                inboundFileSystem = src_InboundFileSystem.create(instanceName, prefix + '/inboundfs', FS_promise); //IDBFS. MEMFS which is flushed to IDB from time to time

                dbFileSystem = src_DbFileSystem.create(prefix + '/dbfs', FS_promise, readOnly);
                _context14.next = 10;
                return FS_promise;

              case 10:
                FS = _context14.sent;
                tdfs.FS = FS; //WORKERFS. Temporary stores Blobs for outbound files

                tdfs.outboundFileSystem = new src_OutboundFileSystem(prefix + '/outboundfs', tdfs.FS);
                _context14.next = 15;
                return inboundFileSystem;

              case 15:
                tdfs.inboundFileSystem = _context14.sent;
                _context14.next = 18;
                return dbFileSystem;

              case 18:
                tdfs.dbFileSystem = _context14.sent;
                return _context14.abrupt("return", tdfs);

              case 22:
                _context14.prev = 22;
                _context14.t0 = _context14["catch"](1);
                logger.error('Failed to init TdFileSystem: ', _context14.t0);

              case 25:
              case "end":
                return _context14.stop();
            }
          }
        }, _callee14, null, [[1, 22]]);
      }));

      function create(_x25, _x26) {
        return _create3.apply(this, arguments);
      }

      return create;
    }()
  }]);

  return TdFileSystem;
}();

var src_TdClient =
/*#__PURE__*/
function () {
  createClass_default()(TdClient, null, [{
    key: "init_fs",
    value: function () {
      var _init_fs2 = asyncToGenerator_default()(
      /*#__PURE__*/
      regenerator_default.a.mark(function _callee15(prefix, FS_promise) {
        var FS;
        return regenerator_default.a.wrap(function _callee15$(_context15) {
          while (1) {
            switch (_context15.prev = _context15.next) {
              case 0:
                _context15.next = 2;
                return FS_promise;

              case 2:
                FS = _context15.sent;
                FS.mkdir(prefix);
                return _context15.abrupt("return", FS);

              case 5:
              case "end":
                return _context15.stop();
            }
          }
        }, _callee15);
      }));

      function init_fs(_x27, _x28) {
        return _init_fs2.apply(this, arguments);
      }

      return init_fs;
    }()
  }]);

  function TdClient() {
    classCallCheck_default()(this, TdClient);

    this.wasInit = false;
  }

  createClass_default()(TdClient, [{
    key: "init",
    value: function () {
      var _init = asyncToGenerator_default()(
      /*#__PURE__*/
      regenerator_default.a.mark(function _callee16(tdlib_mode) {
        var _this3 = this;

        var mode, FS_promise, tdfs_promise;
        return regenerator_default.a.wrap(function _callee16$(_context16) {
          while (1) {
            switch (_context16.prev = _context16.next) {
              case 0:
                if (!this.wasInit) {
                  _context16.next = 2;
                  break;
                }

                return _context16.abrupt("return");

              case 2:
                this.wasInit = true;
                mode = tdlib_mode || 'wasm';
                FS_promise = new Promise(function (resolve) {
                  _this3.onFS = resolve;
                });
                tdfs_promise = src_TdFileSystem.create('tdlib', FS_promise, false);
                logger.info('load TdModule');
                _context16.next = 9;
                return loadTdlib(mode, this.onFS, false);

              case 9:
                this.TdModule = _context16.sent;
                logger.info('loaded TdModule');
                this.td_create = this.TdModule.cwrap('td_emscripten_create_client_id', 'number', []);
                this.td_send = this.TdModule.cwrap('td_emscripten_send', null, ['number', 'string']);
                this.td_execute = this.TdModule.cwrap('td_emscripten_execute', 'string', ['string']);
                this.td_receive = this.TdModule.cwrap('td_emscripten_receive', 'string', []);

                this.td_set_verbosity = function (verbosity) {
                  _this3.td_functions.td_execute(JSON.stringify({
                    '@type': 'setLogVerbosityLevel',
                    new_verbosity_level: verbosity
                  }));
                };

                this.td_get_timeout = this.TdModule.cwrap('td_emscripten_get_timeout', 'number', []);

              case 17:
              case "end":
                return _context16.stop();
            }
          }
        }, _callee16, this);
      }));

      function init(_x29) {
        return _init.apply(this, arguments);
      }

      return init;
    }()
  }]);

  return TdClient;
}();

/* harmony default export */ var src = __webpack_exports__["default"] = (src_TdClient);

/***/ })
/******/ ]);
});