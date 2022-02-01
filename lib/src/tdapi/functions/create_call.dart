part of '../tdapi.dart';

class CreateCall extends TdFunction {

  /// Creates a new call
  const CreateCall({
    required this.userId,
    required this.protocol,
    required this.isVideo,
  });
  
  /// [userId] Identifier of the user to be called 
  final int userId;

  /// [protocol] The call protocols supported by the application 
  final CallProtocol protocol;

  /// [isVideo] True, if a video call needs to be created
  final bool isVideo;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "protocol": protocol.toJson(),
      "is_video": isVideo,
      "@extra": extra,
    };
  }
  
  CreateCall copyWith({
    int? userId,
    CallProtocol? protocol,
    bool? isVideo,
  }) => CreateCall(
    userId: userId ?? this.userId,
    protocol: protocol ?? this.protocol,
    isVideo: isVideo ?? this.isVideo,
  );

  static const CONSTRUCTOR = 'createCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
