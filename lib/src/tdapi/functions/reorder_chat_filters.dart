part of '../tdapi.dart';

class ReorderChatFilters extends TdFunction {
  /// Changes the order of chat filters
  ReorderChatFilters({this.chatFilterIds});

  /// [chatFilterIds] Identifiers of chat filters in the new correct order
  List<int> chatFilterIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ReorderChatFilters.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filter_ids": this.chatFilterIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'reorderChatFilters';

  @override
  String getConstructor() => CONSTRUCTOR;
}
