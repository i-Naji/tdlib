part of '../tdapi.dart';

class GetPaymentForm extends TdFunction {

  /// Returns an invoice payment form. This method must be called when the user presses inlineKeyboardButtonBuy
  const GetPaymentForm({
    required this.chatId,
    required this.messageId,
    this.theme,
  });
  
  /// [chatId] Chat identifier of the Invoice message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [theme] Preferred payment form theme; pass null to use the default theme
  final PaymentFormTheme? theme;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "theme": theme?.toJson(),
      "@extra": extra,
    };
  }
  
  GetPaymentForm copyWith({
    int? chatId,
    int? messageId,
    PaymentFormTheme? theme,
  }) => GetPaymentForm(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    theme: theme ?? this.theme,
  );

  static const CONSTRUCTOR = 'getPaymentForm';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
