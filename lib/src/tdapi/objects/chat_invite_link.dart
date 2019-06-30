part of '../tdapi.dart';

class ChatInviteLink implements TLObject {
  String inviteLink;
  dynamic extra;

  /// Contains a chat invite link.
  ///[inviteLink] Chat invite link
  ChatInviteLink({this.inviteLink});

  /// Parse from a json
  ChatInviteLink.fromJson(Map<String, dynamic> json) {
    this.inviteLink = json['invite_link'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'invite_link': this.inviteLink};
  }

  static const String CONSTRUCTOR = 'chatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
