part of '../tdapi.dart';

class Poll implements TdObject {
  int id;
  String question;
  List<PollOption> options;
  int totalVoterCount;
  bool isClosed;

  /// Describes a poll.
  ///[id] Unique poll identifier .
  /// [question] Poll question, 1-255 characters .
  /// [options] List of poll answer options .
  /// [totalVoterCount] Total number of voters, participating in the poll .
  /// [isClosed] True, if the poll is closed
  Poll(
      {this.id,
      this.question,
      this.options,
      this.totalVoterCount,
      this.isClosed});

  /// Parse from a json
  Poll.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.question = json['question'];
    this.options = List<PollOption>.from((json['options'] ?? [])
        .map((listValue) => PollOption.fromJson(listValue))
        .toList());
    this.totalVoterCount = json['total_voter_count'];
    this.isClosed = json['is_closed'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "question": this.question,
      "options": this.options.map((listItem) => listItem.toJson()).toList(),
      "total_voter_count": this.totalVoterCount,
      "is_closed": this.isClosed
    };
  }

  static const String CONSTRUCTOR = "poll";

  @override
  String getConstructor() => CONSTRUCTOR;
}
