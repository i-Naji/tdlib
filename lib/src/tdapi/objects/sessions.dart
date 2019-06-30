part of '../tdapi.dart';

class Sessions implements TLObject {
  List<Session> sessions;
  dynamic extra;

  /// Contains a list of sessions.
  ///[sessions] List of sessions
  Sessions({this.sessions});

  /// Parse from a json
  Sessions.fromJson(Map<String, dynamic> json) {
    this.sessions = (json['sessions'] ?? [])
        .map((listValue) => Session.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'sessions': this.sessions.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'sessions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
