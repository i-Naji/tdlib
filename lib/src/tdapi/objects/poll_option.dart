part of '../tdapi.dart';

class PollOption implements TLObject {
  String text;
  int voterCount;
  int votePercentage;
  bool isChosen;
  bool isBeingChosen;

  /// Describes one answer option of a poll.
  ///[text] Option text, 1-100 characters .
  /// [voterCount] Number of voters for this option, available only for closed or voted polls .
  /// [votePercentage] The percentage of votes for this option, 0-100.
  /// [isChosen] True, if the option was chosen by the user .
  /// [isBeingChosen] True, if the option is being chosen by a pending setPollAnswer request
  PollOption(
      {this.text,
      this.voterCount,
      this.votePercentage,
      this.isChosen,
      this.isBeingChosen});

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
      "is_being_chosen": this.isBeingChosen
    };
  }

  static const String CONSTRUCTOR = "pollOption";

  @override
  String getConstructor() => CONSTRUCTOR;
}
