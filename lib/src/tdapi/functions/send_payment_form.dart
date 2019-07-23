part of '../tdapi.dart';

class SendPaymentForm extends TdFunction {
  int chatId;
  int messageId;
  String orderInfoId;
  String shippingOptionId;
  var credentials;
  dynamic extra;

  /// Sends a filled-out payment form to the bot for final verification.
  ///[chatId] Chat identifier of the Invoice message .
  /// [messageId] Message identifier .
  /// [orderInfoId] Identifier returned by ValidateOrderInfo, or an empty string .
  /// [shippingOptionId] Identifier of a chosen shipping option, if applicable.
  /// [credentials] The credentials chosen by user for payment
  SendPaymentForm(
      {this.chatId,
      this.messageId,
      this.orderInfoId,
      this.shippingOptionId,
      this.credentials});

  /// Parse from a json
  SendPaymentForm.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "order_info_id": this.orderInfoId,
      "shipping_option_id": this.shippingOptionId,
      "credentials": this.credentials.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "sendPaymentForm";

  @override
  String getConstructor() => CONSTRUCTOR;
}
