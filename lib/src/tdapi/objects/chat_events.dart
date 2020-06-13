part of '../tdapi.dart';

class ChatEvents extends TdObject {
  List<List<ChatEvent>> events;
  dynamic extra;

  /// Contains a list of chat events. 
  /// [events] List of events
  ChatEvents({this.events});

  /// Parse from a json
  ChatEvents.fromJson(Map<String, dynamic> json)  {
    this.events = List<List<ChatEvent>>.from((json['events'] ?? []).map((item) => List<ChatEvent>.from((item ?? []).map((innerItem) => ChatEvent.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "events": this.events.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatEvents';
}