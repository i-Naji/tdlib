part of '../tdapi.dart';

class GetSavedAnimations extends TLFunction {
  dynamic extra;

  /// Returns saved animations.
  ///
  GetSavedAnimations();

  /// Parse from a json
  GetSavedAnimations.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getSavedAnimations";

  @override
  String getConstructor() => CONSTRUCTOR;
}
