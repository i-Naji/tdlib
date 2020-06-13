part of '../tdapi.dart';

class GetPaymentReceipt extends TdFunction {
  int chatId;
  int messageId;
  dynamic extra;

  /// Returns information about a successful payment. 
  /// [chatId] Chat identifier of the PaymentSuccessful message . 
  /// [messageId] Message identifier
  GetPaymentReceipt({this.chatId,
    this.messageId});

  /// Parse from a json
  GetPaymentReceipt.fromJson(Map<String, dynamic> json) ;

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
}