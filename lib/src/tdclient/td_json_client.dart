part of 'td_client.dart';

// TDLib's older interface with one TDLib instance per client, each with its
// own receive call. Still supported by TDLib; [tdCreate], [tdSend] and
// [tdReceive] serve every client from one receive loop instead.

const _useClientId =
    'Use tdCreate, tdSend and tdReceive (or package:tdlib/td_runtime.dart).';

/// Creates a new instance of TDLib and returns its handle.
@Deprecated(_useClientId)
int tdJsonClientCreate() => TdPlugin.instance.tdJsonClientCreate();

/// Destroys the TDLib instance [clientId]. It must not be used afterwards.
@Deprecated(_useClientId)
void tdJsonClientDestroy(int clientId) =>
    TdPlugin.instance.tdJsonClientDestroy(clientId);

/// Sends [event] to the TDLib instance [clientId], tagged with [extra] if
/// given. May be called from any thread.
@Deprecated(_useClientId)
void tdJsonClientSend(int clientId, TdFunction event, [dynamic extra]) {
  TdPlugin.instance.tdJsonClientSend(
    clientId,
    json.encode(event.toJson(extra)),
  );
}

/// Receives the next update or response of the TDLib instance [clientId],
/// waiting up to [timeout] seconds. Must not run on two threads at once.
@Deprecated(_useClientId)
TdObject? tdJsonClientReceive(int clientId, [double timeout = 8]) =>
    convertToObject(TdPlugin.instance.tdJsonClientReceive(clientId, timeout));

/// Executes [event] synchronously (only requests documented as such).
@Deprecated('Use tdExecute.')
TdObject? tdJsonClientExecute(TdFunction event) => convertToObject(
  TdPlugin.instance.tdJsonClientExecute(json.encode(event.toJson())),
);
