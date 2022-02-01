part of '../tdapi.dart';

class ChatInviteLinkMember extends TdObject {

  /// Describes a chat member joined a chat via an invite link
  const ChatInviteLinkMember({
    required this.userId,
    required this.joinedChatDate,
    required this.approverUserId,
  });
  
  /// [userId] User identifier 
  final int userId;

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined the chat 
  final int joinedChatDate;

  /// [approverUserId] User identifier of the chat administrator, approved user join request
  final int approverUserId;
  
  /// Parse from a json
  factory ChatInviteLinkMember.fromJson(Map<String, dynamic> json) => ChatInviteLinkMember(
    userId: json['user_id'],
    joinedChatDate: json['joined_chat_date'],
    approverUserId: json['approver_user_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "joined_chat_date": joinedChatDate,
      "approver_user_id": approverUserId,
    };
  }
  
  ChatInviteLinkMember copyWith({
    int? userId,
    int? joinedChatDate,
    int? approverUserId,
  }) => ChatInviteLinkMember(
    userId: userId ?? this.userId,
    joinedChatDate: joinedChatDate ?? this.joinedChatDate,
    approverUserId: approverUserId ?? this.approverUserId,
  );

  static const CONSTRUCTOR = 'chatInviteLinkMember';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
