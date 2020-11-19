part of '../tdapi.dart';

class Audio extends TdObject {
  /// Describes an audio file. Audio is usually in MP3 or M4A format
  Audio(
      {this.duration,
      this.title,
      this.performer,
      this.fileName,
      this.mimeType,
      this.albumCoverMinithumbnail,
      this.albumCoverThumbnail,
      this.audio});

  /// [duration] Duration of the audio, in seconds; as defined by the sender
  int duration;

  /// [title] Title of the audio; as defined by the sender
  String title;

  /// [performer] Performer of the audio; as defined by the sender
  String performer;

  /// [fileName] Original name of the file; as defined by the sender
  String fileName;

  /// [mimeType] The MIME type of the file; as defined by the sender
  String mimeType;

  /// [albumCoverMinithumbnail] The minithumbnail of the album cover; may be null
  Minithumbnail albumCoverMinithumbnail;

  /// [albumCoverThumbnail] The thumbnail of the album cover in JPEG format; as defined by the sender. The full size thumbnail should be extracted from the downloaded file; may be null
  Thumbnail albumCoverThumbnail;

  /// [audio] File containing the audio
  File audio;

  /// Parse from a json
  Audio.fromJson(Map<String, dynamic> json) {
    this.duration = json['duration'];
    this.title = json['title'];
    this.performer = json['performer'];
    this.fileName = json['file_name'];
    this.mimeType = json['mime_type'];
    this.albumCoverMinithumbnail = Minithumbnail.fromJson(
        json['album_cover_minithumbnail'] ?? <String, dynamic>{});
    this.albumCoverThumbnail = Thumbnail.fromJson(
        json['album_cover_thumbnail'] ?? <String, dynamic>{});
    this.audio = File.fromJson(json['audio'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "duration": this.duration,
      "title": this.title,
      "performer": this.performer,
      "file_name": this.fileName,
      "mime_type": this.mimeType,
      "album_cover_minithumbnail": this.albumCoverMinithumbnail == null
          ? null
          : this.albumCoverMinithumbnail.toJson(),
      "album_cover_thumbnail": this.albumCoverThumbnail == null
          ? null
          : this.albumCoverThumbnail.toJson(),
      "audio": this.audio == null ? null : this.audio.toJson(),
    };
  }

  static const CONSTRUCTOR = 'audio';

  @override
  String getConstructor() => CONSTRUCTOR;
}
