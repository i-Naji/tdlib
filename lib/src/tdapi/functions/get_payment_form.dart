part of '../tdapi.dart';

class GetPaymentForm extends TdFunction {
  /// Returns an invoice payment form. This method should be called when the user presses inlineKeyboardButtonBuy
  GetPaymentForm({this.chatId, this.messageId});

  /// [chatId] Chat identifier of the Invoice message
  int chatId;

  /// [messageId] Message identifier
  int messageId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetPaymentForm.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPaymentForm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
