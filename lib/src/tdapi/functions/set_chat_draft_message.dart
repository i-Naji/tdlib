part of '../tdapi.dart';

class SetChatDraftMessage extends TdFunction {

  /// Changes the draft message in a chat
  SetChatDraftMessage({this.chatId,
    this.draftMessage});

  /// [chatId] Chat identifier 
  int chatId;

  /// [draftMessage] New draft message; may be null
  DraftMessage draftMessage;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetChatDraftMessage.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "draft_message": this.draftMessage == null ? null : this.draftMessage.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatDraftMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}