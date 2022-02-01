part of '../tdapi.dart';

class ToggleMessageSenderIsBlocked extends TdFunction {

  /// Changes the block state of a message sender. Currently, only users and supergroup chats can be blocked
  const ToggleMessageSenderIsBlocked({
    required this.senderId,
    required this.isBlocked,
  });
  
  /// [senderId] Identifier of a message sender to block/unblock 
  final MessageSender senderId;

  /// [isBlocked] New value of is_blocked
  final bool isBlocked;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sender_id": senderId.toJson(),
      "is_blocked": isBlocked,
      "@extra": extra,
    };
  }
  
  ToggleMessageSenderIsBlocked copyWith({
    MessageSender? senderId,
    bool? isBlocked,
  }) => ToggleMessageSenderIsBlocked(
    senderId: senderId ?? this.senderId,
    isBlocked: isBlocked ?? this.isBlocked,
  );

  static const CONSTRUCTOR = 'toggleMessageSenderIsBlocked';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
