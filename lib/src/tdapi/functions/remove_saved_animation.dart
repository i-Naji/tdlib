part of '../tdapi.dart';

class RemoveSavedAnimation extends TdFunction {

  /// Removes an animation from the list of saved animations
  const RemoveSavedAnimation({
    required this.animation,
  });
  
  /// [animation] Animation file to be removed
  final InputFile animation;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "animation": animation.toJson(),
      "@extra": extra,
    };
  }
  
  RemoveSavedAnimation copyWith({
    InputFile? animation,
  }) => RemoveSavedAnimation(
    animation: animation ?? this.animation,
  );

  static const CONSTRUCTOR = 'removeSavedAnimation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
