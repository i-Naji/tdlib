part of '../tdapi.dart';

class SetLocation extends TdFunction {

  /// Changes the location of the current user. Needs to be called if GetOption("is_location_visible") is true and location changes for more than 1 kilometer
  const SetLocation({
    required this.location,
  });
  
  /// [location] The new location of the user
  final Location location;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "location": location.toJson(),
      "@extra": extra,
    };
  }
  
  SetLocation copyWith({
    Location? location,
  }) => SetLocation(
    location: location ?? this.location,
  );

  static const CONSTRUCTOR = 'setLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
