part of '../tdapi.dart';

class Venue extends TdObject {

  /// Describes a venue
  const Venue({
    required this.location,
    required this.title,
    required this.address,
    required this.provider,
    required this.id,
    required this.type,
  });
  
  /// [location] Venue location; as defined by the sender 
  final Location location;

  /// [title] Venue name; as defined by the sender 
  final String title;

  /// [address] Venue address; as defined by the sender 
  final String address;

  /// [provider] Provider of the venue database; as defined by the sender. Currently, only "foursquare" and "gplaces" (Google Places) need to be supported
  final String provider;

  /// [id] Identifier of the venue in the provider database; as defined by the sender
  final String id;

  /// [type] Type of the venue in the provider database; as defined by the sender
  final String type;
  
  /// Parse from a json
  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
    location: Location.fromJson(json['location']),
    title: json['title'],
    address: json['address'],
    provider: json['provider'],
    id: json['id'],
    type: json['type'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "location": location.toJson(),
      "title": title,
      "address": address,
      "provider": provider,
      "id": id,
      "type": type,
    };
  }
  
  Venue copyWith({
    Location? location,
    String? title,
    String? address,
    String? provider,
    String? id,
    String? type,
  }) => Venue(
    location: location ?? this.location,
    title: title ?? this.title,
    address: address ?? this.address,
    provider: provider ?? this.provider,
    id: id ?? this.id,
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'venue';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
