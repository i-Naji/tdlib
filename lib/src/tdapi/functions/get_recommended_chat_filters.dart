part of '../tdapi.dart';

class GetRecommendedChatFilters extends TdFunction {
  dynamic extra;

  /// Returns recommended chat filters for the current user
  GetRecommendedChatFilters();

  /// Parse from a json
  GetRecommendedChatFilters.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getRecommendedChatFilters';
}