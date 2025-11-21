import 'dart:js_interop';

/// The tdweb client the page loads from `tdlib.js` (`window.tdlib.default`).
@JS('tdlib.default')
extension type TdWebPlatform._(JSObject _) implements JSObject {
  external TdWebPlatform();

  /// Loads the TDLib module; [mode] is `wasm` (default) or `asmjs`.
  external JSPromise<JSAny?> init([JSString? mode]);

  @JS('td_create')
  external int tdCreate();

  @JS('td_send')
  external void tdSend(int clientId, String query);

  @JS('td_execute')
  external String? tdExecute(String query);

  @JS('td_receive')
  external String? tdReceive();

  @JS('td_get_timeout')
  external int tdGetTimeout();
}
