part of '../tdapi.dart';

class EmailAddressAuthenticationCodeInfo extends TdObject {

  /// Information about the email address authentication code that was sent
  const EmailAddressAuthenticationCodeInfo({
    required this.emailAddressPattern,
    required this.length,
    this.extra,
    this.clientId,
  });
  
  /// [emailAddressPattern] Pattern of the email address to which an authentication code was sent 
  final String emailAddressPattern;

  /// [length] Length of the code; 0 if unknown
  final int length;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory EmailAddressAuthenticationCodeInfo.fromJson(Map<String, dynamic> json) => EmailAddressAuthenticationCodeInfo(
    emailAddressPattern: json['email_address_pattern'],
    length: json['length'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "email_address_pattern": emailAddressPattern,
      "length": length,
    };
  }
  
  EmailAddressAuthenticationCodeInfo copyWith({
    String? emailAddressPattern,
    int? length,
    dynamic extra,
    int? clientId,
  }) => EmailAddressAuthenticationCodeInfo(
    emailAddressPattern: emailAddressPattern ?? this.emailAddressPattern,
    length: length ?? this.length,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'emailAddressAuthenticationCodeInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
