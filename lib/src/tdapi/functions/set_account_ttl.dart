part of '../tdapi.dart';

class SetAccountTtl extends TdFunction {

  /// Changes the period of inactivity after which the account of the current user will automatically be deleted
  const SetAccountTtl({
    required this.ttl,
  });
  
  /// [ttl] New account TTL
  final AccountTtl ttl;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "ttl": ttl.toJson(),
      "@extra": extra,
    };
  }
  
  SetAccountTtl copyWith({
    AccountTtl? ttl,
  }) => SetAccountTtl(
    ttl: ttl ?? this.ttl,
  );

  static const CONSTRUCTOR = 'setAccountTtl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
