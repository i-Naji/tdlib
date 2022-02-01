part of '../tdapi.dart';

class VoiceNote extends TdObject {

  /// Describes a voice note. The voice note must be encoded with the Opus codec, and stored inside an OGG container. Voice notes can have only a single audio channel
  const VoiceNote({
    required this.duration,
    required this.waveform,
    required this.mimeType,
    required this.voice,
  });
  
  /// [duration] Duration of the voice note, in seconds; as defined by the sender
  final int duration;

  /// [waveform] A waveform representation of the voice note in 5-bit format
  final String waveform;

  /// [mimeType] MIME type of the file; as defined by the sender 
  final String mimeType;

  /// [voice] File containing the voice note
  final File voice;
  
  /// Parse from a json
  factory VoiceNote.fromJson(Map<String, dynamic> json) => VoiceNote(
    duration: json['duration'],
    waveform: json['waveform'],
    mimeType: json['mime_type'],
    voice: File.fromJson(json['voice']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "duration": duration,
      "waveform": waveform,
      "mime_type": mimeType,
      "voice": voice.toJson(),
    };
  }
  
  VoiceNote copyWith({
    int? duration,
    String? waveform,
    String? mimeType,
    File? voice,
  }) => VoiceNote(
    duration: duration ?? this.duration,
    waveform: waveform ?? this.waveform,
    mimeType: mimeType ?? this.mimeType,
    voice: voice ?? this.voice,
  );

  static const CONSTRUCTOR = 'voiceNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
