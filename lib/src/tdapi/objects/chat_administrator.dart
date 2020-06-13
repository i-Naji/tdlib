part of '../tdapi.dart';

class ChatAdministrator extends TdObject {
  int userId;
  String customTitle;
  bool isOwner;

  /// Contains information about a chat administrator. 
  /// [userId] User identifier of the administrator . 
  /// [customTitle] Custom title of the administrator . 
  /// [isOwner] True, if the user is the owner of the chat
  ChatAdministrator({this.userId,
    this.customTitle,
    this.isOwner});

  /// Parse from a json
  ChatAdministrator.fromJson(Map<String, dynamic> json)  {
    this.userId = json['user_id'];
    this.customTitle = json['custom_title'];
    this.isOwner = json['is_owner'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "custom_title": this.customTitle,
      "is_owner": this.isOwner,
    };
  }

  static const CONSTRUCTOR = 'chatAdministrator';
}