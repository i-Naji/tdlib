part of '../tdapi.dart';

class VoiceNote extends TdObject {
  int duration;
  String waveform;
  String mimeType;
  File voice;

  /// Describes a voice note. The voice note must be encoded with the Opus codec, and stored inside an OGG container. Voice notes can have only a single audio channel. 
  /// [duration] Duration of the voice note, in seconds; as defined by the sender. 
  /// [waveform] A waveform representation of the voice note in 5-bit format. 
  /// [mimeType] MIME type of the file; as defined by the sender . 
  /// [voice] File containing the voice note
  VoiceNote({this.duration,
    this.waveform,
    this.mimeType,
    this.voice});

  /// Parse from a json
  VoiceNote.fromJson(Map<String, dynamic> json)  {
    this.duration = json['duration'];
    this.waveform = json['waveform'];
    this.mimeType = json['mime_type'];
    this.voice = File.fromJson(json['voice'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "duration": this.duration,
      "waveform": this.waveform,
      "mime_type": this.mimeType,
      "voice": this.voice.toJson(),
    };
  }

  static const CONSTRUCTOR = 'voiceNote';
}