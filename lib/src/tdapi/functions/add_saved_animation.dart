part of '../tdapi.dart';

class AddSavedAnimation extends TdFunction {

  /// Manually adds a new animation to the list of saved animations. The new animation is added to the beginning of the list. If the animation was already in the list, it is removed first. Only non-secret video animations with MIME type "video/mp4" can be added to the list
  const AddSavedAnimation({
    required this.animation,
  });
  
  /// [animation] The animation file to be added. Only animations known to the server (i.e., successfully sent via a message) can be added to the list
  final InputFile animation;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "animation": animation.toJson(),
      "@extra": extra,
    };
  }
  
  AddSavedAnimation copyWith({
    InputFile? animation,
  }) => AddSavedAnimation(
    animation: animation ?? this.animation,
  );

  static const CONSTRUCTOR = 'addSavedAnimation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
