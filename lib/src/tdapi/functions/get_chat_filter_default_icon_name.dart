part of '../tdapi.dart';

class GetChatFilterDefaultIconName extends TdFunction {

  /// Returns default icon name for a filter. Can be called synchronously
  const GetChatFilterDefaultIconName({
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
  
  GetChatFilterDefaultIconName copyWith({
    ChatFilter? filter,
  }) => GetChatFilterDefaultIconName(
    filter: filter ?? this.filter,
  );

  static const CONSTRUCTOR = 'getChatFilterDefaultIconName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
