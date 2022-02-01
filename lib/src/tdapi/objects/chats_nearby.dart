part of '../tdapi.dart';

class ChatsNearby extends TdObject {

  /// Represents a list of chats located nearby
  const ChatsNearby({
    required this.usersNearby,
    required this.supergroupsNearby,
    this.extra,
    this.clientId,
  });
  
  /// [usersNearby] List of users nearby 
  final List<ChatNearby> usersNearby;

  /// [supergroupsNearby] List of location-based supergroups nearby
  final List<ChatNearby> supergroupsNearby;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatsNearby.fromJson(Map<String, dynamic> json) => ChatsNearby(
    usersNearby: List<ChatNearby>.from((json['users_nearby'] ?? []).map((item) => ChatNearby.fromJson(item)).toList()),
    supergroupsNearby: List<ChatNearby>.from((json['supergroups_nearby'] ?? []).map((item) => ChatNearby.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "users_nearby": usersNearby.map((i) => i.toJson()).toList(),
      "supergroups_nearby": supergroupsNearby.map((i) => i.toJson()).toList(),
    };
  }
  
  ChatsNearby copyWith({
    List<ChatNearby>? usersNearby,
    List<ChatNearby>? supergroupsNearby,
    dynamic extra,
    int? clientId,
  }) => ChatsNearby(
    usersNearby: usersNearby ?? this.usersNearby,
    supergroupsNearby: supergroupsNearby ?? this.supergroupsNearby,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatsNearby';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
