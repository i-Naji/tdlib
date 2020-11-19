part of '../tdapi.dart';

class ReportSupergroupSpam extends TdFunction {
  /// Reports some messages from a user in a supergroup as spam; requires administrator rights in the supergroup
  ReportSupergroupSpam({this.supergroupId, this.userId, this.messageIds});

  /// [supergroupId] Supergroup identifier
  int supergroupId;

  /// [userId] User identifier
  int userId;

  /// [messageIds] Identifiers of messages sent in the supergroup by the user. This list must be non-empty
  List<int> messageIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ReportSupergroupSpam.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "user_id": this.userId,
      "message_ids": this.messageIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'reportSupergroupSpam';

  @override
  String getConstructor() => CONSTRUCTOR;
}
