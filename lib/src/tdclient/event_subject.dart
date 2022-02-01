import 'dart:async' show StreamController;
import 'dart:isolate' show Isolate, ReceivePort;
import 'package:tdlib/src/tdapi/tdapi.dart'
    show TdObject, convertToObject;
import 'package:tdlib/src/tdclient/td_client.dart' show TdPlugin;


class EventSubject {

  final ReceivePort _receivePort;
  final Isolate _receiveIsolate;
  late final StreamController<TdObject> _eventController = StreamController.broadcast();

  static EventSubject? _instance;
  static EventSubject get instance => _instance!;

  EventSubject._(this._receivePort, this._receiveIsolate){
    _receivePort.listen(_onIsolateReceive);
  }

  static void initialize() async {
    final receivePort = ReceivePort("TDLib Receive Port");
    final receiveIsolate = await Isolate.spawn(
      _receive,
      receivePort.sendPort,
      debugName: "TDLib Isolated Receive",
    );
    _instance = EventSubject._(receivePort, receiveIsolate);
  }



  Stream<TdObject> listen(int clientId) {
    return _eventController.stream.where((event) => event.clientId == clientId);
  }

  static void _receive(args) {
    final sendPortToMain = args[0];
    while (true) {
      final s = TdPlugin.instance.tdReceive(8);
      if (s != null) {
        sendPortToMain.send(s);
      }
    }
  }

  void _onIsolateReceive(dynamic event) {
    final obj = convertToObject(event);
    if (obj != null) _eventController.add(obj);
  }

  void close() {
    _eventController.close();
    _receiveIsolate.kill(priority: Isolate.immediate);
    _receivePort.close();
  }
}
