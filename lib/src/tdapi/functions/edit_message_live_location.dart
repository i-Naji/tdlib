part of '../tdapi.dart';

class EditMessageLiveLocation extends TdFunction {
  int chatId;
  int messageId;
  var replyMarkup;
  Location location;
  dynamic extra;

  /// Edits the message content of a live location. Messages can be edited for a limited period of time specified in the live location. Returns the edited message after the edit is completed on the server side.
  ///[chatId] The chat the message belongs to .
  /// [messageId] Identifier of the message .
  /// [replyMarkup] The new message reply markup; for bots only .
  /// [location] New location content of the message; may be null. Pass null to stop sharing the live location
  EditMessageLiveLocation(
      {this.chatId, this.messageId, this.replyMarkup, this.location});

  /// Parse from a json
  EditMessageLiveLocation.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "reply_markup": this.replyMarkup.toJson(),
      "location": this.location.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "editMessageLiveLocation";

  @override
  String getConstructor() => CONSTRUCTOR;
}
