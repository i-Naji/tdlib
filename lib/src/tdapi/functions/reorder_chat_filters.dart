part of '../tdapi.dart';

class ReorderChatFilters extends TdFunction {

  /// Changes the order of chat filters
  const ReorderChatFilters({
    required this.chatFilterIds,
  });
  
  /// [chatFilterIds] Identifiers of chat filters in the new correct order
  final List<int> chatFilterIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_filter_ids": chatFilterIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  ReorderChatFilters copyWith({
    List<int>? chatFilterIds,
  }) => ReorderChatFilters(
    chatFilterIds: chatFilterIds ?? this.chatFilterIds,
  );

  static const CONSTRUCTOR = 'reorderChatFilters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
