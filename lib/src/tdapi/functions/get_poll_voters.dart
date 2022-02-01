part of '../tdapi.dart';

class GetPollVoters extends TdFunction {

  /// Returns users voted for the specified option in a non-anonymous polls. For optimal performance, the number of returned users is chosen by TDLib
  const GetPollVoters({
    required this.chatId,
    required this.messageId,
    required this.optionId,
    required this.offset,
    required this.limit,
  });
  
  /// [chatId] Identifier of the chat to which the poll belongs
  final int chatId;

  /// [messageId] Identifier of the message containing the poll
  final int messageId;

  /// [optionId] 0-based identifier of the answer option
  final int optionId;

  /// [offset] Number of users to skip in the result; must be non-negative
  final int offset;

  /// [limit] The maximum number of users to be returned; must be positive and can't be greater than 50. For optimal performance, the number of returned users is chosen by TDLib and can be smaller than the specified limit, even if the end of the voter list has not been reached
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "option_id": optionId,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetPollVoters copyWith({
    int? chatId,
    int? messageId,
    int? optionId,
    int? offset,
    int? limit,
  }) => GetPollVoters(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    optionId: optionId ?? this.optionId,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getPollVoters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
