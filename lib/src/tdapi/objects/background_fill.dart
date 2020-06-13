part of '../tdapi.dart';

class BackgroundFill extends TdObject {
  

  /// Describes a fill of a background
  BackgroundFill();

  /// a BackgroundFill return type can be :
  /// * BackgroundFillSolid
  /// * BackgroundFillGradient
  factory BackgroundFill.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case BackgroundFillSolid.CONSTRUCTOR:
        return BackgroundFillSolid.fromJson(json);
      case BackgroundFillGradient.CONSTRUCTOR:
        return BackgroundFillGradient.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'backgroundFill';
}

class BackgroundFillSolid extends BackgroundFill {
  int color;

  /// Describes a solid fill of a background. 
  /// [color] A color of the background in the RGB24 format
  BackgroundFillSolid({this.color});

  /// Parse from a json
  BackgroundFillSolid.fromJson(Map<String, dynamic> json)  {
    this.color = json['color'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "color": this.color,
    };
  }

  static const CONSTRUCTOR = 'backgroundFillSolid';
}

class BackgroundFillGradient extends BackgroundFill {
  int topColor;
  int bottomColor;
  int rotationAngle;

  /// Describes a gradient fill of a background. 
  /// [topColor] A top color of the background in the RGB24 format . 
  /// [bottomColor] A bottom color of the background in the RGB24 format. 
  /// [rotationAngle] Clockwise rotation angle of the gradient, in degrees; 0-359. Should be always divisible by 45
  BackgroundFillGradient({this.topColor,
    this.bottomColor,
    this.rotationAngle});

  /// Parse from a json
  BackgroundFillGradient.fromJson(Map<String, dynamic> json)  {
    this.topColor = json['top_color'];
    this.bottomColor = json['bottom_color'];
    this.rotationAngle = json['rotation_angle'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "top_color": this.topColor,
      "bottom_color": this.bottomColor,
      "rotation_angle": this.rotationAngle,
    };
  }

  static const CONSTRUCTOR = 'backgroundFillGradient';
}