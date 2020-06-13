part of '../tdapi.dart';

class SetLocation extends TdFunction {
  Location location;
  dynamic extra;

  /// Changes the location of the current user. Needs to be called if GetOption("is_location_visible") is true and location changes for more than 1 kilometer. 
  /// [location] The new location of the user
  SetLocation({this.location});

  /// Parse from a json
  SetLocation.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setLocation';
}