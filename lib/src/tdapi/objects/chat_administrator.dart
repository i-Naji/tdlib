part of '../tdapi.dart';

class ChatAdministrator extends TdObject {
  /// Contains information about a chat administrator
  ChatAdministrator({this.userId, this.customTitle, this.isOwner});

  /// [userId] User identifier of the administrator
  int userId;

  /// [customTitle] Custom title of the administrator
  String customTitle;

  /// [isOwner] True, if the user is the owner of the chat
  bool isOwner;

  /// Parse from a json
  ChatAdministrator.fromJson(Map<String, dynamic> json) {
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

  @override
  String getConstructor() => CONSTRUCTOR;
}
