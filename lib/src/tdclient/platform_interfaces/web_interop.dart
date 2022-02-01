@JS()
library tdlib.web_interop;

import 'package:flutter/foundation.dart' show visibleForTesting;
import 'package:js/js.dart';

@visibleForTesting
@JS()
abstract class Promise<T> {
  external factory Promise(
      void Function(void Function(T result) resolve, Function reject) executor);
  external Promise then(void Function(T result) onFulfilled, [Function onRejected]);
}

@JS("tdlib.default")
class TdWebPlatform {
  external factory TdWebPlatform();
  external bool wasInit;
  external Promise<void> initialize([String? libPath]);
  external int createClientId();
  external String? receive();
  external void send(int clientId, String query);
  external String? execute(String query);
  external num getTimeout();
}