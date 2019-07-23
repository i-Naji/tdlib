part of '../tdapi.dart';

class TemporaryPasswordState implements TdObject {
  bool hasPassword;
  int validFor;
  dynamic extra;

  /// Returns information about the availability of a temporary password, which can be used for payments.
  ///[hasPassword] True, if a temporary password is available .
  /// [validFor] Time left before the temporary password expires, in seconds
  TemporaryPasswordState({this.hasPassword, this.validFor});

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
      "valid_for": this.validFor
    };
  }

  static const String CONSTRUCTOR = "temporaryPasswordState";

  @override
  String getConstructor() => CONSTRUCTOR;
}
