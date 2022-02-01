part of '../tdapi.dart';

class ReportSupergroupSpam extends TdFunction {

  /// Reports messages in a supergroup as spam; requires administrator rights in the supergroup
  const ReportSupergroupSpam({
    required this.supergroupId,
    required this.messageIds,
  });
  
  /// [supergroupId] Supergroup identifier 
  final int supergroupId;

  /// [messageIds] Identifiers of messages to report
  final List<int> messageIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "message_ids": messageIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  ReportSupergroupSpam copyWith({
    int? supergroupId,
    List<int>? messageIds,
  }) => ReportSupergroupSpam(
    supergroupId: supergroupId ?? this.supergroupId,
    messageIds: messageIds ?? this.messageIds,
  );

  static const CONSTRUCTOR = 'reportSupergroupSpam';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
