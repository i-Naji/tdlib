part of '../tdapi.dart';

class ToggleMessageSenderIsBlocked extends TdFunction {
  /// Changes the block state of a message sender. Currently, only users and supergroup chats can be blocked
  ToggleMessageSenderIsBlocked({this.sender, this.isBlocked});

  /// [sender] Message Sender
  MessageSender sender;

  /// [isBlocked] New value of is_blocked
  bool isBlocked;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ToggleMessageSenderIsBlocked.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sender": this.sender == null ? null : this.sender.toJson(),
      "is_blocked": this.isBlocked,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'toggleMessageSenderIsBlocked';

  @override
  String getConstructor() => CONSTRUCTOR;
}
