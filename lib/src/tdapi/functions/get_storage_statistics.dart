part of '../tdapi.dart';

class GetStorageStatistics extends TdFunction {

  /// Returns storage usage statistics. Can be called before authorization
  const GetStorageStatistics({
    required this.chatLimit,
  });
  
  /// [chatLimit] The maximum number of chats with the largest storage usage for which separate statistics need to be returned. All other chats will be grouped in entries with chat_id == 0. If the chat info database is not used, the chat_limit is ignored and is always set to 0
  final int chatLimit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_limit": chatLimit,
      "@extra": extra,
    };
  }
  
  GetStorageStatistics copyWith({
    int? chatLimit,
  }) => GetStorageStatistics(
    chatLimit: chatLimit ?? this.chatLimit,
  );

  static const CONSTRUCTOR = 'getStorageStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
