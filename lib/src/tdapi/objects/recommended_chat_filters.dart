part of '../tdapi.dart';

class RecommendedChatFilters extends TdObject {
  List<RecommendedChatFilter> chatFilters;
  dynamic extra;

  /// Contains a list of recommended chat filters. 
  /// [chatFilters] List of recommended chat filters
  RecommendedChatFilters({this.chatFilters});

  /// Parse from a json
  RecommendedChatFilters.fromJson(Map<String, dynamic> json)  {
    this.chatFilters = List<RecommendedChatFilter>.from((json['chat_filters'] ?? []).map((item) => RecommendedChatFilter.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filters": this.chatFilters.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'recommendedChatFilters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}