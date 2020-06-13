part of '../tdapi.dart';

class ReportSupergroupSpam extends TdFunction {
  int supergroupId;
  int userId;
  List<List<int>> messageIds;
  dynamic extra;

  /// Reports some messages from a user in a supergroup as spam; requires administrator rights in the supergroup. 
  /// [supergroupId] Supergroup identifier . 
  /// [userId] User identifier . 
  /// [messageIds] Identifiers of messages sent in the supergroup by the user. This list must be non-empty
  ReportSupergroupSpam({this.supergroupId,
    this.userId,
    this.messageIds});

  /// Parse from a json
  ReportSupergroupSpam.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "user_id": this.userId,
      "message_ids": this.messageIds.map((i) => i.map((ii) => ii).toList()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'reportSupergroupSpam';
}