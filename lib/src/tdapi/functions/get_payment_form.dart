part of '../tdapi.dart';

class GetPaymentForm extends TLFunction {
  int chatId;
  int messageId;
  dynamic extra;

  /// Returns an invoice payment form. This method should be called when the user presses inlineKeyboardButtonBuy.
  ///[chatId] Chat identifier of the Invoice message .
  /// [messageId] Message identifier
  GetPaymentForm({this.chatId, this.messageId});

  /// Parse from a json
  GetPaymentForm.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getPaymentForm";

  @override
  String getConstructor() => CONSTRUCTOR;
}
