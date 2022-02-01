part of '../tdapi.dart';

class PushReceiverId extends TdObject {

  /// Contains a globally unique push receiver identifier, which can be used to identify which account has received a push notification
  const PushReceiverId({
    required this.id,
    this.extra,
    this.clientId,
  });
  
  /// [id] The globally unique identifier of push notification subscription
  final int id;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PushReceiverId.fromJson(Map<String, dynamic> json) => PushReceiverId(
    id: int.parse(json['id']),
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
  
  PushReceiverId copyWith({
    int? id,
    dynamic extra,
    int? clientId,
  }) => PushReceiverId(
    id: id ?? this.id,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'pushReceiverId';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
