part of '../tdapi.dart';

class SendCallLog extends TdFunction {
  /// Sends log file for a call to Telegram servers
  const SendCallLog({
    required this.callId,
    required this.logFile,
  });

  /// [callId] Call identifier
  final int callId;

  /// [logFile] Call log file. Only inputFileLocal and inputFileGenerated are supported
  final InputFile logFile;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "call_id": callId,
      "log_file": logFile.toJson(),
      "@extra": extra,
    };
  }

  SendCallLog copyWith({
    int? callId,
    InputFile? logFile,
  }) =>
      SendCallLog(
        callId: callId ?? this.callId,
        logFile: logFile ?? this.logFile,
      );

  static const CONSTRUCTOR = 'sendCallLog';

  @override
  String getConstructor() => CONSTRUCTOR;
}
