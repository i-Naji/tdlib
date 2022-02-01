part of '../tdapi.dart';

class TerminateSession extends TdFunction {

  /// Terminates a session of the current user
  const TerminateSession({
    required this.sessionId,
  });
  
  /// [sessionId] Session identifier
  final int sessionId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "session_id": sessionId,
      "@extra": extra,
    };
  }
  
  TerminateSession copyWith({
    int? sessionId,
  }) => TerminateSession(
    sessionId: sessionId ?? this.sessionId,
  );

  static const CONSTRUCTOR = 'terminateSession';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
