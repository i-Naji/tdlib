part of '../tdapi.dart';

class RecommendedChatFilter extends TdObject {
  ChatFilter filter;
  String description;

  /// Describes a recommended chat filter. 
  /// [filter] The chat filter . 
  /// [description] Chat filter description
  RecommendedChatFilter({this.filter,
    this.description});

  /// Parse from a json
  RecommendedChatFilter.fromJson(Map<String, dynamic> json)  {
    this.filter = ChatFilter.fromJson(json['filter'] ?? <String, dynamic>{});
    this.description = json['description'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "filter": this.filter.toJson(),
      "description": this.description,
    };
  }

  static const CONSTRUCTOR = 'recommendedChatFilter';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}