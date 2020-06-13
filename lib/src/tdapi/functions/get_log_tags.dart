part of '../tdapi.dart';

class GetLogTags extends TdFunction {
  dynamic extra;

  /// Returns list of available TDLib internal log tags, for example,
  GetLogTags();

  /// Parse from a json
  GetLogTags.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getLogTags';
}