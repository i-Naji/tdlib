part of '../tdapi.dart';

class RecommendedChatFilter extends TdObject {
  /// Describes a recommended chat filter
  RecommendedChatFilter({this.filter, this.description});

  /// [filter] The chat filter
  ChatFilter filter;

  /// [description] Chat filter description
  String description;

  /// Parse from a json
  RecommendedChatFilter.fromJson(Map<String, dynamic> json) {
    this.filter = ChatFilter.fromJson(json['filter'] ?? <String, dynamic>{});
    this.description = json['description'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "filter": this.filter == null ? null : this.filter.toJson(),
      "description": this.description,
    };
  }

  static const CONSTRUCTOR = 'recommendedChatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}
