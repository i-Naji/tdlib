part of '../tdapi.dart';

class StartGroupCallRecording extends TdFunction {

  /// Starts recording of an active group call. Requires groupCall.can_be_managed group call flag
  const StartGroupCallRecording({
    required this.groupCallId,
    required this.title,
    required this.recordVideo,
    required this.usePortraitOrientation,
  });
  
  /// [groupCallId] Group call identifier 
  final int groupCallId;

  /// [title] Group call recording title; 0-64 characters
  final String title;

  /// [recordVideo] Pass true to record a video file instead of an audio file
  final bool recordVideo;

  /// [usePortraitOrientation] Pass true to use portrait orientation for video instead of landscape one
  final bool usePortraitOrientation;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "title": title,
      "record_video": recordVideo,
      "use_portrait_orientation": usePortraitOrientation,
      "@extra": extra,
    };
  }
  
  StartGroupCallRecording copyWith({
    int? groupCallId,
    String? title,
    bool? recordVideo,
    bool? usePortraitOrientation,
  }) => StartGroupCallRecording(
    groupCallId: groupCallId ?? this.groupCallId,
    title: title ?? this.title,
    recordVideo: recordVideo ?? this.recordVideo,
    usePortraitOrientation: usePortraitOrientation ?? this.usePortraitOrientation,
  );

  static const CONSTRUCTOR = 'startGroupCallRecording';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
