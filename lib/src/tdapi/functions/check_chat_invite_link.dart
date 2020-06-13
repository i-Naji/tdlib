part of '../tdapi.dart';

class CheckChatInviteLink extends TdFunction {
  String inviteLink;
  dynamic extra;

  /// Checks the validity of an invite link for a chat and returns information about the corresponding chat. 
  /// [inviteLink] Invite link to be checked; should begin with "https://t.me/joinchat/", "https://telegram.me/joinchat/", or "https://telegram.dog/joinchat/"
  CheckChatInviteLink({this.inviteLink});

  /// Parse from a json
  CheckChatInviteLink.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": this.inviteLink,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'checkChatInviteLink';
}