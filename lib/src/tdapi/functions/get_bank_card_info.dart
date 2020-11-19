part of '../tdapi.dart';

class GetBankCardInfo extends TdFunction {
  /// Returns information about a bank card
  GetBankCardInfo({this.bankCardNumber});

  /// [bankCardNumber] The bank card number
  String bankCardNumber;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetBankCardInfo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bank_card_number": this.bankCardNumber,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getBankCardInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
