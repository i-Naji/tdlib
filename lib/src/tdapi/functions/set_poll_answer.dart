part of '../tdapi.dart';

class SetPollAnswer extends TLFunction {
  int chatId;
  int messageId;
  List<int> optionIds;
  dynamic extra;

  /// Changes user answer to a poll.
  ///[chatId] Identifier of the chat to which the poll belongs .
  /// [messageId] Identifier of the message containing the poll.
  /// [optionIds] 0-based identifiers of options, chosen by the user. Currently user can't choose more than 1 option
  SetPollAnswer({this.chatId, this.messageId, this.optionIds});

  /// Parse from a json
  SetPollAnswer.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'message_id': this.messageId,
      'option_ids': this.optionIds,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'setPollAnswer';

  @override
  String getConstructor() => CONSTRUCTOR;
}
