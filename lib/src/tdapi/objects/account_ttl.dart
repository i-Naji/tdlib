part of '../tdapi.dart';

class AccountTtl implements TLObject {
  int days;
  dynamic extra;

  /// Contains information about the period of inactivity after which the current user's account will automatically be deleted.
  ///[days] Number of days of inactivity before the account will be flagged for deletion; should range from 30-366 days
  AccountTtl({this.days});

  /// Parse from a json
  AccountTtl.fromJson(Map<String, dynamic> json) {
    this.days = json['days'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'days': this.days};
  }

  static const String CONSTRUCTOR = 'accountTtl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
