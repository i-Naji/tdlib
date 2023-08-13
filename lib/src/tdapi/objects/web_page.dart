part of '../tdapi.dart';

class WebPage extends TdObject {
  /// Describes a web page preview
  const WebPage({
    required this.url,
    required this.displayUrl,
    required this.type,
    required this.siteName,
    required this.title,
    required this.description,
    this.photo,
    required this.embedUrl,
    required this.embedType,
    required this.embedWidth,
    required this.embedHeight,
    required this.duration,
    required this.author,
    this.animation,
    this.audio,
    this.document,
    this.sticker,
    this.video,
    this.videoNote,
    this.voiceNote,
    required this.storySenderChatId,
    required this.storyId,
    required this.instantViewVersion,
    this.extra,
    this.clientId,
  });

  /// [url] Original URL of the link
  final String url;

  /// [displayUrl] URL to display
  final String displayUrl;

  /// [type] Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else
  final String type;

  /// [siteName] Short name of the site (e.g., Google Docs, App Store)
  final String siteName;

  /// [title] Title of the content
  final String title;

  /// [description] Description of the content
  final FormattedText description;

  /// [photo] Image representing the content; may be null
  final Photo? photo;

  /// [embedUrl] URL to show in the embedded preview
  final String embedUrl;

  /// [embedType] MIME type of the embedded preview, (e.g., text/html or video/mp4)
  final String embedType;

  /// [embedWidth] Width of the embedded preview
  final int embedWidth;

  /// [embedHeight] Height of the embedded preview
  final int embedHeight;

  /// [duration] Duration of the content, in seconds
  final int duration;

  /// [author] Author of the content
  final String author;

  /// [animation] Preview of the content as an animation, if available; may be null
  final Animation? animation;

  /// [audio] Preview of the content as an audio file, if available; may be null
  final Audio? audio;

  /// [document] Preview of the content as a document, if available; may be null
  final Document? document;

  /// [sticker] Preview of the content as a sticker for small WEBP files, if available; may be null
  final Sticker? sticker;

  /// [video] Preview of the content as a video, if available; may be null
  final Video? video;

  /// [videoNote] Preview of the content as a video note, if available; may be null
  final VideoNote? videoNote;

  /// [voiceNote] Preview of the content as a voice note, if available; may be null
  final VoiceNote? voiceNote;

  /// [storySenderChatId] The identifier of the sender of the previewed story; 0 if none
  final int storySenderChatId;

  /// [storyId] The identifier of the previewed story; 0 if none
  final int storyId;

  /// [instantViewVersion] Version of web page instant view (currently, can be 1 or 2); 0 if none
  final int instantViewVersion;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory WebPage.fromJson(Map<String, dynamic> json) => WebPage(
        url: json['url'],
        displayUrl: json['display_url'],
        type: json['type'],
        siteName: json['site_name'],
        title: json['title'],
        description: FormattedText.fromJson(json['description']),
        photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
        embedUrl: json['embed_url'],
        embedType: json['embed_type'],
        embedWidth: json['embed_width'],
        embedHeight: json['embed_height'],
        duration: json['duration'],
        author: json['author'],
        animation: json['animation'] == null
            ? null
            : Animation.fromJson(json['animation']),
        audio: json['audio'] == null ? null : Audio.fromJson(json['audio']),
        document: json['document'] == null
            ? null
            : Document.fromJson(json['document']),
        sticker:
            json['sticker'] == null ? null : Sticker.fromJson(json['sticker']),
        video: json['video'] == null ? null : Video.fromJson(json['video']),
        videoNote: json['video_note'] == null
            ? null
            : VideoNote.fromJson(json['video_note']),
        voiceNote: json['voice_note'] == null
            ? null
            : VoiceNote.fromJson(json['voice_note']),
        storySenderChatId: json['story_sender_chat_id'] ?? 0,
        storyId: json['story_id'] ?? 0,
        instantViewVersion: json['instant_view_version'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "display_url": displayUrl,
      "type": type,
      "site_name": siteName,
      "title": title,
      "description": description.toJson(),
      "photo": photo?.toJson(),
      "embed_url": embedUrl,
      "embed_type": embedType,
      "embed_width": embedWidth,
      "embed_height": embedHeight,
      "duration": duration,
      "author": author,
      "animation": animation?.toJson(),
      "audio": audio?.toJson(),
      "document": document?.toJson(),
      "sticker": sticker?.toJson(),
      "video": video?.toJson(),
      "video_note": videoNote?.toJson(),
      "voice_note": voiceNote?.toJson(),
      "story_sender_chat_id": storySenderChatId,
      "story_id": storyId,
      "instant_view_version": instantViewVersion,
    };
  }

  WebPage copyWith({
    String? url,
    String? displayUrl,
    String? type,
    String? siteName,
    String? title,
    FormattedText? description,
    Photo? photo,
    String? embedUrl,
    String? embedType,
    int? embedWidth,
    int? embedHeight,
    int? duration,
    String? author,
    Animation? animation,
    Audio? audio,
    Document? document,
    Sticker? sticker,
    Video? video,
    VideoNote? videoNote,
    VoiceNote? voiceNote,
    int? storySenderChatId,
    int? storyId,
    int? instantViewVersion,
    dynamic extra,
    int? clientId,
  }) =>
      WebPage(
        url: url ?? this.url,
        displayUrl: displayUrl ?? this.displayUrl,
        type: type ?? this.type,
        siteName: siteName ?? this.siteName,
        title: title ?? this.title,
        description: description ?? this.description,
        photo: photo ?? this.photo,
        embedUrl: embedUrl ?? this.embedUrl,
        embedType: embedType ?? this.embedType,
        embedWidth: embedWidth ?? this.embedWidth,
        embedHeight: embedHeight ?? this.embedHeight,
        duration: duration ?? this.duration,
        author: author ?? this.author,
        animation: animation ?? this.animation,
        audio: audio ?? this.audio,
        document: document ?? this.document,
        sticker: sticker ?? this.sticker,
        video: video ?? this.video,
        videoNote: videoNote ?? this.videoNote,
        voiceNote: voiceNote ?? this.voiceNote,
        storySenderChatId: storySenderChatId ?? this.storySenderChatId,
        storyId: storyId ?? this.storyId,
        instantViewVersion: instantViewVersion ?? this.instantViewVersion,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'webPage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
