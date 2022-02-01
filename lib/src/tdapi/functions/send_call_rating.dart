part of '../tdapi.dart';

class SendCallRating extends TdFunction {

  /// Sends a call rating
  const SendCallRating({
    required this.callId,
    required this.rating,
    required this.comment,
    required this.problems,
  });
  
  /// [callId] Call identifier 
  final int callId;

  /// [rating] Call rating; 1-5 
  final int rating;

  /// [comment] An optional user comment if the rating is less than 5 
  final String comment;

  /// [problems] List of the exact types of problems with the call, specified by the user
  final List<CallProblem> problems;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "call_id": callId,
      "rating": rating,
      "comment": comment,
      "problems": problems.map((i) => i.toJson()).toList(),
      "@extra": extra,
    };
  }
  
  SendCallRating copyWith({
    int? callId,
    int? rating,
    String? comment,
    List<CallProblem>? problems,
  }) => SendCallRating(
    callId: callId ?? this.callId,
    rating: rating ?? this.rating,
    comment: comment ?? this.comment,
    problems: problems ?? this.problems,
  );

  static const CONSTRUCTOR = 'sendCallRating';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
