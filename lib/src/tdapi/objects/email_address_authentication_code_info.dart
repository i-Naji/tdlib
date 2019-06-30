part of '../tdapi.dart';

class EmailAddressAuthenticationCodeInfo implements TLObject {
  String emailAddressPattern;
  int length;
  dynamic extra;

  /// Information about the email address authentication code that was sent.
  ///[emailAddressPattern] Pattern of the email address to which an authentication code was sent .
  /// [length] Length of the code; 0 if unknown
  EmailAddressAuthenticationCodeInfo({this.emailAddressPattern, this.length});

  /// Parse from a json
  EmailAddressAuthenticationCodeInfo.fromJson(Map<String, dynamic> json) {
    this.emailAddressPattern = json['email_address_pattern'];
    this.length = json['length'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'email_address_pattern': this.emailAddressPattern,
      'length': this.length
    };
  }

  static const String CONSTRUCTOR = 'emailAddressAuthenticationCodeInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
