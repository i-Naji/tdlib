part of '../tdapi.dart';

class ToggleSupergroupSignMessages extends TLFunction {
  int supergroupId;
  bool signMessages;
  dynamic extra;

  /// Toggles sender signatures messages sent in a channel; requires appropriate administrator rights in the channel..
  ///[supergroupId] Identifier of the channel .
  /// [signMessages] New value of sign_messages
  ToggleSupergroupSignMessages({this.supergroupId, this.signMessages});

  /// Parse from a json
  ToggleSupergroupSignMessages.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "sign_messages": this.signMessages,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "toggleSupergroupSignMessages";

  @override
  String getConstructor() => CONSTRUCTOR;
}
