part of '../tdapi.dart';

class Audio implements TdObject {
  int duration;
  String title;
  String performer;
  String fileName;
  String mimeType;
  Minithumbnail albumCoverMinithumbnail;
  PhotoSize albumCoverThumbnail;
  File audio;

  /// Describes an audio file. Audio is usually in MP3 or M4A format.
  ///[duration] Duration of the audio, in seconds; as defined by the sender .
  /// [title] Title of the audio; as defined by the sender .
  /// [performer] Performer of the audio; as defined by the sender.
  /// [fileName] Original name of the file; as defined by the sender .
  /// [mimeType] The MIME type of the file; as defined by the sender .
  /// [albumCoverMinithumbnail] The minithumbnail of the album cover; may be null .
  /// [albumCoverThumbnail] The thumbnail of the album cover; as defined by the sender. The full size thumbnail should be extracted from the downloaded file; may be null .
  /// [audio] File containing the audio
  Audio(
      {this.duration,
      this.title,
      this.performer,
      this.fileName,
      this.mimeType,
      this.albumCoverMinithumbnail,
      this.albumCoverThumbnail,
      this.audio});

  /// Parse from a json
  Audio.fromJson(Map<String, dynamic> json) {
    this.duration = json['duration'];
    this.title = json['title'];
    this.performer = json['performer'];
    this.fileName = json['file_name'];
    this.mimeType = json['mime_type'];
    this.albumCoverMinithumbnail = Minithumbnail.fromJson(
        json['album_cover_minithumbnail'] ?? <String, dynamic>{});
    this.albumCoverThumbnail = PhotoSize.fromJson(
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
      "album_cover_minithumbnail": this.albumCoverMinithumbnail.toJson(),
      "album_cover_thumbnail": this.albumCoverThumbnail.toJson(),
      "audio": this.audio.toJson()
    };
  }

  static const String CONSTRUCTOR = "audio";

  @override
  String getConstructor() => CONSTRUCTOR;
}
