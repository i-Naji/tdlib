part of '../tdapi.dart';

class BackgroundType implements TdObject {
  /// Describes a type of a background
  BackgroundType();

  /// a BackgroundType return type can be :
  /// * BackgroundTypeWallpaper
  /// * BackgroundTypePattern
  /// * BackgroundTypeSolid
  factory BackgroundType.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case BackgroundTypeWallpaper.CONSTRUCTOR:
        return BackgroundTypeWallpaper.fromJson(json);
      case BackgroundTypePattern.CONSTRUCTOR:
        return BackgroundTypePattern.fromJson(json);
      case BackgroundTypeSolid.CONSTRUCTOR:
        return BackgroundTypeSolid.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "backgroundType";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BackgroundTypeWallpaper implements BackgroundType {
  bool isBlurred;
  bool isMoving;

  /// A wallpaper in JPEG format.
  ///[isBlurred] True, if the wallpaper must be downscaled to fit in 450x450 square and then box-blurred with radius 12.
  /// [isMoving] True, if the background needs to be slightly moved when device is rotated
  BackgroundTypeWallpaper({this.isBlurred, this.isMoving});

  /// Parse from a json
  BackgroundTypeWallpaper.fromJson(Map<String, dynamic> json) {
    this.isBlurred = json['is_blurred'];
    this.isMoving = json['is_moving'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_blurred": this.isBlurred,
      "is_moving": this.isMoving
    };
  }

  static const String CONSTRUCTOR = "backgroundTypeWallpaper";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BackgroundTypePattern implements BackgroundType {
  bool isMoving;
  int color;
  int intensity;

  /// A PNG pattern to be combined with the color chosen by the user.
  ///[isMoving] True, if the background needs to be slightly moved when device is rotated.
  /// [color] Main color of the background in RGB24 format.
  /// [intensity] Intensity of the pattern when it is shown above the main background color, 0-100
  BackgroundTypePattern({this.isMoving, this.color, this.intensity});

  /// Parse from a json
  BackgroundTypePattern.fromJson(Map<String, dynamic> json) {
    this.isMoving = json['is_moving'];
    this.color = json['color'];
    this.intensity = json['intensity'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_moving": this.isMoving,
      "color": this.color,
      "intensity": this.intensity
    };
  }

  static const String CONSTRUCTOR = "backgroundTypePattern";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BackgroundTypeSolid implements BackgroundType {
  int color;

  /// A solid background.
  ///[color] A color of the background in RGB24 format
  BackgroundTypeSolid({this.color});

  /// Parse from a json
  BackgroundTypeSolid.fromJson(Map<String, dynamic> json) {
    this.color = json['color'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "color": this.color};
  }

  static const String CONSTRUCTOR = "backgroundTypeSolid";

  @override
  String getConstructor() => CONSTRUCTOR;
}
