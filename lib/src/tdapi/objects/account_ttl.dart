part of '../tdapi.dart';

class AccountTtl extends TdObject {

  /// Contains information about the period of inactivity after which the current user's account will automatically be deleted
  const AccountTtl({
    required this.days,
    this.extra,
    this.clientId,
  });
  
  /// [days] Number of days of inactivity before the account will be flagged for deletion; 30-366 days
  final int days;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AccountTtl.fromJson(Map<String, dynamic> json) => AccountTtl(
    days: json['days'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "days": days,
    };
  }
  
  AccountTtl copyWith({
    int? days,
    dynamic extra,
    int? clientId,
  }) => AccountTtl(
    days: days ?? this.days,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'accountTtl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
