part of '../tdapi.dart';

class BackgroundFill extends TdObject {

  /// Describes a fill of a background
  const BackgroundFill();
  
  /// a BackgroundFill return type can be :
  /// * [BackgroundFillSolid]
  /// * [BackgroundFillGradient]
  /// * [BackgroundFillFreeformGradient]
  factory BackgroundFill.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case BackgroundFillSolid.CONSTRUCTOR:
        return BackgroundFillSolid.fromJson(json);
      case BackgroundFillGradient.CONSTRUCTOR:
        return BackgroundFillGradient.fromJson(json);
      case BackgroundFillFreeformGradient.CONSTRUCTOR:
        return BackgroundFillFreeformGradient.fromJson(json);
      default:
        return const BackgroundFill();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  BackgroundFill copyWith() => const BackgroundFill();

  static const CONSTRUCTOR = 'backgroundFill';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BackgroundFillSolid extends BackgroundFill {

  /// Describes a solid fill of a background
  const BackgroundFillSolid({
    required this.color,
  });
  
  /// [color] A color of the background in the RGB24 format
  final int color;
  
  /// Parse from a json
  factory BackgroundFillSolid.fromJson(Map<String, dynamic> json) => BackgroundFillSolid(
    color: json['color'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "color": color,
    };
  }
  
  @override
  BackgroundFillSolid copyWith({
    int? color,
  }) => BackgroundFillSolid(
    color: color ?? this.color,
  );

  static const CONSTRUCTOR = 'backgroundFillSolid';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BackgroundFillGradient extends BackgroundFill {

  /// Describes a gradient fill of a background
  const BackgroundFillGradient({
    required this.topColor,
    required this.bottomColor,
    required this.rotationAngle,
  });
  
  /// [topColor] A top color of the background in the RGB24 format 
  final int topColor;

  /// [bottomColor] A bottom color of the background in the RGB24 format
  final int bottomColor;

  /// [rotationAngle] Clockwise rotation angle of the gradient, in degrees; 0-359. Must be always divisible by 45
  final int rotationAngle;
  
  /// Parse from a json
  factory BackgroundFillGradient.fromJson(Map<String, dynamic> json) => BackgroundFillGradient(
    topColor: json['top_color'],
    bottomColor: json['bottom_color'],
    rotationAngle: json['rotation_angle'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "top_color": topColor,
      "bottom_color": bottomColor,
      "rotation_angle": rotationAngle,
    };
  }
  
  @override
  BackgroundFillGradient copyWith({
    int? topColor,
    int? bottomColor,
    int? rotationAngle,
  }) => BackgroundFillGradient(
    topColor: topColor ?? this.topColor,
    bottomColor: bottomColor ?? this.bottomColor,
    rotationAngle: rotationAngle ?? this.rotationAngle,
  );

  static const CONSTRUCTOR = 'backgroundFillGradient';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BackgroundFillFreeformGradient extends BackgroundFill {

  /// Describes a freeform gradient fill of a background
  const BackgroundFillFreeformGradient({
    required this.colors,
  });
  
  /// [colors] A list of 3 or 4 colors of the freeform gradients in the RGB24 format
  final List<int> colors;
  
  /// Parse from a json
  factory BackgroundFillFreeformGradient.fromJson(Map<String, dynamic> json) => BackgroundFillFreeformGradient(
    colors: List<int>.from((json['colors'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "colors": colors.map((i) => i).toList(),
    };
  }
  
  @override
  BackgroundFillFreeformGradient copyWith({
    List<int>? colors,
  }) => BackgroundFillFreeformGradient(
    colors: colors ?? this.colors,
  );

  static const CONSTRUCTOR = 'backgroundFillFreeformGradient';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
