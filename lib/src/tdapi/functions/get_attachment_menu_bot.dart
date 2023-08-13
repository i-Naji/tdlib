part of '../tdapi.dart';

class GetAttachmentMenuBot extends TdFunction {
  /// Returns information about a bot that can be added to attachment menu
  const GetAttachmentMenuBot({
    required this.botUserId,
  });

  /// [botUserId] Bot's user identifier
  final int botUserId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "@extra": extra,
    };
  }

  GetAttachmentMenuBot copyWith({
    int? botUserId,
  }) =>
      GetAttachmentMenuBot(
        botUserId: botUserId ?? this.botUserId,
      );

  static const CONSTRUCTOR = 'getAttachmentMenuBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}
