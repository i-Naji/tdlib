part of '../tdapi.dart';

class Ok extends TdObject {

  /// An object of this type is returned on a successful function call for certain functions
  const Ok({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Ok.fromJson(Map<String, dynamic> json) => Ok(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  Ok copyWith({
    dynamic extra,
    int? clientId,
  }) => Ok(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'ok';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
