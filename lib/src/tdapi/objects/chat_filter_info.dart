part of '../tdapi.dart';

class ChatFilterInfo extends TdObject {
  int id;
  String title;
  String iconName;
  dynamic extra;

  /// Contains basic information about a chat filter. 
  /// [id] Unique chat filter identifier. 
  /// [title] The title of the filter; 1-12 characters without line feeds. 
  /// [iconName] The icon name for short filter representation. One of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work"
  ChatFilterInfo({this.id,
    this.title,
    this.iconName});

  /// Parse from a json
  ChatFilterInfo.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.title = json['title'];
    this.iconName = json['icon_name'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "icon_name": this.iconName,
    };
  }

  static const CONSTRUCTOR = 'chatFilterInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}