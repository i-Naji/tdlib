part of '../tdapi.dart';

class GetRecentlyVisitedTMeUrls extends TdFunction {
  String referrer;
  dynamic extra;

  /// Returns t.me URLs recently visited by a newly registered user.
  ///[referrer] Google Play referrer to identify the user
  GetRecentlyVisitedTMeUrls({this.referrer});

  /// Parse from a json
  GetRecentlyVisitedTMeUrls.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "referrer": this.referrer,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getRecentlyVisitedTMeUrls";

  @override
  String getConstructor() => CONSTRUCTOR;
}
