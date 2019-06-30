part of '../tdapi.dart';

class GetWallpapers extends TLFunction {
  dynamic extra;

  /// Returns background wallpapers.
  ///
  GetWallpapers();

  /// Parse from a json
  GetWallpapers.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, '@extra': this.extra};
  }

  static const String CONSTRUCTOR = 'getWallpapers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
