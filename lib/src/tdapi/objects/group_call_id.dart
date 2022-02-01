part of '../tdapi.dart';

class GroupCallId extends TdObject {

  /// Contains the group call identifier
  const GroupCallId({
    required this.id,
    this.extra,
    this.clientId,
  });
  
  /// [id] Group call identifier
  final int id;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory GroupCallId.fromJson(Map<String, dynamic> json) => GroupCallId(
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
  
  GroupCallId copyWith({
    int? id,
    dynamic extra,
    int? clientId,
  }) => GroupCallId(
    id: id ?? this.id,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'groupCallId';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
