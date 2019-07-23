part of '../tdapi.dart';

class ChatReportSpamState implements TdObject {
  bool canReportSpam;
  dynamic extra;

  /// Contains information about the availability of the "Report spam" action for a chat.
  ///[canReportSpam] True, if a prompt with the "Report spam" action should be shown to the user
  ChatReportSpamState({this.canReportSpam});

  /// Parse from a json
  ChatReportSpamState.fromJson(Map<String, dynamic> json) {
    this.canReportSpam = json['can_report_spam'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "can_report_spam": this.canReportSpam};
  }

  static const String CONSTRUCTOR = "chatReportSpamState";

  @override
  String getConstructor() => CONSTRUCTOR;
}
