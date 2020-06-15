part of '../tdapi.dart';

class EditChatFilter extends TdFunction {
  int chatFilterId;
  ChatFilter filter;
  dynamic extra;

  /// Edits existing chat filter. Returns information about the edited chat filter. 
  /// [chatFilterId] Chat filter identifier . 
  /// [filter] The edited chat filter
  EditChatFilter({this.chatFilterId,
    this.filter});

  /// Parse from a json
  EditChatFilter.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filter_id": this.chatFilterId,
      "filter": this.filter.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editChatFilter';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}