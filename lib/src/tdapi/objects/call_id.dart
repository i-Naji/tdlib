part of '../tdapi.dart';

class CallId extends TdObject {

  /// Contains the call identifier
  const CallId({
    required this.id,
    this.extra,
    this.clientId,
  });
  
  /// [id] Call identifier
  final int id;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CallId.fromJson(Map<String, dynamic> json) => CallId(
    id: json['id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
    };
  }
  
  CallId copyWith({
    int? id,
    dynamic extra,
    int? clientId,
  }) => CallId(
    id: id ?? this.id,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'callId';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
