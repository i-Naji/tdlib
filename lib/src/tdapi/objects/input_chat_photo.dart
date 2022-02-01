part of '../tdapi.dart';

class InputChatPhoto extends TdObject {

  /// Describes a photo to be set as a user profile or chat photo
  const InputChatPhoto();
  
  /// a InputChatPhoto return type can be :
  /// * [InputChatPhotoPrevious]
  /// * [InputChatPhotoStatic]
  /// * [InputChatPhotoAnimation]
  factory InputChatPhoto.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputChatPhotoPrevious.CONSTRUCTOR:
        return InputChatPhotoPrevious.fromJson(json);
      case InputChatPhotoStatic.CONSTRUCTOR:
        return InputChatPhotoStatic.fromJson(json);
      case InputChatPhotoAnimation.CONSTRUCTOR:
        return InputChatPhotoAnimation.fromJson(json);
      default:
        return const InputChatPhoto();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InputChatPhoto copyWith() => const InputChatPhoto();

  static const CONSTRUCTOR = 'inputChatPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputChatPhotoPrevious extends InputChatPhoto {

  /// A previously used profile photo of the current user
  const InputChatPhotoPrevious({
    required this.chatPhotoId,
  });
  
  /// [chatPhotoId] Identifier of the current user's profile photo to reuse
  final int chatPhotoId;
  
  /// Parse from a json
  factory InputChatPhotoPrevious.fromJson(Map<String, dynamic> json) => InputChatPhotoPrevious(
    chatPhotoId: int.parse(json['chat_photo_id']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_photo_id": chatPhotoId,
    };
  }
  
  @override
  InputChatPhotoPrevious copyWith({
    int? chatPhotoId,
  }) => InputChatPhotoPrevious(
    chatPhotoId: chatPhotoId ?? this.chatPhotoId,
  );

  static const CONSTRUCTOR = 'inputChatPhotoPrevious';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputChatPhotoStatic extends InputChatPhoto {

  /// A static photo in JPEG format
  const InputChatPhotoStatic({
    required this.photo,
  });
  
  /// [photo] Photo to be set as profile photo. Only inputFileLocal and inputFileGenerated are allowed
  final InputFile photo;
  
  /// Parse from a json
  factory InputChatPhotoStatic.fromJson(Map<String, dynamic> json) => InputChatPhotoStatic(
    photo: InputFile.fromJson(json['photo']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
    };
  }
  
  @override
  InputChatPhotoStatic copyWith({
    InputFile? photo,
  }) => InputChatPhotoStatic(
    photo: photo ?? this.photo,
  );

  static const CONSTRUCTOR = 'inputChatPhotoStatic';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputChatPhotoAnimation extends InputChatPhoto {

  /// An animation in MPEG4 format; must be square, at most 10 seconds long, have width between 160 and 800 and be at most 2MB in size
  const InputChatPhotoAnimation({
    required this.animation,
    required this.mainFrameTimestamp,
  });
  
  /// [animation] Animation to be set as profile photo. Only inputFileLocal and inputFileGenerated are allowed
  final InputFile animation;

  /// [mainFrameTimestamp] Timestamp of the frame, which will be used as static chat photo
  final double mainFrameTimestamp;
  
  /// Parse from a json
  factory InputChatPhotoAnimation.fromJson(Map<String, dynamic> json) => InputChatPhotoAnimation(
    animation: InputFile.fromJson(json['animation']),
    mainFrameTimestamp: json['main_frame_timestamp'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "animation": animation.toJson(),
      "main_frame_timestamp": mainFrameTimestamp,
    };
  }
  
  @override
  InputChatPhotoAnimation copyWith({
    InputFile? animation,
    double? mainFrameTimestamp,
  }) => InputChatPhotoAnimation(
    animation: animation ?? this.animation,
    mainFrameTimestamp: mainFrameTimestamp ?? this.mainFrameTimestamp,
  );

  static const CONSTRUCTOR = 'inputChatPhotoAnimation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
