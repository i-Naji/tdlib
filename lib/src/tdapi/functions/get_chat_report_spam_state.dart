part of '../tdapi.dart';

class GetChatReportSpamState extends TLFunction {
  int chatId;
  dynamic extra;

  /// Returns information on whether the current chat can be reported as spam.
  ///[chatId] Chat identifier
  GetChatReportSpamState({this.chatId});

  /// Parse from a json
  GetChatReportSpamState.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'chat_id': this.chatId, '@extra': this.extra};
  }

  static const String CONSTRUCTOR = 'getChatReportSpamState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
