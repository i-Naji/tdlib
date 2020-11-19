part of '../tdapi.dart';

class GetAccountTtl extends TdFunction {
  /// Returns the period of inactivity after which the account of the current user will automatically be deleted
  GetAccountTtl();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetAccountTtl.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getAccountTtl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
