part of '../tdapi.dart';

class Location extends TdObject {

  /// Describes a location on planet Earth
  Location({this.latitude,
    this.longitude});

  /// [latitude] Latitude of the location in degrees; as defined by the sender 
  double latitude;

  /// [longitude] Longitude of the location, in degrees; as defined by the sender
  double longitude;

  /// Parse from a json
  Location.fromJson(Map<String, dynamic> json)  {
    this.latitude = json['latitude'];
    this.longitude = json['longitude'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "latitude": this.latitude,
      "longitude": this.longitude,
    };
  }

  static const CONSTRUCTOR = 'location';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}