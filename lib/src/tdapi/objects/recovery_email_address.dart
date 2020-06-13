part of '../tdapi.dart';

class RecoveryEmailAddress extends TdObject {
  String recoveryEmailAddress;
  dynamic extra;

  /// Contains information about the current recovery email address. 
  /// [recoveryEmailAddress] Recovery email address
  RecoveryEmailAddress({this.recoveryEmailAddress});

  /// Parse from a json
  RecoveryEmailAddress.fromJson(Map<String, dynamic> json)  {
    this.recoveryEmailAddress = json['recovery_email_address'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "recovery_email_address": this.recoveryEmailAddress,
    };
  }

  static const CONSTRUCTOR = 'recoveryEmailAddress';
}