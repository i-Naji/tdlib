part of '../tdapi.dart';

class FoundMessages extends TdObject {

  /// Contains a list of messages found by a search
  FoundMessages({this.messages,
    this.nextFromSearchId});

  /// [messages] List of messages 
  List<Message> messages;

  /// [nextFromSearchId] Value to pass as from_search_id to get more results
  int nextFromSearchId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  FoundMessages.fromJson(Map<String, dynamic> json)  {
    this.messages = List<Message>.from((json['messages'] ?? []).map((item) => Message.fromJson(item ?? <String, dynamic>{})).toList());
    this.nextFromSearchId = int.tryParse(json['next_from_search_id'] ?? "");
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "messages": this.messages.map((i) => i.toJson()).toList(),
      "next_from_search_id": this.nextFromSearchId,
    };
  }

  static const CONSTRUCTOR = 'foundMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}