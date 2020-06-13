part of '../tdapi.dart';

class RemoveRecentHashtag extends TdFunction {
  String hashtag;
  dynamic extra;

  /// Removes a hashtag from the list of recently used hashtags. 
  /// [hashtag] Hashtag to delete
  RemoveRecentHashtag({this.hashtag});

  /// Parse from a json
  RemoveRecentHashtag.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "hashtag": this.hashtag,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeRecentHashtag';
}