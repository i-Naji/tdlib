part of '../tdapi.dart';

class ChatFilterInfo extends TdObject {

  /// Contains basic information about a chat filter
  const ChatFilterInfo({
    required this.id,
    required this.title,
    required this.iconName,
    this.extra,
    this.clientId,
  });
  
  /// [id] Unique chat filter identifier
  final int id;

  /// [title] The title of the filter; 1-12 characters without line feeds
  final String title;

  /// [iconName] The chosen or default icon name for short filter representation. One of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work"
  final String iconName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatFilterInfo.fromJson(Map<String, dynamic> json) => ChatFilterInfo(
    id: json['id'],
    title: json['title'],
    iconName: json['icon_name'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
      "icon_name": iconName,
    };
  }
  
  ChatFilterInfo copyWith({
    int? id,
    String? title,
    String? iconName,
    dynamic extra,
    int? clientId,
  }) => ChatFilterInfo(
    id: id ?? this.id,
    title: title ?? this.title,
    iconName: iconName ?? this.iconName,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatFilterInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
