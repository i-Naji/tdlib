part of '../tdapi.dart';

class VideoNote extends TdObject {
  /// Describes a video note. The video must be equal in width and height, cropped to a circle, and stored in MPEG4 format
  const VideoNote({
    required this.duration,
    required this.waveform,
    required this.length,
    this.minithumbnail,
    this.thumbnail,
    this.speechRecognitionResult,
    required this.video,
  });

  /// [duration] Duration of the video, in seconds; as defined by the sender
  final int duration;

  /// [waveform] A waveform representation of the video note's audio in 5-bit format; may be empty if unknown
  final String waveform;

  /// [length] Video width and height; as defined by the sender
  final int length;

  /// [minithumbnail] Video minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Video thumbnail in JPEG format; as defined by the sender; may be null
  final Thumbnail? thumbnail;

  /// [speechRecognitionResult] Result of speech recognition in the video note; may be null
  final SpeechRecognitionResult? speechRecognitionResult;

  /// [video] File containing the video
  final File video;

  /// Parse from a json
  factory VideoNote.fromJson(Map<String, dynamic> json) => VideoNote(
        duration: json['duration'],
        waveform: json['waveform'],
        length: json['length'],
        minithumbnail: json['minithumbnail'] == null
            ? null
            : Minithumbnail.fromJson(json['minithumbnail']),
        thumbnail: json['thumbnail'] == null
            ? null
            : Thumbnail.fromJson(json['thumbnail']),
        speechRecognitionResult: json['speech_recognition_result'] == null
            ? null
            : SpeechRecognitionResult.fromJson(
                json['speech_recognition_result']),
        video: File.fromJson(json['video']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "duration": duration,
      "waveform": waveform,
      "length": length,
      "minithumbnail": minithumbnail?.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "speech_recognition_result": speechRecognitionResult?.toJson(),
      "video": video.toJson(),
    };
  }

  VideoNote copyWith({
    int? duration,
    String? waveform,
    int? length,
    Minithumbnail? minithumbnail,
    Thumbnail? thumbnail,
    SpeechRecognitionResult? speechRecognitionResult,
    File? video,
  }) =>
      VideoNote(
        duration: duration ?? this.duration,
        waveform: waveform ?? this.waveform,
        length: length ?? this.length,
        minithumbnail: minithumbnail ?? this.minithumbnail,
        thumbnail: thumbnail ?? this.thumbnail,
        speechRecognitionResult:
            speechRecognitionResult ?? this.speechRecognitionResult,
        video: video ?? this.video,
      );

  static const CONSTRUCTOR = 'videoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}
