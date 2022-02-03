part of '../tdapi.dart';

class ValidateOrderInfo extends TdFunction {

  /// Validates the order information provided by a user and returns the available shipping options for a flexible invoice
  const ValidateOrderInfo({
    required this.chatId,
    required this.messageId,
    this.orderInfo,
    required this.allowSave,
  });
  
  /// [chatId] Chat identifier of the Invoice message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [orderInfo] The order information, provided by the user; pass null if empty
  final OrderInfo? orderInfo;

  /// [allowSave] True, if the order information can be saved
  final bool allowSave;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "order_info": orderInfo?.toJson(),
      "allow_save": allowSave,
      "@extra": extra,
    };
  }
  
  ValidateOrderInfo copyWith({
    int? chatId,
    int? messageId,
    OrderInfo? orderInfo,
    bool? allowSave,
  }) => ValidateOrderInfo(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    orderInfo: orderInfo ?? this.orderInfo,
    allowSave: allowSave ?? this.allowSave,
  );

  static const CONSTRUCTOR = 'validateOrderInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
