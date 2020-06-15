part of '../tdapi.dart';

class ChatEvents extends TdObject {
  List<ChatEvent> events;
  dynamic extra;

  /// Contains a list of chat events. 
  /// [events] List of events
  ChatEvents({this.events});

  /// Parse from a json
  ChatEvents.fromJson(Map<String, dynamic> json)  {
    this.events = List<ChatEvent>.from((json['events'] ?? []).map((item) => ChatEvent.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "events": this.events.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatEvents';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}