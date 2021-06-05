part of '../tdapi.dart';

class AccountTtl extends TdObject {
  /// Contains information about the period of inactivity after which the current user's account will automatically be deleted
  AccountTtl({required this.days, this.extra});

  /// [days] Number of days of inactivity before the account will be flagged for deletion; should range from 30-366 days
  int days;

  /// callback sign
  dynamic? extra;

  /// Parse from a json
  factory AccountTtl.fromJson(Map<String, dynamic> json) {
    return AccountTtl(
      days: json['days'],
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "days": this.days,
    };
  }

  static const CONSTRUCTOR = 'accountTtl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
