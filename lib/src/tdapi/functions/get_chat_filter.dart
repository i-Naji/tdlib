part of '../tdapi.dart';

class GetChatFilter extends TdFunction {
  int chatFilterId;
  dynamic extra;

  /// Returns information about a chat filter by its identifier. 
  /// [chatFilterId] Chat filter identifier
  GetChatFilter({this.chatFilterId});

  /// Parse from a json
  GetChatFilter.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filter_id": this.chatFilterId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatFilter';
}