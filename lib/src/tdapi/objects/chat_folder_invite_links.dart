part of '../tdapi.dart';

class ChatFolderInviteLinks extends TdObject {
  /// Represents a list of chat folder invite links
  const ChatFolderInviteLinks({
    required this.inviteLinks,
    this.extra,
    this.clientId,
  });

  /// [inviteLinks] List of the invite links
  final List<ChatFolderInviteLink> inviteLinks;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory ChatFolderInviteLinks.fromJson(Map<String, dynamic> json) =>
      ChatFolderInviteLinks(
        inviteLinks: List<ChatFolderInviteLink>.from(
            (json['invite_links'] ?? [])
                .map((item) => ChatFolderInviteLink.fromJson(item))
                .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_links": inviteLinks.map((i) => i.toJson()).toList(),
    };
  }

  ChatFolderInviteLinks copyWith({
    List<ChatFolderInviteLink>? inviteLinks,
    dynamic extra,
    int? clientId,
  }) =>
      ChatFolderInviteLinks(
        inviteLinks: inviteLinks ?? this.inviteLinks,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'chatFolderInviteLinks';

  @override
  String getConstructor() => CONSTRUCTOR;
}
