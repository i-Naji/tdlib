part of '../tdapi.dart';

class GetStorageStatistics extends TdFunction {
  int chatLimit;
  dynamic extra;

  /// Returns storage usage statistics. Can be called before authorization. 
  /// [chatLimit] The maximum number of chats with the largest storage usage for which separate statistics should be returned. All other chats will be grouped in entries with chat_id == 0. If the chat info database is not used, the chat_limit is ignored and is always set to 0
  GetStorageStatistics({this.chatLimit});

  /// Parse from a json
  GetStorageStatistics.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_limit": this.chatLimit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getStorageStatistics';
}