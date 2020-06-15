part of '../tdapi.dart';

class SendCallRating extends TdFunction {
  int callId;
  int rating;
  String comment;
  List<CallProblem> problems;
  dynamic extra;

  /// Sends a call rating. 
  /// [callId] Call identifier . 
  /// [rating] Call rating; 1-5 . 
  /// [comment] An optional user comment if the rating is less than 5 . 
  /// [problems] List of the exact types of problems with the call, specified by the user
  SendCallRating({this.callId,
    this.rating,
    this.comment,
    this.problems});

  /// Parse from a json
  SendCallRating.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call_id": this.callId,
      "rating": this.rating,
      "comment": this.comment,
      "problems": this.problems.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendCallRating';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}