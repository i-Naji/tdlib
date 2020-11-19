part of '../tdapi.dart';

class TerminateSession extends TdFunction {
  /// Terminates a session of the current user
  TerminateSession({this.sessionId});

  /// [sessionId] Session identifier
  int sessionId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  TerminateSession.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "session_id": this.sessionId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'terminateSession';

  @override
  String getConstructor() => CONSTRUCTOR;
}
