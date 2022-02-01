part of '../tdapi.dart';

class CreateChatFilter extends TdFunction {

  /// Creates new chat filter. Returns information about the created chat filter
  const CreateChatFilter({
    required this.filter,
  });
  
  /// [filter] Chat filter
  final ChatFilter filter;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "filter": filter.toJson(),
      "@extra": extra,
    };
  }
  
  CreateChatFilter copyWith({
    ChatFilter? filter,
  }) => CreateChatFilter(
    filter: filter ?? this.filter,
  );

  static const CONSTRUCTOR = 'createChatFilter';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
