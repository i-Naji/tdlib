part of '../tdapi.dart';

class ChatLocation extends TdObject {
  /// Represents a location to which a chat is connected
  ChatLocation({this.location, this.address});

  /// [location] The location
  Location location;

  /// [address] Location address; 1-64 characters, as defined by the chat owner
  String address;

  /// Parse from a json
  ChatLocation.fromJson(Map<String, dynamic> json) {
    this.location = Location.fromJson(json['location'] ?? <String, dynamic>{});
    this.address = json['address'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location == null ? null : this.location.toJson(),
      "address": this.address,
    };
  }

  static const CONSTRUCTOR = 'chatLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
