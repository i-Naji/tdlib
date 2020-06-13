part of '../tdapi.dart';

class SetAccountTtl extends TdFunction {
  AccountTtl ttl;
  dynamic extra;

  /// Changes the period of inactivity after which the account of the current user will automatically be deleted. 
  /// [ttl] New account TTL
  SetAccountTtl({this.ttl});

  /// Parse from a json
  SetAccountTtl.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "ttl": this.ttl.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setAccountTtl';
}