part of '../tdapi.dart';

class EditInlineMessageLiveLocation extends TdFunction {
  String inlineMessageId;
  ReplyMarkup replyMarkup;
  Location location;
  dynamic extra;

  /// Edits the content of a live location in an inline message sent via a bot; for bots only. 
  /// [inlineMessageId] Inline message identifier . 
  /// [replyMarkup] The new message reply markup . 
  /// [location] New location content of the message; may be null. Pass null to stop sharing the live location
  EditInlineMessageLiveLocation({this.inlineMessageId,
    this.replyMarkup,
    this.location});

  /// Parse from a json
  EditInlineMessageLiveLocation.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": this.inlineMessageId,
      "reply_markup": this.replyMarkup.toJson(),
      "location": this.location.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editInlineMessageLiveLocation';
}