// ignore_for_file: non_constant_identifier_names
@JS()
library tdlib.web_interop;

import 'package:flutter/foundation.dart' show visibleForTesting;
import 'package:js/js.dart';

@visibleForTesting
@JS()
abstract class Promise<T> {
  external factory Promise(
      void Function(void Function(T result) resolve, Function reject) executor);
  external Promise then(void Function(T result) onFulfilled,
      [Function onRejected]);
}

@JS("tdlib.default")
class TdWebPlatform {
  external factory TdWebPlatform();
  external Promise<void> init([tdlib_mode]);
  // external Promise<void> initialize([String? libPath]);
  external int td_create();
  external void td_send(int clientId, String query);
  external String? td_execute(String query);
  external String? td_receive();
  external int td_get_timeout();
}
