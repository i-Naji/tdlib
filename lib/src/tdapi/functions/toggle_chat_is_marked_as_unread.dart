part of '../tdapi.dart';

class ToggleChatIsMarkedAsUnread extends TdFunction {

  /// Changes the marked as unread state of a chat
  const ToggleChatIsMarkedAsUnread({
    required this.chatId,
    required this.isMarkedAsUnread,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [isMarkedAsUnread] New value of is_marked_as_unread
  final bool isMarkedAsUnread;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "is_marked_as_unread": isMarkedAsUnread,
      "@extra": extra,
    };
  }
  
  ToggleChatIsMarkedAsUnread copyWith({
    int? chatId,
    bool? isMarkedAsUnread,
  }) => ToggleChatIsMarkedAsUnread(
    chatId: chatId ?? this.chatId,
    isMarkedAsUnread: isMarkedAsUnread ?? this.isMarkedAsUnread,
  );

  static const CONSTRUCTOR = 'toggleChatIsMarkedAsUnread';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
