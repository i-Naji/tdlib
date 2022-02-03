part of '../tdapi.dart';

class GetChatJoinRequests extends TdFunction {

  /// Returns pending join requests in a chat
  const GetChatJoinRequests({
    required this.chatId,
    required this.inviteLink,
    required this.query,
    this.offsetRequest,
    required this.limit,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link for which to return join requests. If empty, all join requests will be returned. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
  final String inviteLink;

  /// [query] A query to search for in the first names, last names and usernames of the users to return
  final String query;

  /// [offsetRequest] A chat join request from which to return next requests; pass null to get results from the beginning
  final ChatJoinRequest? offsetRequest;

  /// [limit] The maximum number of requests to join the chat to return
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "invite_link": inviteLink,
      "query": query,
      "offset_request": offsetRequest?.toJson(),
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetChatJoinRequests copyWith({
    int? chatId,
    String? inviteLink,
    String? query,
    ChatJoinRequest? offsetRequest,
    int? limit,
  }) => GetChatJoinRequests(
    chatId: chatId ?? this.chatId,
    inviteLink: inviteLink ?? this.inviteLink,
    query: query ?? this.query,
    offsetRequest: offsetRequest ?? this.offsetRequest,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getChatJoinRequests';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
