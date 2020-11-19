part of '../tdapi.dart';

class WebPage extends TdObject {
  /// Describes a web page preview
  WebPage(
      {this.url,
      this.displayUrl,
      this.type,
      this.siteName,
      this.title,
      this.description,
      this.photo,
      this.embedUrl,
      this.embedType,
      this.embedWidth,
      this.embedHeight,
      this.duration,
      this.author,
      this.animation,
      this.audio,
      this.document,
      this.sticker,
      this.video,
      this.videoNote,
      this.voiceNote,
      this.instantViewVersion});

  /// [url] Original URL of the link
  String url;

  /// [displayUrl] URL to display
  String displayUrl;

  /// [type] Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else
  String type;

  /// [siteName] Short name of the site (e.g., Google Docs, App Store)
  String siteName;

  /// [title] Title of the content
  String title;

  /// [description] Description of the content
  FormattedText description;

  /// [photo] Image representing the content; may be null
  Photo photo;

  /// [embedUrl] URL to show in the embedded preview
  String embedUrl;

  /// [embedType] MIME type of the embedded preview, (e.g., text/html or video/mp4)
  String embedType;

  /// [embedWidth] Width of the embedded preview
  int embedWidth;

  /// [embedHeight] Height of the embedded preview
  int embedHeight;

  /// [duration] Duration of the content, in seconds
  int duration;

  /// [author] Author of the content
  String author;

  /// [animation] Preview of the content as an animation, if available; may be null
  Animation animation;

  /// [audio] Preview of the content as an audio file, if available; may be null
  Audio audio;

  /// [document] Preview of the content as a document, if available (currently only available for small PDF files and ZIP archives); may be null
  Document document;

  /// [sticker] Preview of the content as a sticker for small WEBP files, if available; may be null
  Sticker sticker;

  /// [video] Preview of the content as a video, if available; may be null
  Video video;

  /// [videoNote] Preview of the content as a video note, if available; may be null
  VideoNote videoNote;

  /// [voiceNote] Preview of the content as a voice note, if available; may be null
  VoiceNote voiceNote;

  /// [instantViewVersion] Version of instant view, available for the web page (currently can be 1 or 2), 0 if none
  int instantViewVersion;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  WebPage.fromJson(Map<String, dynamic> json) {
    this.url = json['url'];
    this.displayUrl = json['display_url'];
    this.type = json['type'];
    this.siteName = json['site_name'];
    this.title = json['title'];
    this.description =
        FormattedText.fromJson(json['description'] ?? <String, dynamic>{});
    this.photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.embedUrl = json['embed_url'];
    this.embedType = json['embed_type'];
    this.embedWidth = json['embed_width'];
    this.embedHeight = json['embed_height'];
    this.duration = json['duration'];
    this.author = json['author'];
    this.animation =
        Animation.fromJson(json['animation'] ?? <String, dynamic>{});
    this.audio = Audio.fromJson(json['audio'] ?? <String, dynamic>{});
    this.document = Document.fromJson(json['document'] ?? <String, dynamic>{});
    this.sticker = Sticker.fromJson(json['sticker'] ?? <String, dynamic>{});
    this.video = Video.fromJson(json['video'] ?? <String, dynamic>{});
    this.videoNote =
        VideoNote.fromJson(json['video_note'] ?? <String, dynamic>{});
    this.voiceNote =
        VoiceNote.fromJson(json['voice_note'] ?? <String, dynamic>{});
    this.instantViewVersion = json['instant_view_version'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
      "display_url": this.displayUrl,
      "type": this.type,
      "site_name": this.siteName,
      "title": this.title,
      "description":
          this.description == null ? null : this.description.toJson(),
      "photo": this.photo == null ? null : this.photo.toJson(),
      "embed_url": this.embedUrl,
      "embed_type": this.embedType,
      "embed_width": this.embedWidth,
      "embed_height": this.embedHeight,
      "duration": this.duration,
      "author": this.author,
      "animation": this.animation == null ? null : this.animation.toJson(),
      "audio": this.audio == null ? null : this.audio.toJson(),
      "document": this.document == null ? null : this.document.toJson(),
      "sticker": this.sticker == null ? null : this.sticker.toJson(),
      "video": this.video == null ? null : this.video.toJson(),
      "video_note": this.videoNote == null ? null : this.videoNote.toJson(),
      "voice_note": this.voiceNote == null ? null : this.voiceNote.toJson(),
      "instant_view_version": this.instantViewVersion,
    };
  }

  static const CONSTRUCTOR = 'webPage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
