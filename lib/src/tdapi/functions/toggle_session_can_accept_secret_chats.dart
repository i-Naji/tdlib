part of '../tdapi.dart';

class ToggleSessionCanAcceptSecretChats extends TdFunction {
  /// Toggles whether a session can accept incoming secret chats
  const ToggleSessionCanAcceptSecretChats({
    required this.sessionId,
    required this.canAcceptSecretChats,
  });

  /// [sessionId] Session identifier
  final int sessionId;

  /// [canAcceptSecretChats] Pass true to allow accepting secret chats by the session; pass false otherwise
  final bool canAcceptSecretChats;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "session_id": sessionId,
      "can_accept_secret_chats": canAcceptSecretChats,
      "@extra": extra,
    };
  }

  ToggleSessionCanAcceptSecretChats copyWith({
    int? sessionId,
    bool? canAcceptSecretChats,
  }) =>
      ToggleSessionCanAcceptSecretChats(
        sessionId: sessionId ?? this.sessionId,
        canAcceptSecretChats: canAcceptSecretChats ?? this.canAcceptSecretChats,
      );

  static const CONSTRUCTOR = 'toggleSessionCanAcceptSecretChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
