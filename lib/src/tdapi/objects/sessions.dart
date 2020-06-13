part of '../tdapi.dart';

class Sessions extends TdObject {
  List<List<Session>> sessions;
  dynamic extra;

  /// Contains a list of sessions. 
  /// [sessions] List of sessions
  Sessions({this.sessions});

  /// Parse from a json
  Sessions.fromJson(Map<String, dynamic> json)  {
    this.sessions = List<List<Session>>.from((json['sessions'] ?? []).map((item) => List<Session>.from((item ?? []).map((innerItem) => Session.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sessions": this.sessions.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'sessions';
}