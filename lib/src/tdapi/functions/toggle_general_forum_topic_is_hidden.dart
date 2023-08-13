part of '../tdapi.dart';

class ToggleGeneralForumTopicIsHidden extends TdFunction {
  /// Toggles whether a General topic is hidden in a forum supergroup chat; requires can_manage_topics administrator right in the supergroup
  const ToggleGeneralForumTopicIsHidden({
    required this.chatId,
    required this.isHidden,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [isHidden] Pass true to hide and close the General topic; pass false to unhide it
  final bool isHidden;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "is_hidden": isHidden,
      "@extra": extra,
    };
  }

  ToggleGeneralForumTopicIsHidden copyWith({
    int? chatId,
    bool? isHidden,
  }) =>
      ToggleGeneralForumTopicIsHidden(
        chatId: chatId ?? this.chatId,
        isHidden: isHidden ?? this.isHidden,
      );

  static const CONSTRUCTOR = 'toggleGeneralForumTopicIsHidden';

  @override
  String getConstructor() => CONSTRUCTOR;
}
