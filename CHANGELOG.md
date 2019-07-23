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
