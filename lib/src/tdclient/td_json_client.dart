part of 'td_client.dart';

/// Creates a new instance of TDLib.
/// Returns client id for the created instance of TDLib.
int tdJsonClientCreate() => TdPlugin.instance.tdJsonClientCreate();

/// Destroys the TDLib client instance by [clientId] identifier. After this is called the client instance must not be used anymore.
void tdJsonClientDestroy(int clientId) => TdPlugin.instance.tdJsonClientDestroy(clientId);

/// Sends [TdFunction] [event] to the TDLib client by [clientId] identifier. May be called from any thread.
void tdJsonClientSend(int clientId, TdFunction event, [dynamic extra]) {
  final req = json.encode(event.toJson(extra));
  TdPlugin.instance.tdJsonClientSend(clientId, req,);
}

/// Events from the incoming updates and request responses from the TDLib client by [clientId] identifier.
/// Must be call once per client.
// static Stream<TdObject?> clientEvents(int clientId) {
//   return _eventChannel
//       .receiveBroadcastStream(clientId)
//       .map((event) => convertToObject(event));
// }

/// Receives incoming updates and request responses from the TDLib client by [clientId] identifier and [timeout].
/// May be called from any thread, but shouldn't be called simultaneously from two different threads.
TdObject? tdJsonClientReceive(int clientId, [double timeout = 8]) {
  final res = TdPlugin.instance.tdJsonClientReceive(clientId, timeout,);
  return convertToObject(res);
}

/// Synchronously executes TDLib [TdFunction] [event]. May be called from any thread.
/// Only a few requests can be executed synchronously.
TdObject? tdJsonClientExecute(TdFunction event){
  final req = json.encode(event);
  final res = TdPlugin.instance.tdJsonClientExecute(req);
  return convertToObject(res);
}
