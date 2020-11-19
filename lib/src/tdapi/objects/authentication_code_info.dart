part of '../tdapi.dart';

class AuthenticationCodeInfo extends TdObject {
  /// Information about the authentication code that was sent
  AuthenticationCodeInfo(
      {this.phoneNumber, this.type, this.nextType, this.timeout});

  /// [phoneNumber] A phone number that is being authenticated
  String phoneNumber;

  /// [type] Describes the way the code was sent to the user
  AuthenticationCodeType type;

  /// [nextType] Describes the way the next code will be sent to the user; may be null
  AuthenticationCodeType nextType;

  /// [timeout] Timeout before the code should be re-sent, in seconds
  int timeout;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  AuthenticationCodeInfo.fromJson(Map<String, dynamic> json) {
    this.phoneNumber = json['phone_number'];
    this.type =
        AuthenticationCodeType.fromJson(json['type'] ?? <String, dynamic>{});
    this.nextType = AuthenticationCodeType.fromJson(
        json['next_type'] ?? <String, dynamic>{});
    this.timeout = json['timeout'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": this.phoneNumber,
      "type": this.type == null ? null : this.type.toJson(),
      "next_type": this.nextType == null ? null : this.nextType.toJson(),
      "timeout": this.timeout,
    };
  }

  static const CONSTRUCTOR = 'authenticationCodeInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
