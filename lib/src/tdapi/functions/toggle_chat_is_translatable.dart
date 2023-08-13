part of '../tdapi.dart';

class ToggleChatIsTranslatable extends TdFunction {
  /// Changes the translatable state of a chat; for Telegram Premium users only
  const ToggleChatIsTranslatable({
    required this.chatId,
    required this.isTranslatable,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [isTranslatable] New value of is_translatable
  final bool isTranslatable;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "is_translatable": isTranslatable,
      "@extra": extra,
    };
  }

  ToggleChatIsTranslatable copyWith({
    int? chatId,
    bool? isTranslatable,
  }) =>
      ToggleChatIsTranslatable(
        chatId: chatId ?? this.chatId,
        isTranslatable: isTranslatable ?? this.isTranslatable,
      );

  static const CONSTRUCTOR = 'toggleChatIsTranslatable';

  @override
  String getConstructor() => CONSTRUCTOR;
}
