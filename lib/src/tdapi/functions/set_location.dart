part of '../tdapi.dart';

class SetLocation extends TdFunction {
  /// Changes the location of the current user. Needs to be called if GetOption("is_location_visible") is true and location changes for more than 1 kilometer
  SetLocation({this.location});

  /// [location] The new location of the user
  Location location;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetLocation.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location == null ? null : this.location.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
