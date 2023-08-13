part of '../tdapi.dart';

class ChatFolderInviteLink extends TdObject {
  /// Contains a chat folder invite link
  const ChatFolderInviteLink({
    required this.inviteLink,
    required this.name,
    required this.chatIds,
    this.extra,
    this.clientId,
  });

  /// [inviteLink] The chat folder invite link
  final String inviteLink;

  /// [name] Name of the link
  final String name;

  /// [chatIds] Identifiers of chats, included in the link
  final List<int> chatIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory ChatFolderInviteLink.fromJson(Map<String, dynamic> json) =>
      ChatFolderInviteLink(
        inviteLink: json['invite_link'],
        name: json['name'],
        chatIds: List<int>.from(
            (json['chat_ids'] ?? []).map((item) => item).toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink,
      "name": name,
      "chat_ids": chatIds.map((i) => i).toList(),
    };
  }

  ChatFolderInviteLink copyWith({
    String? inviteLink,
    String? name,
    List<int>? chatIds,
    dynamic extra,
    int? clientId,
  }) =>
      ChatFolderInviteLink(
        inviteLink: inviteLink ?? this.inviteLink,
        name: name ?? this.name,
        chatIds: chatIds ?? this.chatIds,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'chatFolderInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
