part of '../tdapi.dart';

class GetTonWalletPasswordSalt extends TdFunction {
  dynamic extra;

  /// Returns a salt to be used with locally stored password to access a local TON-based wallet.
  ///
  GetTonWalletPasswordSalt();

  /// Parse from a json
  GetTonWalletPasswordSalt.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getTonWalletPasswordSalt";

  @override
  String getConstructor() => CONSTRUCTOR;
}
