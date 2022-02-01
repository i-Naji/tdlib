part of '../tdapi.dart';

class Call extends TdObject {

  /// Describes a call
  const Call({
    required this.id,
    required this.userId,
    required this.isOutgoing,
    required this.isVideo,
    required this.state,
  });
  
  /// [id] Call identifier, not persistent 
  final int id;

  /// [userId] Peer user identifier 
  final int userId;

  /// [isOutgoing] True, if the call is outgoing 
  final bool isOutgoing;

  /// [isVideo] True, if the call is a video call 
  final bool isVideo;

  /// [state] Call state
  final CallState state;
  
  /// Parse from a json
  factory Call.fromJson(Map<String, dynamic> json) => Call(
    id: json['id'],
    userId: json['user_id'],
    isOutgoing: json['is_outgoing'],
    isVideo: json['is_video'],
    state: CallState.fromJson(json['state']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "user_id": userId,
      "is_outgoing": isOutgoing,
      "is_video": isVideo,
      "state": state.toJson(),
    };
  }
  
  Call copyWith({
    int? id,
    int? userId,
    bool? isOutgoing,
    bool? isVideo,
    CallState? state,
  }) => Call(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    isOutgoing: isOutgoing ?? this.isOutgoing,
    isVideo: isVideo ?? this.isVideo,
    state: state ?? this.state,
  );

  static const CONSTRUCTOR = 'call';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
