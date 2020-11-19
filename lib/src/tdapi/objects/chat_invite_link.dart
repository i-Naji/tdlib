part of '../tdapi.dart';

class ChatInviteLink extends TdObject {
  /// Contains a chat invite link
  ChatInviteLink({this.inviteLink});

  /// [inviteLink] Chat invite link
  String inviteLink;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ChatInviteLink.fromJson(Map<String, dynamic> json) {
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
