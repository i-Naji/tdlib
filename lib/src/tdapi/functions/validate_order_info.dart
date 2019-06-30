part of '../tdapi.dart';

class ValidateOrderInfo extends TLFunction {
  int chatId;
  int messageId;
  OrderInfo orderInfo;
  bool allowSave;
  dynamic extra;

  /// Validates the order information provided by a user and returns the available shipping options for a flexible invoice.
  ///[chatId] Chat identifier of the Invoice message .
  /// [messageId] Message identifier .
  /// [orderInfo] The order information, provided by the user .
  /// [allowSave] True, if the order information can be saved
  ValidateOrderInfo(
      {this.chatId, this.messageId, this.orderInfo, this.allowSave});

  /// Parse from a json
  ValidateOrderInfo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'message_id': this.messageId,
      'order_info': this.orderInfo.toJson(),
      'allow_save': this.allowSave,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'validateOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
