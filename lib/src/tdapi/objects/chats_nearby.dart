part of '../tdapi.dart';

class ChatsNearby extends TdObject {
  List<List<ChatNearby>> usersNearby;
  List<List<ChatNearby>> supergroupsNearby;
  dynamic extra;

  /// Represents a list of chats located nearby. 
  /// [usersNearby] List of users nearby . 
  /// [supergroupsNearby] List of location-based supergroups nearby
  ChatsNearby({this.usersNearby,
    this.supergroupsNearby});

  /// Parse from a json
  ChatsNearby.fromJson(Map<String, dynamic> json)  {
    this.usersNearby = List<List<ChatNearby>>.from((json['users_nearby'] ?? []).map((item) => List<ChatNearby>.from((item ?? []).map((innerItem) => ChatNearby.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.supergroupsNearby = List<List<ChatNearby>>.from((json['supergroups_nearby'] ?? []).map((item) => List<ChatNearby>.from((item ?? []).map((innerItem) => ChatNearby.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "users_nearby": this.usersNearby.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "supergroups_nearby": this.supergroupsNearby.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatsNearby';
}