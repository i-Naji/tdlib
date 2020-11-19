part of '../tdapi.dart';

class RemoveBackground extends TdFunction {
  /// Removes background from the list of installed backgrounds
  RemoveBackground({this.backgroundId});

  /// [backgroundId] The background identifier
  int backgroundId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  RemoveBackground.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "background_id": this.backgroundId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
}
