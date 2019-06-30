part of '../tdapi.dart';

class SendCallDebugInformation extends TLFunction {
  int callId;
  String debugInformation;
  dynamic extra;

  /// Sends debug information for a call.
  ///[callId] Call identifier .
  /// [debugInformation] Debug information in application-specific format
  SendCallDebugInformation({this.callId, this.debugInformation});

  /// Parse from a json
  SendCallDebugInformation.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'call_id': this.callId,
      'debug_information': this.debugInformation,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'sendCallDebugInformation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
