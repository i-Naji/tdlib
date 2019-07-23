part of '../tdapi.dart';

class SendCallRating extends TdFunction {
  int callId;
  int rating;
  String comment;
  dynamic extra;

  /// Sends a call rating.
  ///[callId] Call identifier .
  /// [rating] Call rating; 1-5 .
  /// [comment] An optional user comment if the rating is less than 5
  SendCallRating({this.callId, this.rating, this.comment});

  /// Parse from a json
  SendCallRating.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call_id": this.callId,
      "rating": this.rating,
      "comment": this.comment,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "sendCallRating";

  @override
  String getConstructor() => CONSTRUCTOR;
}
