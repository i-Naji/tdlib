part of '../tdapi.dart';

class ReorderBotActiveUsernames extends TdFunction {
  /// Changes order of active usernames of a bot. Can be called only if userTypeBot.can_be_edited == true
  const ReorderBotActiveUsernames({
    required this.botUserId,
    required this.usernames,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [usernames] The new order of active usernames. All currently active usernames must be specified
  final List<String> usernames;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "usernames": usernames.map((i) => i).toList(),
      "@extra": extra,
    };
  }

  ReorderBotActiveUsernames copyWith({
    int? botUserId,
    List<String>? usernames,
  }) =>
      ReorderBotActiveUsernames(
        botUserId: botUserId ?? this.botUserId,
        usernames: usernames ?? this.usernames,
      );

  static const CONSTRUCTOR = 'reorderBotActiveUsernames';

  @override
  String getConstructor() => CONSTRUCTOR;
}
