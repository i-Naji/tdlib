part of '../tdapi.dart';

class ToggleChatHasProtectedContent extends TdFunction {

  /// Changes the ability of users to save, forward, or copy chat content. Supported only for basic groups, supergroups and channels. Requires owner privileges
  const ToggleChatHasProtectedContent({
    required this.chatId,
    required this.hasProtectedContent,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [hasProtectedContent] True, if chat content can't be saved locally, forwarded, or copied
  final bool hasProtectedContent;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "has_protected_content": hasProtectedContent,
      "@extra": extra,
    };
  }
  
  ToggleChatHasProtectedContent copyWith({
    int? chatId,
    bool? hasProtectedContent,
  }) => ToggleChatHasProtectedContent(
    chatId: chatId ?? this.chatId,
    hasProtectedContent: hasProtectedContent ?? this.hasProtectedContent,
  );

  static const CONSTRUCTOR = 'toggleChatHasProtectedContent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
