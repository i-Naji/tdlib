part of '../tdapi.dart';

class SetChatPhoto extends TLFunction {
  int chatId;
  var photo;
  dynamic extra;

  /// Changes the photo of a chat. Supported only for basic groups, supergroups and channels. Requires administrator rights in basic groups and the appropriate administrator rights in supergroups and channels. The photo will not be changed before request to the server has been completed.
  ///[chatId] Chat identifier .
  /// [photo] New chat photo. You can use a zero InputFileId to delete the chat photo. Files that are accessible only by HTTP URL are not acceptable
  SetChatPhoto({this.chatId, this.photo});

  /// Parse from a json
  SetChatPhoto.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "photo": this.photo.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "setChatPhoto";

  @override
  String getConstructor() => CONSTRUCTOR;
}
