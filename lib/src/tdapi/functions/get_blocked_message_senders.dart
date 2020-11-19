part of '../tdapi.dart';

class GetBlockedMessageSenders extends TdFunction {
  /// Returns users and chats that were blocked by the current user
  GetBlockedMessageSenders({this.offset, this.limit});

  /// [offset] Number of users and chats to skip in the result; must be non-negative
  int offset;

  /// [limit] The maximum number of users and chats to return; up to 100
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetBlockedMessageSenders.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "offset": this.offset,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getBlockedMessageSenders';

  @override
  String getConstructor() => CONSTRUCTOR;
}
