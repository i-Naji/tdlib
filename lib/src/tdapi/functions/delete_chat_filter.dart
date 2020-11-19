part of '../tdapi.dart';

class DeleteChatFilter extends TdFunction {
  /// Deletes existing chat filter
  DeleteChatFilter({this.chatFilterId});

  /// [chatFilterId] Chat filter identifier
  int chatFilterId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  DeleteChatFilter.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filter_id": this.chatFilterId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'deleteChatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}
