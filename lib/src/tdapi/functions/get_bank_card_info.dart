part of '../tdapi.dart';

class GetBankCardInfo extends TdFunction {

  /// Returns information about a bank card
  const GetBankCardInfo({
    required this.bankCardNumber,
  });
  
  /// [bankCardNumber] The bank card number
  final String bankCardNumber;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bank_card_number": bankCardNumber,
      "@extra": extra,
    };
  }
  
  GetBankCardInfo copyWith({
    String? bankCardNumber,
  }) => GetBankCardInfo(
    bankCardNumber: bankCardNumber ?? this.bankCardNumber,
  );

  static const CONSTRUCTOR = 'getBankCardInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
