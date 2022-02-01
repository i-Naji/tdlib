part of '../tdapi.dart';

class AuthenticationCodeInfo extends TdObject {

  /// Information about the authentication code that was sent
  const AuthenticationCodeInfo({
    required this.phoneNumber,
    required this.type,
    this.nextType,
    required this.timeout,
    this.extra,
    this.clientId,
  });
  
  /// [phoneNumber] A phone number that is being authenticated 
  final String phoneNumber;

  /// [type] The way the code was sent to the user 
  final AuthenticationCodeType type;

  /// [nextType] The way the next code will be sent to the user; may be null 
  final AuthenticationCodeType? nextType;

  /// [timeout] Timeout before the code can be re-sent, in seconds
  final int timeout;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AuthenticationCodeInfo.fromJson(Map<String, dynamic> json) => AuthenticationCodeInfo(
    phoneNumber: json['phone_number'],
    type: AuthenticationCodeType.fromJson(json['type']),
    nextType: json['next_type'] == null ? null : AuthenticationCodeType.fromJson(json['next_type']),
    timeout: json['timeout'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": phoneNumber,
      "type": type.toJson(),
      "next_type": nextType?.toJson(),
      "timeout": timeout,
    };
  }
  
  AuthenticationCodeInfo copyWith({
    String? phoneNumber,
    AuthenticationCodeType? type,
    AuthenticationCodeType? nextType,
    int? timeout,
    dynamic extra,
    int? clientId,
  }) => AuthenticationCodeInfo(
    phoneNumber: phoneNumber ?? this.phoneNumber,
    type: type ?? this.type,
    nextType: nextType ?? this.nextType,
    timeout: timeout ?? this.timeout,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'authenticationCodeInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
