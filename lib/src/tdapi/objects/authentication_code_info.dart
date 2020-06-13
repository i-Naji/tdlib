part of '../tdapi.dart';

class AuthenticationCodeInfo extends TdObject {
  String phoneNumber;
  AuthenticationCodeType type;
  AuthenticationCodeType nextType;
  int timeout;
  dynamic extra;

  /// Information about the authentication code that was sent. 
  /// [phoneNumber] A phone number that is being authenticated . 
  /// [type] Describes the way the code was sent to the user . 
  /// [nextType] Describes the way the next code will be sent to the user; may be null . 
  /// [timeout] Timeout before the code should be re-sent, in seconds
  AuthenticationCodeInfo({this.phoneNumber,
    this.type,
    this.nextType,
    this.timeout});

  /// Parse from a json
  AuthenticationCodeInfo.fromJson(Map<String, dynamic> json)  {
    this.phoneNumber = json['phone_number'];
    this.type = AuthenticationCodeType.fromJson(json['type'] ?? <String, dynamic>{});
    this.nextType = AuthenticationCodeType.fromJson(json['next_type'] ?? <String, dynamic>{});
    this.timeout = json['timeout'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": this.phoneNumber,
      "type": this.type.toJson(),
      "next_type": this.nextType.toJson(),
      "timeout": this.timeout,
    };
  }

  static const CONSTRUCTOR = 'authenticationCodeInfo';
}