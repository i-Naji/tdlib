part of '../tdapi.dart';

class ChatEvents implements TdObject {
  List<ChatEvent> events;
  dynamic extra;

  /// Contains a list of chat events.
  ///[events] List of events
  ChatEvents({this.events});

  /// Parse from a json
  ChatEvents.fromJson(Map<String, dynamic> json) {
    this.events = List<ChatEvent>.from((json['events'] ?? [])
        .map((listValue) => ChatEvent.fromJson(listValue))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "events": this.events.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "chatEvents";

  @override
  String getConstructor() => CONSTRUCTOR;
}
