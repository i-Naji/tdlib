part of '../tdapi.dart';

class VectorPathCommand extends TdObject {
  /// Represents a vector path command
  const VectorPathCommand();

  /// a VectorPathCommand return type can be :
  /// * [VectorPathCommandLine]
  /// * [VectorPathCommandCubicBezierCurve]
  factory VectorPathCommand.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case VectorPathCommandLine.CONSTRUCTOR:
        return VectorPathCommandLine.fromJson(json);
      case VectorPathCommandCubicBezierCurve.CONSTRUCTOR:
        return VectorPathCommandCubicBezierCurve.fromJson(json);
      default:
        return const VectorPathCommand();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  VectorPathCommand copyWith() => const VectorPathCommand();

  static const CONSTRUCTOR = 'vectorPathCommand';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class VectorPathCommandLine extends VectorPathCommand {
  /// A straight line to a given point
  const VectorPathCommandLine({
    required this.endPoint,
  });

  /// [endPoint] The end point of the straight line
  final Point endPoint;

  /// Parse from a json
  factory VectorPathCommandLine.fromJson(Map<String, dynamic> json) =>
      VectorPathCommandLine(
        endPoint: Point.fromJson(json['end_point']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "end_point": endPoint.toJson(),
    };
  }

  @override
  VectorPathCommandLine copyWith({
    Point? endPoint,
  }) =>
      VectorPathCommandLine(
        endPoint: endPoint ?? this.endPoint,
      );

  static const CONSTRUCTOR = 'vectorPathCommandLine';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class VectorPathCommandCubicBezierCurve extends VectorPathCommand {
  /// A cubic Bézier curve to a given point
  const VectorPathCommandCubicBezierCurve({
    required this.startControlPoint,
    required this.endControlPoint,
    required this.endPoint,
  });

  /// [startControlPoint] The start control point of the curve
  final Point startControlPoint;

  /// [endControlPoint] The end control point of the curve
  final Point endControlPoint;

  /// [endPoint] The end point of the curve
  final Point endPoint;

  /// Parse from a json
  factory VectorPathCommandCubicBezierCurve.fromJson(
          Map<String, dynamic> json) =>
      VectorPathCommandCubicBezierCurve(
        startControlPoint: Point.fromJson(json['start_control_point']),
        endControlPoint: Point.fromJson(json['end_control_point']),
        endPoint: Point.fromJson(json['end_point']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "start_control_point": startControlPoint.toJson(),
      "end_control_point": endControlPoint.toJson(),
      "end_point": endPoint.toJson(),
    };
  }

  @override
  VectorPathCommandCubicBezierCurve copyWith({
    Point? startControlPoint,
    Point? endControlPoint,
    Point? endPoint,
  }) =>
      VectorPathCommandCubicBezierCurve(
        startControlPoint: startControlPoint ?? this.startControlPoint,
        endControlPoint: endControlPoint ?? this.endControlPoint,
        endPoint: endPoint ?? this.endPoint,
      );

  static const CONSTRUCTOR = 'vectorPathCommandCubicBezierCurve';

  @override
  String getConstructor() => CONSTRUCTOR;
}
