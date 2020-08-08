part of '../tdapi.dart';

class AnimatedChatPhoto extends TdObject {
  int length;
  File file;
  double mainFrameTimestamp;

  /// Animated variant of a chat photo in MPEG4 format. 
  /// [length] Animation width and height. 
  /// [file] Information about the animation file. 
  /// [mainFrameTimestamp] Timestamp of the frame, used as static chat photo
  AnimatedChatPhoto({this.length,
    this.file,
    this.mainFrameTimestamp});

  /// Parse from a json
  AnimatedChatPhoto.fromJson(Map<String, dynamic> json)  {
    this.length = json['length'];
    this.file = File.fromJson(json['file'] ?? <String, dynamic>{});
    this.mainFrameTimestamp = json['main_frame_timestamp'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "length": this.length,
      "file": this.file.toJson(),
      "main_frame_timestamp": this.mainFrameTimestamp,
    };
  }

  static const CONSTRUCTOR = 'animatedChatPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}