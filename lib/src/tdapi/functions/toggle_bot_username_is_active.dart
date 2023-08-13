part of '../tdapi.dart';

class ToggleBotUsernameIsActive extends TdFunction {
  /// Changes active state for a username of a bot. The editable username can't be disabled. May return an error with a message "USERNAMES_ACTIVE_TOO_MUCH" if the maximum number of active usernames has been reached. Can be called only if userTypeBot.can_be_edited == true
  const ToggleBotUsernameIsActive({
    required this.botUserId,
    required this.username,
    required this.isActive,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [username] The username to change
  final String username;

  /// [isActive] Pass true to activate the username; pass false to disable it
  final bool isActive;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "username": username,
      "is_active": isActive,
      "@extra": extra,
    };
  }

  ToggleBotUsernameIsActive copyWith({
    int? botUserId,
    String? username,
    bool? isActive,
  }) =>
      ToggleBotUsernameIsActive(
        botUserId: botUserId ?? this.botUserId,
        username: username ?? this.username,
        isActive: isActive ?? this.isActive,
      );

  static const CONSTRUCTOR = 'toggleBotUsernameIsActive';

  @override
  String getConstructor() => CONSTRUCTOR;
}
