## 1.8.19
* Update tdlib to **1.8.19** (`2589c3fd4`), objects +17/−0/~9, functions +8/−1/~6.

## 1.8.18
* Update tdlib to **1.8.18** (`100ca72b9`), objects +9/−1/~8, functions +1/−0/~0.

## 1.8.17
* Update tdlib to **1.8.17** (`edc528457`), objects +1/−0/~3, functions +5/−0/~0.

## 1.8.16
* Update tdlib to **1.8.16** (`cde095db6`), objects +33/−1/~5, functions +5/−1/~4.
* Require Dart 3.
* Rewrite the generator with a real `td_api.tl` parser, fixes cut docs and `VectorPathCommandCubicBezierCurve` fields.
* Sealed type families and final classes.
* Decode unknown types to `Undecoded<Family>` instead of empty objects.
* Typed requests: `GetMe extends TdFunction<User>`.
* Decode through `tdObjectFactories`, add `convertMapToObject`.
* Send int64 values as strings, fix lists of int64.
* **Breaking:** `copyWith` takes a function for nullable fields, `() => null` clears one.
* Add `tdlibVersion` and `tdlibSchemaCommit`.

## 1.6.0
* Update Flutter version
* Update tdlib api to **1.8.15**
* Fix web plugin registration
* Compatible android plugin for Flutter v3

## 1.5.9
* Support null safety
* Add Support for IOS, macOs, Windows and Web.
* Update tdlib api to **v1.8.0**
* Change [MethodChannel](https://api.flutter.dev/flutter/services/MethodChannel-class.html) to [ffi](https://docs.flutter.dev/development/platform-integration/c-interop)
* Add `TdPlugin` class, TDLib Library wrapper.
* Change TdClient to functions.
* Now all `TdObject`s are constant.
* Add `copyWith` method to `TdObject`s.
* Remove `extra` from `TdFunction`, and add `extra` parameter to `toJson` method.

## 1.5.0
* Update tdlib api to **v1.7.0**

## 1.4.2
* Stop stream on `destroyClient`.

## 1.4.0
* Update tdlib api to **v1.6.10**

## 1.3.0
* Update tdlib api to **v1.6.8**

## 1.2.2
* Fix call `toJson` for _Null_ parameters (#14)
* Convert mistakenly returned int64 as a string to int (#15, #18)
* Reformat documents style

## 1.2.1
* Update tdlib api to **v1.6.7**
* new `clientEvents` method for `TdClient`, Stream events from the incoming updates and request responses from the TDLib client.

## 1.1.1
* Now getConstructor is not static

## 1.1.0
* Fix typo in generator
* Final step for example issue

## 1.0.4
* Update tdlib api to **v1.6.6**
* Remove `setLogVerbosityLevel` method.
* Add [Generator Script](/generator) that generates **tdapi**

## 1.0.2
* Update tdlib api to **v1.5.1**
* TdClient static methods
* Rollback _client identifier_ for `clientExecute` method

## 1.0.1
* Ignore `NULL` result in TDLib send method (prefer handling by user)
* Rename file names : tdapi.dart => td_api.dart, client.dart => td_client.dart 
* Rename class names : TLObject => TdObject, TLFunction => TdFunction, Client => TdClient
## 1.0.0
* Fix bug in `convertToObject` function
* Pass NULL pointer to `td_json_client_execute` instead of a previously created JSON client.(no required _client identifier_ for `clientExecute` method)

## 0.0.2
* add more description and fix cmake bug
## 0.0.1

* Initial release.
