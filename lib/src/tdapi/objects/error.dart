part of '../tdapi.dart';

class TdError extends TdObject {

  /// An object of this type can be returned on every function call, in case of an error
  const TdError({
    required this.code,
    required this.message,
    this.extra,
    this.clientId,
  });
  
  /// [code] Error code; subject to future changes. If the error code is 406, the error message must not be processed in any way and must not be displayed to the user
  final int code;

  /// [message] Error message; subject to future changes
  final String message;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TdError.fromJson(Map<String, dynamic> json) => TdError(
    code: json['code'],
    message: json['message'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "code": code,
      "message": message,
    };
  }
  
  TdError copyWith({
    int? code,
    String? message,
    dynamic extra,
    int? clientId,
  }) => TdError(
    code: code ?? this.code,
    message: message ?? this.message,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'error';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
