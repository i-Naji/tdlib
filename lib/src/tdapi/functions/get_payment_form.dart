part of '../tdapi.dart';

class GetPaymentForm extends TdFunction {
  /// Returns an invoice payment form. This method must be called when the user presses inlineKeyboardButtonBuy
  const GetPaymentForm({
    required this.inputInvoice,
    this.theme,
  });

  /// [inputInvoice] The invoice
  final InputInvoice inputInvoice;

  /// [theme] Preferred payment form theme; pass null to use the default theme
  final ThemeParameters? theme;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "input_invoice": inputInvoice.toJson(),
      "theme": theme?.toJson(),
      "@extra": extra,
    };
  }

  GetPaymentForm copyWith({
    InputInvoice? inputInvoice,
    ThemeParameters? theme,
  }) =>
      GetPaymentForm(
        inputInvoice: inputInvoice ?? this.inputInvoice,
        theme: theme ?? this.theme,
      );

  static const CONSTRUCTOR = 'getPaymentForm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
