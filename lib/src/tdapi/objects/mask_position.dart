part of '../tdapi.dart';

class MaskPosition extends TdObject {

  /// Position on a photo where a mask is placed
  const MaskPosition({
    required this.point,
    required this.xShift,
    required this.yShift,
    required this.scale,
  });
  
  /// [point] Part of the face, relative to which the mask is placed
  final MaskPoint point;

  /// [xShift] Shift by X-axis measured in widths of the mask scaled to the face size, from left to right. (For example, -1.0 will place the mask just to the left of the default mask position)
  final double xShift;

  /// [yShift] Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom. (For example, 1.0 will place the mask just below the default mask position)
  final double yShift;

  /// [scale] Mask scaling coefficient. (For example, 2.0 means a doubled size)
  final double scale;
  
  /// Parse from a json
  factory MaskPosition.fromJson(Map<String, dynamic> json) => MaskPosition(
    point: MaskPoint.fromJson(json['point']),
    xShift: json['x_shift'],
    yShift: json['y_shift'],
    scale: json['scale'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "point": point.toJson(),
      "x_shift": xShift,
      "y_shift": yShift,
      "scale": scale,
    };
  }
  
  MaskPosition copyWith({
    MaskPoint? point,
    double? xShift,
    double? yShift,
    double? scale,
  }) => MaskPosition(
    point: point ?? this.point,
    xShift: xShift ?? this.xShift,
    yShift: yShift ?? this.yShift,
    scale: scale ?? this.scale,
  );

  static const CONSTRUCTOR = 'maskPosition';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
