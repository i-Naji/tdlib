part of '../tdapi.dart';

class TonWalletPasswordSalt implements TdObject {
  String salt;
  dynamic extra;

  /// Contains the salt to be used with locally stored password to access a local TON-based wallet.
  ///[salt] The salt
  TonWalletPasswordSalt({this.salt});

  /// Parse from a json
  TonWalletPasswordSalt.fromJson(Map<String, dynamic> json) {
    this.salt = json['salt'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "salt": this.salt};
  }

  static const String CONSTRUCTOR = "tonWalletPasswordSalt";

  @override
  String getConstructor() => CONSTRUCTOR;
}
