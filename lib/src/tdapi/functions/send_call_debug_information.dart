part of '../tdapi.dart';

class SendCallDebugInformation extends TdFunction {

  /// Sends debug information for a call
  const SendCallDebugInformation({
    required this.callId,
    required this.debugInformation,
  });
  
  /// [callId] Call identifier 
  final int callId;

  /// [debugInformation] Debug information in application-specific format
  final String debugInformation;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "call_id": callId,
      "debug_information": debugInformation,
      "@extra": extra,
    };
  }
  
  SendCallDebugInformation copyWith({
    int? callId,
    String? debugInformation,
  }) => SendCallDebugInformation(
    callId: callId ?? this.callId,
    debugInformation: debugInformation ?? this.debugInformation,
  );

  static const CONSTRUCTOR = 'sendCallDebugInformation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
