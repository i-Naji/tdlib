part of '../tdapi.dart';

class ChatLocation extends TdObject {
  Location location;
  String address;

  /// Represents a location to which a chat is connected. 
  /// [location] The location . 
  /// [address] Location address; 1-64 characters, as defined by the chat owner
  ChatLocation({this.location,
    this.address});

  /// Parse from a json
  ChatLocation.fromJson(Map<String, dynamic> json)  {
    this.location = Location.fromJson(json['location'] ?? <String, dynamic>{});
    this.address = json['address'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location.toJson(),
      "address": this.address,
    };
  }

  static const CONSTRUCTOR = 'chatLocation';
}