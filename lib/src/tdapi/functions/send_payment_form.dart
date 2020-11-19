part of '../tdapi.dart';

class SendPaymentForm extends TdFunction {
  /// Sends a filled-out payment form to the bot for final verification
  SendPaymentForm(
      {this.chatId,
      this.messageId,
      this.orderInfoId,
      this.shippingOptionId,
      this.credentials});

  /// [chatId] Chat identifier of the Invoice message
  int chatId;

  /// [messageId] Message identifier
  int messageId;

  /// [orderInfoId] Identifier returned by ValidateOrderInfo, or an empty string
  String orderInfoId;

  /// [shippingOptionId] Identifier of a chosen shipping option, if applicable
  String shippingOptionId;

  /// [credentials] The credentials chosen by user for payment
  InputCredentials credentials;

  /// callback sign
  dynamic extra;

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
      "credentials":
          this.credentials == null ? null : this.credentials.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendPaymentForm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
