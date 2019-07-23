part of '../tdapi.dart';

class GetInviteText extends TdFunction {
  dynamic extra;

  /// Returns the default text for invitation messages to be used as a placeholder when the current user invites friends to Telegram.
  ///
  GetInviteText();

  /// Parse from a json
  GetInviteText.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getInviteText";

  @override
  String getConstructor() => CONSTRUCTOR;
}
