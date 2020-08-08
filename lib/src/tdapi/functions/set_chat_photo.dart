part of '../tdapi.dart';

class SetChatPhoto extends TdFunction {
  int chatId;
  InputChatPhoto photo;
  dynamic extra;

  /// Changes the photo of a chat. Supported only for basic groups, supergroups and channels. Requires can_change_info rights. 
  /// [chatId] Chat identifier. 
  /// [photo] New chat photo. You can pass null to delete the chat photo
  SetChatPhoto({this.chatId,
    this.photo});

  /// Parse from a json
  SetChatPhoto.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "photo": this.photo.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}