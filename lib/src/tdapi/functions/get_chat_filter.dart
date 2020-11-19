part of '../tdapi.dart';

class GetChatFilter extends TdFunction {
  /// Returns information about a chat filter by its identifier
  GetChatFilter({this.chatFilterId});

  /// [chatFilterId] Chat filter identifier
  int chatFilterId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetChatFilter.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filter_id": this.chatFilterId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}
