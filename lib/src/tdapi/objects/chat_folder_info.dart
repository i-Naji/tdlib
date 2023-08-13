part of '../tdapi.dart';

class ChatFolderInfo extends TdObject {
  /// Contains basic information about a chat folder
  const ChatFolderInfo({
    required this.id,
    required this.title,
    required this.icon,
    required this.isShareable,
    required this.hasMyInviteLinks,
    this.extra,
    this.clientId,
  });

  /// [id] Unique chat folder identifier
  final int id;

  /// [title] The title of the folder; 1-12 characters without line feeds
  final String title;

  /// [icon] The chosen or default icon for the chat folder
  final ChatFolderIcon icon;

  /// [isShareable] True, if at least one link has been created for the folder
  final bool isShareable;

  /// [hasMyInviteLinks] True, if the chat folder has invite links created by the current user
  final bool hasMyInviteLinks;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory ChatFolderInfo.fromJson(Map<String, dynamic> json) => ChatFolderInfo(
        id: json['id'],
        title: json['title'],
        icon: ChatFolderIcon.fromJson(json['icon']),
        isShareable: json['is_shareable'],
        hasMyInviteLinks: json['has_my_invite_links'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
      "icon": icon.toJson(),
      "is_shareable": isShareable,
      "has_my_invite_links": hasMyInviteLinks,
    };
  }

  ChatFolderInfo copyWith({
    int? id,
    String? title,
    ChatFolderIcon? icon,
    bool? isShareable,
    bool? hasMyInviteLinks,
    dynamic extra,
    int? clientId,
  }) =>
      ChatFolderInfo(
        id: id ?? this.id,
        title: title ?? this.title,
        icon: icon ?? this.icon,
        isShareable: isShareable ?? this.isShareable,
        hasMyInviteLinks: hasMyInviteLinks ?? this.hasMyInviteLinks,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'chatFolderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
