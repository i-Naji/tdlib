part of '../tdapi.dart';

class PollOption extends TdObject {
  /// Describes one answer option of a poll
  PollOption(
      {this.text,
      this.voterCount,
      this.votePercentage,
      this.isChosen,
      this.isBeingChosen});

  /// [text] Option text, 1-100 characters
  String text;

  /// [voterCount] Number of voters for this option, available only for closed or voted polls
  int voterCount;

  /// [votePercentage] The percentage of votes for this option, 0-100
  int votePercentage;

  /// [isChosen] True, if the option was chosen by the user
  bool isChosen;

  /// [isBeingChosen] True, if the option is being chosen by a pending setPollAnswer request
  bool isBeingChosen;

  /// Parse from a json
  PollOption.fromJson(Map<String, dynamic> json) {
    this.text = json['text'];
    this.voterCount = json['voter_count'];
    this.votePercentage = json['vote_percentage'];
    this.isChosen = json['is_chosen'];
    this.isBeingChosen = json['is_being_chosen'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "voter_count": this.voterCount,
      "vote_percentage": this.votePercentage,
      "is_chosen": this.isChosen,
      "is_being_chosen": this.isBeingChosen,
    };
  }

  static const CONSTRUCTOR = 'pollOption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
