part of '../tdapi.dart';

class VectorPathCommand extends TdObject {
  /// Represents a vector path command
  VectorPathCommand();

  /// a VectorPathCommand return type can be :
  /// * VectorPathCommandLine
  /// * VectorPathCommandCubicBezierCurve
  factory VectorPathCommand.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case VectorPathCommandLine.CONSTRUCTOR:
        return VectorPathCommandLine.fromJson(json);
      case VectorPathCommandCubicBezierCurve.CONSTRUCTOR:
        return VectorPathCommandCubicBezierCurve.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'vectorPathCommand';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class VectorPathCommandLine extends VectorPathCommand {
  /// A straight line to a given point
  VectorPathCommandLine({this.endPoint});

  /// [endPoint] The end point of the straight line
  Point endPoint;

  /// Parse from a json
  VectorPathCommandLine.fromJson(Map<String, dynamic> json) {
    this.endPoint = Point.fromJson(json['end_point'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "end_point": this.endPoint == null ? null : this.endPoint.toJson(),
    };
  }

  static const CONSTRUCTOR = 'vectorPathCommandLine';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class VectorPathCommandCubicBezierCurve extends VectorPathCommand {
  /// A cubic B
  VectorPathCommandCubicBezierCurve();

  /// Parse from a json
  VectorPathCommandCubicBezierCurve.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'vectorPathCommandCubicBezierCurve';

  @override
  String getConstructor() => CONSTRUCTOR;
}
