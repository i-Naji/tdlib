part of '../tdapi.dart';

class RecommendedChatFilter extends TdObject {

  /// Describes a recommended chat filter
  const RecommendedChatFilter({
    required this.filter,
    required this.description,
  });
  
  /// [filter] The chat filter 
  final ChatFilter filter;

  /// [description] Chat filter description
  final String description;
  
  /// Parse from a json
  factory RecommendedChatFilter.fromJson(Map<String, dynamic> json) => RecommendedChatFilter(
    filter: ChatFilter.fromJson(json['filter']),
    description: json['description'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "filter": filter.toJson(),
      "description": description,
    };
  }
  
  RecommendedChatFilter copyWith({
    ChatFilter? filter,
    String? description,
  }) => RecommendedChatFilter(
    filter: filter ?? this.filter,
    description: description ?? this.description,
  );

  static const CONSTRUCTOR = 'recommendedChatFilter';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
