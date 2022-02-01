part of '../tdapi.dart';

class ToggleSessionCanAcceptCalls extends TdFunction {

  /// Toggles whether a session can accept incoming calls
  const ToggleSessionCanAcceptCalls({
    required this.sessionId,
    required this.canAcceptCalls,
  });
  
  /// [sessionId] Session identifier 
  final int sessionId;

  /// [canAcceptCalls] True, if incoming calls can be accepted by the session
  final bool canAcceptCalls;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "session_id": sessionId,
      "can_accept_calls": canAcceptCalls,
      "@extra": extra,
    };
  }
  
  ToggleSessionCanAcceptCalls copyWith({
    int? sessionId,
    bool? canAcceptCalls,
  }) => ToggleSessionCanAcceptCalls(
    sessionId: sessionId ?? this.sessionId,
    canAcceptCalls: canAcceptCalls ?? this.canAcceptCalls,
  );

  static const CONSTRUCTOR = 'toggleSessionCanAcceptCalls';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
