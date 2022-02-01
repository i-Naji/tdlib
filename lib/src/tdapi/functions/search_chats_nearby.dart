part of '../tdapi.dart';

class SearchChatsNearby extends TdFunction {

  /// Returns a list of users and location-based supergroups nearby. The list of users nearby will be updated for 60 seconds after the request by the updates updateUsersNearby. The request must be sent again every 25 seconds with adjusted location to not miss new chats
  const SearchChatsNearby({
    required this.location,
  });
  
  /// [location] Current user location
  final Location location;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "location": location.toJson(),
      "@extra": extra,
    };
  }
  
  SearchChatsNearby copyWith({
    Location? location,
  }) => SearchChatsNearby(
    location: location ?? this.location,
  );

  static const CONSTRUCTOR = 'searchChatsNearby';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
