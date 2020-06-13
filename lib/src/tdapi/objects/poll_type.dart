part of '../tdapi.dart';

class PollType extends TdObject {
  

  /// Describes the type of a poll
  PollType();

  /// a PollType return type can be :
  /// * PollTypeRegular
  /// * PollTypeQuiz
  factory PollType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PollTypeRegular.CONSTRUCTOR:
        return PollTypeRegular.fromJson(json);
      case PollTypeQuiz.CONSTRUCTOR:
        return PollTypeQuiz.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'pollType';
}

class PollTypeRegular extends PollType {
  bool allowMultipleAnswers;

  /// A regular poll. 
  /// [allowMultipleAnswers] True, if multiple answer options can be chosen simultaneously
  PollTypeRegular({this.allowMultipleAnswers});

  /// Parse from a json
  PollTypeRegular.fromJson(Map<String, dynamic> json)  {
    this.allowMultipleAnswers = json['allow_multiple_answers'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "allow_multiple_answers": this.allowMultipleAnswers,
    };
  }

  static const CONSTRUCTOR = 'pollTypeRegular';
}

class PollTypeQuiz extends PollType {
  int correctOptionId;
  FormattedText explanation;

  /// A poll in quiz mode, which has exactly one correct answer option and can be answered only once. 
  /// [correctOptionId] 0-based identifier of the correct answer option; -1 for a yet unanswered poll. 
  /// [explanation] Text that is shown when the user chooses an incorrect answer or taps on the lamp icon, 0-200 characters with at most 2 line feeds; empty for a yet unanswered poll
  PollTypeQuiz({this.correctOptionId,
    this.explanation});

  /// Parse from a json
  PollTypeQuiz.fromJson(Map<String, dynamic> json)  {
    this.correctOptionId = json['correct_option_id'];
    this.explanation = FormattedText.fromJson(json['explanation'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "correct_option_id": this.correctOptionId,
      "explanation": this.explanation.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pollTypeQuiz';
}