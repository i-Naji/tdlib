part of '../tdapi.dart';

class Story extends TdObject {
  /// Represents a story
  const Story({
    required this.id,
    required this.senderChatId,
    required this.date,
    required this.isBeingEdited,
    required this.isEdited,
    required this.isPinned,
    required this.isVisibleOnlyForSelf,
    required this.canBeForwarded,
    required this.canBeReplied,
    required this.canGetViewers,
    required this.hasExpiredViewers,
    this.interactionInfo,
    required this.privacySettings,
    required this.content,
    required this.caption,
    this.extra,
    this.clientId,
  });

  /// [id] Unique story identifier among stories of the given sender
  final int id;

  /// [senderChatId] Identifier of the chat that posted the story
  final int senderChatId;

  /// [date] Point in time (Unix timestamp) when the story was published
  final int date;

  /// [isBeingEdited] True, if the story is being edited by the current user
  final bool isBeingEdited;

  /// [isEdited] True, if the story was edited
  final bool isEdited;

  /// [isPinned] True, if the story is saved in the sender's profile and will be available there after expiration
  final bool isPinned;

  /// [isVisibleOnlyForSelf] True, if the story is visible only for the current user
  final bool isVisibleOnlyForSelf;

  /// [canBeForwarded] True, if the story can be forwarded as a message. Otherwise, screenshots and saving of the story content must be also forbidden
  final bool canBeForwarded;

  /// [canBeReplied] True, if the story can be replied in the chat with the story sender
  final bool canBeReplied;

  /// [canGetViewers] True, if users viewed the story can be received through getStoryViewers
  final bool canGetViewers;

  /// [hasExpiredViewers] True, if users viewed the story can't be received, because the story has expired more than getOption("story_viewers_expiration_delay") seconds ago
  final bool hasExpiredViewers;

  /// [interactionInfo] Information about interactions with the story; may be null if the story isn't owned or there were no interactions
  final StoryInteractionInfo? interactionInfo;

  /// [privacySettings] Privacy rules affecting story visibility; may be approximate for non-owned stories
  final StoryPrivacySettings privacySettings;

  /// [content] Content of the story
  final StoryContent content;

  /// [caption] Caption of the story
  final FormattedText caption;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory Story.fromJson(Map<String, dynamic> json) => Story(
        id: json['id'],
        senderChatId: json['sender_chat_id'],
        date: json['date'],
        isBeingEdited: json['is_being_edited'],
        isEdited: json['is_edited'],
        isPinned: json['is_pinned'],
        isVisibleOnlyForSelf: json['is_visible_only_for_self'],
        canBeForwarded: json['can_be_forwarded'],
        canBeReplied: json['can_be_replied'],
        canGetViewers: json['can_get_viewers'],
        hasExpiredViewers: json['has_expired_viewers'],
        interactionInfo: json['interaction_info'] == null
            ? null
            : StoryInteractionInfo.fromJson(json['interaction_info']),
        privacySettings:
            StoryPrivacySettings.fromJson(json['privacy_settings']),
        content: StoryContent.fromJson(json['content']),
        caption: FormattedText.fromJson(json['caption']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_chat_id": senderChatId,
      "date": date,
      "is_being_edited": isBeingEdited,
      "is_edited": isEdited,
      "is_pinned": isPinned,
      "is_visible_only_for_self": isVisibleOnlyForSelf,
      "can_be_forwarded": canBeForwarded,
      "can_be_replied": canBeReplied,
      "can_get_viewers": canGetViewers,
      "has_expired_viewers": hasExpiredViewers,
      "interaction_info": interactionInfo?.toJson(),
      "privacy_settings": privacySettings.toJson(),
      "content": content.toJson(),
      "caption": caption.toJson(),
    };
  }

  Story copyWith({
    int? id,
    int? senderChatId,
    int? date,
    bool? isBeingEdited,
    bool? isEdited,
    bool? isPinned,
    bool? isVisibleOnlyForSelf,
    bool? canBeForwarded,
    bool? canBeReplied,
    bool? canGetViewers,
    bool? hasExpiredViewers,
    StoryInteractionInfo? interactionInfo,
    StoryPrivacySettings? privacySettings,
    StoryContent? content,
    FormattedText? caption,
    dynamic extra,
    int? clientId,
  }) =>
      Story(
        id: id ?? this.id,
        senderChatId: senderChatId ?? this.senderChatId,
        date: date ?? this.date,
        isBeingEdited: isBeingEdited ?? this.isBeingEdited,
        isEdited: isEdited ?? this.isEdited,
        isPinned: isPinned ?? this.isPinned,
        isVisibleOnlyForSelf: isVisibleOnlyForSelf ?? this.isVisibleOnlyForSelf,
        canBeForwarded: canBeForwarded ?? this.canBeForwarded,
        canBeReplied: canBeReplied ?? this.canBeReplied,
        canGetViewers: canGetViewers ?? this.canGetViewers,
        hasExpiredViewers: hasExpiredViewers ?? this.hasExpiredViewers,
        interactionInfo: interactionInfo ?? this.interactionInfo,
        privacySettings: privacySettings ?? this.privacySettings,
        content: content ?? this.content,
        caption: caption ?? this.caption,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'story';

  @override
  String getConstructor() => CONSTRUCTOR;
}
