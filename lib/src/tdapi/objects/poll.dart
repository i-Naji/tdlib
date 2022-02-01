part of '../tdapi.dart';

class Poll extends TdObject {

  /// Describes a poll
  const Poll({
    required this.id,
    required this.question,
    required this.options,
    required this.totalVoterCount,
    required this.recentVoterUserIds,
    required this.isAnonymous,
    required this.type,
    required this.openPeriod,
    required this.closeDate,
    required this.isClosed,
  });
  
  /// [id] Unique poll identifier 
  final int id;

  /// [question] Poll question; 1-300 characters 
  final String question;

  /// [options] List of poll answer options
  final List<PollOption> options;

  /// [totalVoterCount] Total number of voters, participating in the poll
  final int totalVoterCount;

  /// [recentVoterUserIds] User identifiers of recent voters, if the poll is non-anonymous
  final List<int> recentVoterUserIds;

  /// [isAnonymous] True, if the poll is anonymous
  final bool isAnonymous;

  /// [type] Type of the poll
  final PollType type;

  /// [openPeriod] Amount of time the poll will be active after creation, in seconds
  final int openPeriod;

  /// [closeDate] Point in time (Unix timestamp) when the poll will automatically be closed 
  final int closeDate;

  /// [isClosed] True, if the poll is closed
  final bool isClosed;
  
  /// Parse from a json
  factory Poll.fromJson(Map<String, dynamic> json) => Poll(
    id: int.parse(json['id']),
    question: json['question'],
    options: List<PollOption>.from((json['options'] ?? []).map((item) => PollOption.fromJson(item)).toList()),
    totalVoterCount: json['total_voter_count'],
    recentVoterUserIds: List<int>.from((json['recent_voter_user_ids'] ?? []).map((item) => item).toList()),
    isAnonymous: json['is_anonymous'],
    type: PollType.fromJson(json['type']),
    openPeriod: json['open_period'],
    closeDate: json['close_date'],
    isClosed: json['is_closed'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "question": question,
      "options": options.map((i) => i.toJson()).toList(),
      "total_voter_count": totalVoterCount,
      "recent_voter_user_ids": recentVoterUserIds.map((i) => i).toList(),
      "is_anonymous": isAnonymous,
      "type": type.toJson(),
      "open_period": openPeriod,
      "close_date": closeDate,
      "is_closed": isClosed,
    };
  }
  
  Poll copyWith({
    int? id,
    String? question,
    List<PollOption>? options,
    int? totalVoterCount,
    List<int>? recentVoterUserIds,
    bool? isAnonymous,
    PollType? type,
    int? openPeriod,
    int? closeDate,
    bool? isClosed,
  }) => Poll(
    id: id ?? this.id,
    question: question ?? this.question,
    options: options ?? this.options,
    totalVoterCount: totalVoterCount ?? this.totalVoterCount,
    recentVoterUserIds: recentVoterUserIds ?? this.recentVoterUserIds,
    isAnonymous: isAnonymous ?? this.isAnonymous,
    type: type ?? this.type,
    openPeriod: openPeriod ?? this.openPeriod,
    closeDate: closeDate ?? this.closeDate,
    isClosed: isClosed ?? this.isClosed,
  );

  static const CONSTRUCTOR = 'poll';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
