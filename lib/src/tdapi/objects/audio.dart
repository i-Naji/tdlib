part of '../tdapi.dart';

class Audio extends TdObject {

  /// Describes an audio file. Audio is usually in MP3 or M4A format
  const Audio({
    required this.duration,
    required this.title,
    required this.performer,
    required this.fileName,
    required this.mimeType,
    this.albumCoverMinithumbnail,
    this.albumCoverThumbnail,
    required this.audio,
  });
  
  /// [duration] Duration of the audio, in seconds; as defined by the sender 
  final int duration;

  /// [title] Title of the audio; as defined by the sender 
  final String title;

  /// [performer] Performer of the audio; as defined by the sender
  final String performer;

  /// [fileName] Original name of the file; as defined by the sender
  final String fileName;

  /// [mimeType] The MIME type of the file; as defined by the sender 
  final String mimeType;

  /// [albumCoverMinithumbnail] The minithumbnail of the album cover; may be null
  final Minithumbnail? albumCoverMinithumbnail;

  /// [albumCoverThumbnail] The thumbnail of the album cover in JPEG format; as defined by the sender. The full size thumbnail is supposed to be extracted from the downloaded file; may be null
  final Thumbnail? albumCoverThumbnail;

  /// [audio] File containing the audio
  final File audio;
  
  /// Parse from a json
  factory Audio.fromJson(Map<String, dynamic> json) => Audio(
    duration: json['duration'],
    title: json['title'],
    performer: json['performer'],
    fileName: json['file_name'],
    mimeType: json['mime_type'],
    albumCoverMinithumbnail: json['album_cover_minithumbnail'] == null ? null : Minithumbnail.fromJson(json['album_cover_minithumbnail']),
    albumCoverThumbnail: json['album_cover_thumbnail'] == null ? null : Thumbnail.fromJson(json['album_cover_thumbnail']),
    audio: File.fromJson(json['audio']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "duration": duration,
      "title": title,
      "performer": performer,
      "file_name": fileName,
      "mime_type": mimeType,
      "album_cover_minithumbnail": albumCoverMinithumbnail?.toJson(),
      "album_cover_thumbnail": albumCoverThumbnail?.toJson(),
      "audio": audio.toJson(),
    };
  }
  
  Audio copyWith({
    int? duration,
    String? title,
    String? performer,
    String? fileName,
    String? mimeType,
    Minithumbnail? albumCoverMinithumbnail,
    Thumbnail? albumCoverThumbnail,
    File? audio,
  }) => Audio(
    duration: duration ?? this.duration,
    title: title ?? this.title,
    performer: performer ?? this.performer,
    fileName: fileName ?? this.fileName,
    mimeType: mimeType ?? this.mimeType,
    albumCoverMinithumbnail: albumCoverMinithumbnail ?? this.albumCoverMinithumbnail,
    albumCoverThumbnail: albumCoverThumbnail ?? this.albumCoverThumbnail,
    audio: audio ?? this.audio,
  );

  static const CONSTRUCTOR = 'audio';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
