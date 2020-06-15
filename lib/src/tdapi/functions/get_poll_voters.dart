part of '../tdapi.dart';

class GetPollVoters extends TdFunction {
  int chatId;
  int messageId;
  int optionId;
  int offset;
  int limit;
  dynamic extra;

  /// Returns users voted for the specified option in a non-anonymous polls. For the optimal performance the number of returned users is chosen by the library. 
  /// [chatId] Identifier of the chat to which the poll belongs. 
  /// [messageId] Identifier of the message containing the poll. 
  /// [optionId] 0-based identifier of the answer option. 
  /// [offset] Number of users to skip in the result; must be non-negative. 
  /// [limit] The maximum number of users to be returned; must be positive and can't be greater than 50. Fewer users may be returned than specified by the limit, even if the end of the voter list has not been reached
  GetPollVoters({this.chatId,
    this.messageId,
    this.optionId,
    this.offset,
    this.limit});

  /// Parse from a json
  GetPollVoters.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "option_id": this.optionId,
      "offset": this.offset,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPollVoters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}