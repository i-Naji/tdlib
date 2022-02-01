part of '../tdapi.dart';

class GetChatFilter extends TdFunction {

  /// Returns information about a chat filter by its identifier
  const GetChatFilter({
    required this.chatFilterId,
  });
  
  /// [chatFilterId] Chat filter identifier
  final int chatFilterId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_filter_id": chatFilterId,
      "@extra": extra,
    };
  }
  
  GetChatFilter copyWith({
    int? chatFilterId,
  }) => GetChatFilter(
    chatFilterId: chatFilterId ?? this.chatFilterId,
  );

  static const CONSTRUCTOR = 'getChatFilter';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
