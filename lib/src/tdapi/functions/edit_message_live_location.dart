part of '../tdapi.dart';

class EditMessageLiveLocation extends TdFunction {

  /// Edits the message content of a live location. Messages can be edited for a limited period of time specified in the live location. Returns the edited message after the edit is completed on the server side
  EditMessageLiveLocation({this.chatId,
    this.messageId,
    this.replyMarkup,
    this.location});

  /// [chatId] The chat the message belongs to
  int chatId;

  /// [messageId] Identifier of the message 
  int messageId;

  /// [replyMarkup] The new message reply markup; for bots only 
  ReplyMarkup replyMarkup;

  /// [location] New location content of the message; may be null. Pass null to stop sharing the live location
  Location location;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  EditMessageLiveLocation.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "reply_markup": this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "location": this.location == null ? null : this.location.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editMessageLiveLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}