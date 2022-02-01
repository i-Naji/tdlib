part of '../tdapi.dart';

class GetRecentlyVisitedTMeUrls extends TdFunction {

  /// Returns t.me URLs recently visited by a newly registered user
  const GetRecentlyVisitedTMeUrls({
    required this.referrer,
  });
  
  /// [referrer] Google Play referrer to identify the user
  final String referrer;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "referrer": referrer,
      "@extra": extra,
    };
  }
  
  GetRecentlyVisitedTMeUrls copyWith({
    String? referrer,
  }) => GetRecentlyVisitedTMeUrls(
    referrer: referrer ?? this.referrer,
  );

  static const CONSTRUCTOR = 'getRecentlyVisitedTMeUrls';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
