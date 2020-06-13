part of '../tdapi.dart';

class WebPage extends TdObject {
  String url;
  String displayUrl;
  String type;
  String siteName;
  String title;
  FormattedText description;
  Photo photo;
  String embedUrl;
  String embedType;
  int embedWidth;
  int embedHeight;
  int duration;
  String author;
  Animation animation;
  Audio audio;
  Document document;
  Sticker sticker;
  Video video;
  VideoNote videoNote;
  VoiceNote voiceNote;
  int instantViewVersion;
  dynamic extra;

  /// Describes a web page preview. 
  /// [url] Original URL of the link. 
  /// [displayUrl] URL to display. 
  /// [type] Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else. 
  /// [siteName] Short name of the site (e.g., Google Docs, App Store). 
  /// [title] Title of the content. 
  /// [description] Description of the content. 
  /// [photo] Image representing the content; may be null. 
  /// [embedUrl] URL to show in the embedded preview. 
  /// [embedType] MIME type of the embedded preview, (e.g., text/html or video/mp4). 
  /// [embedWidth] Width of the embedded preview. 
  /// [embedHeight] Height of the embedded preview. 
  /// [duration] Duration of the content, in seconds. 
  /// [author] Author of the content. 
  /// [animation] Preview of the content as an animation, if available; may be null. 
  /// [audio] Preview of the content as an audio file, if available; may be null. 
  /// [document] Preview of the content as a document, if available (currently only available for small PDF files and ZIP archives); may be null. 
  /// [sticker] Preview of the content as a sticker for small WEBP files, if available; may be null. 
  /// [video] Preview of the content as a video, if available; may be null. 
  /// [videoNote] Preview of the content as a video note, if available; may be null. 
  /// [voiceNote] Preview of the content as a voice note, if available; may be null. 
  /// [instantViewVersion] Version of instant view, available for the web page (currently can be 1 or 2), 0 if none
  WebPage({this.url,
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

  /// Parse from a json
  WebPage.fromJson(Map<String, dynamic> json)  {
    this.url = json['url'];
    this.displayUrl = json['display_url'];
    this.type = json['type'];
    this.siteName = json['site_name'];
    this.title = json['title'];
    this.description = FormattedText.fromJson(json['description'] ?? <String, dynamic>{});
    this.photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.embedUrl = json['embed_url'];
    this.embedType = json['embed_type'];
    this.embedWidth = json['embed_width'];
    this.embedHeight = json['embed_height'];
    this.duration = json['duration'];
    this.author = json['author'];
    this.animation = Animation.fromJson(json['animation'] ?? <String, dynamic>{});
    this.audio = Audio.fromJson(json['audio'] ?? <String, dynamic>{});
    this.document = Document.fromJson(json['document'] ?? <String, dynamic>{});
    this.sticker = Sticker.fromJson(json['sticker'] ?? <String, dynamic>{});
    this.video = Video.fromJson(json['video'] ?? <String, dynamic>{});
    this.videoNote = VideoNote.fromJson(json['video_note'] ?? <String, dynamic>{});
    this.voiceNote = VoiceNote.fromJson(json['voice_note'] ?? <String, dynamic>{});
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
      "description": this.description.toJson(),
      "photo": this.photo.toJson(),
      "embed_url": this.embedUrl,
      "embed_type": this.embedType,
      "embed_width": this.embedWidth,
      "embed_height": this.embedHeight,
      "duration": this.duration,
      "author": this.author,
      "animation": this.animation.toJson(),
      "audio": this.audio.toJson(),
      "document": this.document.toJson(),
      "sticker": this.sticker.toJson(),
      "video": this.video.toJson(),
      "video_note": this.videoNote.toJson(),
      "voice_note": this.voiceNote.toJson(),
      "instant_view_version": this.instantViewVersion,
    };
  }

  static const CONSTRUCTOR = 'webPage';
}