part of '../tdapi.dart';

class Point extends TdObject {
  /// A point on a Cartesian plane
  Point({this.x, this.y});

  /// [x] The point's first coordinate
  double x;

  /// [y] The point's second coordinate
  double y;

  /// Parse from a json
  Point.fromJson(Map<String, dynamic> json) {
    this.x = json['x'];
    this.y = json['y'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "x": this.x,
      "y": this.y,
    };
  }

  static const CONSTRUCTOR = 'point';

  @override
  String getConstructor() => CONSTRUCTOR;
}
