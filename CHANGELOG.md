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
* Add [Generator Script](\generator) that generates **tdapi**

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
