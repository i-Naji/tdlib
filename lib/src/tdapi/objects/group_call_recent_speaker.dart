part of '../tdapi.dart';

class GroupCallRecentSpeaker extends TdObject {
  /// Describes a recently speaking user in a group call
  GroupCallRecentSpeaker({this.userId, this.isSpeaking});

  /// [userId] User identifier
  int userId;

  /// [isSpeaking] True, is the user has spoken recently
  bool isSpeaking;

  /// Parse from a json
  GroupCallRecentSpeaker.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
    this.isSpeaking = json['is_speaking'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "is_speaking": this.isSpeaking,
    };
  }

  static const CONSTRUCTOR = 'groupCallRecentSpeaker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
