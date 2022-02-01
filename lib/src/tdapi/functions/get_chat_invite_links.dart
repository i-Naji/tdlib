part of '../tdapi.dart';

class GetChatInviteLinks extends TdFunction {

  /// Returns invite links for a chat created by specified administrator. Requires administrator privileges and can_invite_users right in the chat to get own links and owner privileges to get other links
  const GetChatInviteLinks({
    required this.chatId,
    required this.creatorUserId,
    required this.isRevoked,
    required this.offsetDate,
    required this.offsetInviteLink,
    required this.limit,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [creatorUserId] User identifier of a chat administrator. Must be an identifier of the current user for non-owner
  final int creatorUserId;

  /// [isRevoked] Pass true if revoked links needs to be returned instead of active or expired
  final bool isRevoked;

  /// [offsetDate] Creation date of an invite link starting after which to return invite links; use 0 to get results from the beginning
  final int offsetDate;

  /// [offsetInviteLink] Invite link starting after which to return invite links; use empty string to get results from the beginning
  final String offsetInviteLink;

  /// [limit] The maximum number of invite links to return; up to 100
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "creator_user_id": creatorUserId,
      "is_revoked": isRevoked,
      "offset_date": offsetDate,
      "offset_invite_link": offsetInviteLink,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetChatInviteLinks copyWith({
    int? chatId,
    int? creatorUserId,
    bool? isRevoked,
    int? offsetDate,
    String? offsetInviteLink,
    int? limit,
  }) => GetChatInviteLinks(
    chatId: chatId ?? this.chatId,
    creatorUserId: creatorUserId ?? this.creatorUserId,
    isRevoked: isRevoked ?? this.isRevoked,
    offsetDate: offsetDate ?? this.offsetDate,
    offsetInviteLink: offsetInviteLink ?? this.offsetInviteLink,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getChatInviteLinks';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
