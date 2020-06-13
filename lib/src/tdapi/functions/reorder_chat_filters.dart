part of '../tdapi.dart';

class ReorderChatFilters extends TdFunction {
  List<List<int>> chatFilterIds;
  dynamic extra;

  /// Changes the order of chat filters. 
  /// [chatFilterIds] Identifiers of chat filters in the new correct order
  ReorderChatFilters({this.chatFilterIds});

  /// Parse from a json
  ReorderChatFilters.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filter_ids": this.chatFilterIds.map((i) => i.map((ii) => ii).toList()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'reorderChatFilters';
}