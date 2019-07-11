part of '../tdapi.dart';

class Location implements TLObject {
  double latitude;
  double longitude;

  /// Describes a location on planet Earth.
  ///[latitude] Latitude of the location in degrees; as defined by the sender .
  /// [longitude] Longitude of the location, in degrees; as defined by the sender
  Location({this.latitude, this.longitude});

  /// Parse from a json
  Location.fromJson(Map<String, dynamic> json) {
    this.latitude = json['latitude'];
    this.longitude = json['longitude'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "latitude": this.latitude,
      "longitude": this.longitude
    };
  }

  static const String CONSTRUCTOR = "location";

  @override
  String getConstructor() => CONSTRUCTOR;
}
