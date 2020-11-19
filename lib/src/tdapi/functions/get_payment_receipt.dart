part of '../tdapi.dart';

class GetPaymentReceipt extends TdFunction {
  /// Returns information about a successful payment
  GetPaymentReceipt({this.chatId, this.messageId});

  /// [chatId] Chat identifier of the PaymentSuccessful message
  int chatId;

  /// [messageId] Message identifier
  int messageId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetPaymentReceipt.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPaymentReceipt';

  @override
  String getConstructor() => CONSTRUCTOR;
}
