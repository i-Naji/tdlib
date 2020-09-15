part of '../tdapi.dart';

class ViewMessages extends TdFunction {

  /// Informs TDLib that messages are being viewed by the user. Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels)
  ViewMessages({this.chatId,
    this.messageIds,
    this.forceRead});

  /// [chatId] Chat identifier 
  int chatId;

  /// [messageIds] The identifiers of the messages being viewed
  List<int> messageIds;

  /// [forceRead] True, if messages in closed chats should be marked as read
  bool forceRead;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ViewMessages.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_ids": this.messageIds.map((i) => i).toList(),
      "force_read": this.forceRead,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'viewMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}