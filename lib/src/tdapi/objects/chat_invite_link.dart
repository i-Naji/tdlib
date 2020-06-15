part of '../tdapi.dart';

class ChatInviteLink extends TdObject {
  String inviteLink;
  dynamic extra;

  /// Contains a chat invite link. 
  /// [inviteLink] Chat invite link
  ChatInviteLink({this.inviteLink});

  /// Parse from a json
  ChatInviteLink.fromJson(Map<String, dynamic> json)  {
    this.inviteLink = json['invite_link'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": this.inviteLink,
    };
  }

  static const CONSTRUCTOR = 'chatInviteLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}