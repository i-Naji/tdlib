part of '../tdapi.dart';

class SetAccountTtl extends TdFunction {
  /// Changes the period of inactivity after which the account of the current user will automatically be deleted
  SetAccountTtl({this.ttl});

  /// [ttl] New account TTL
  AccountTtl ttl;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetAccountTtl.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "ttl": this.ttl == null ? null : this.ttl.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setAccountTtl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
