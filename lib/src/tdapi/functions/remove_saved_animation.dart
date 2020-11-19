part of '../tdapi.dart';

class RemoveSavedAnimation extends TdFunction {
  /// Removes an animation from the list of saved animations
  RemoveSavedAnimation({this.animation});

  /// [animation] Animation file to be removed
  InputFile animation;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  RemoveSavedAnimation.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation": this.animation == null ? null : this.animation.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeSavedAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
