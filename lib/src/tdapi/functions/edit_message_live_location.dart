part of '../tdapi.dart';

class EditMessageLiveLocation extends TdFunction {
  /// Edits the message content of a live location. Messages can be edited for a limited period of time specified in the live location. Returns the edited message after the edit is completed on the server side
  EditMessageLiveLocation(
      {this.chatId,
      this.messageId,
      this.replyMarkup,
      this.location,
      this.heading,
      this.proximityAlertRadius});

  /// [chatId] The chat the message belongs to
  int chatId;

  /// [messageId] Identifier of the message
  int messageId;

  /// [replyMarkup] The new message reply markup; for bots only
  ReplyMarkup replyMarkup;

  /// [location] New location content of the message; may be null. Pass null to stop sharing the live location
  Location location;

  /// [heading] The new direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  int heading;

  /// [proximityAlertRadius] The new maximum distance for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled
  int proximityAlertRadius;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  EditMessageLiveLocation.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "location": this.location == null ? null : this.location.toJson(),
      "heading": this.heading,
      "proximity_alert_radius": this.proximityAlertRadius,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editMessageLiveLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
