part of '../tdapi.dart';

class TemporaryPasswordState extends TdObject {
  /// Returns information about the availability of a temporary password, which can be used for payments
  TemporaryPasswordState({this.hasPassword, this.validFor});

  /// [hasPassword] True, if a temporary password is available
  bool hasPassword;

  /// [validFor] Time left before the temporary password expires, in seconds
  int validFor;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  TemporaryPasswordState.fromJson(Map<String, dynamic> json) {
    this.hasPassword = json['has_password'];
    this.validFor = json['valid_for'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "has_password": this.hasPassword,
      "valid_for": this.validFor,
    };
  }

  static const CONSTRUCTOR = 'temporaryPasswordState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
