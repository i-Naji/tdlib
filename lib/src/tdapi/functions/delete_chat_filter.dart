part of '../tdapi.dart';

class DeleteChatFilter extends TdFunction {
  int chatFilterId;
  dynamic extra;

  /// Deletes existing chat filter. 
  /// [chatFilterId] Chat filter identifier
  DeleteChatFilter({this.chatFilterId});

  /// Parse from a json
  DeleteChatFilter.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filter_id": this.chatFilterId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'deleteChatFilter';
}