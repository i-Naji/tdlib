part of '../tdapi.dart';

class EditInlineMessageLiveLocation extends TdFunction {

  /// Edits the content of a live location in an inline message sent via a bot; for bots only
  EditInlineMessageLiveLocation({this.inlineMessageId,
    this.replyMarkup,
    this.location});

  /// [inlineMessageId] Inline message identifier 
  String inlineMessageId;

  /// [replyMarkup] The new message reply markup 
  ReplyMarkup replyMarkup;

  /// [location] New location content of the message; may be null. Pass null to stop sharing the live location
  Location location;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  EditInlineMessageLiveLocation.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": this.inlineMessageId,
      "reply_markup": this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "location": this.location == null ? null : this.location.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editInlineMessageLiveLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}