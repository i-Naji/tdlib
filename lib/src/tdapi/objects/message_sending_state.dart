part of '../tdapi.dart';

class MessageSendingState extends TdObject {

  /// Contains information about the sending state of the message
  const MessageSendingState();
  
  /// a MessageSendingState return type can be :
  /// * [MessageSendingStatePending]
  /// * [MessageSendingStateFailed]
  factory MessageSendingState.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageSendingStatePending.CONSTRUCTOR:
        return MessageSendingStatePending.fromJson(json);
      case MessageSendingStateFailed.CONSTRUCTOR:
        return MessageSendingStateFailed.fromJson(json);
      default:
        return const MessageSendingState();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  MessageSendingState copyWith() => const MessageSendingState();

  static const CONSTRUCTOR = 'messageSendingState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageSendingStatePending extends MessageSendingState {

  /// The message is being sent now, but has not yet been delivered to the server
  const MessageSendingStatePending();
  
  /// Parse from a json
  factory MessageSendingStatePending.fromJson(Map<String, dynamic> json) => const MessageSendingStatePending();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  MessageSendingStatePending copyWith() => const MessageSendingStatePending();

  static const CONSTRUCTOR = 'messageSendingStatePending';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageSendingStateFailed extends MessageSendingState {

  /// The message failed to be sent
  const MessageSendingStateFailed({
    required this.errorCode,
    required this.errorMessage,
    required this.canRetry,
    required this.needAnotherSender,
    required this.retryAfter,
  });
  
  /// [errorCode] An error code; 0 if unknown 
  final int errorCode;

  /// [errorMessage] Error message
  final String errorMessage;

  /// [canRetry] True, if the message can be re-sent
  final bool canRetry;

  /// [needAnotherSender] True, if the message can be re-sent only on behalf of a different sender
  final bool needAnotherSender;

  /// [retryAfter] Time left before the message can be re-sent, in seconds. No update is sent when this field changes
  final double retryAfter;
  
  /// Parse from a json
  factory MessageSendingStateFailed.fromJson(Map<String, dynamic> json) => MessageSendingStateFailed(
    errorCode: json['error_code'],
    errorMessage: json['error_message'],
    canRetry: json['can_retry'],
    needAnotherSender: json['need_another_sender'],
    retryAfter: json['retry_after'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "error_code": errorCode,
      "error_message": errorMessage,
      "can_retry": canRetry,
      "need_another_sender": needAnotherSender,
      "retry_after": retryAfter,
    };
  }
  
  @override
  MessageSendingStateFailed copyWith({
    int? errorCode,
    String? errorMessage,
    bool? canRetry,
    bool? needAnotherSender,
    double? retryAfter,
  }) => MessageSendingStateFailed(
    errorCode: errorCode ?? this.errorCode,
    errorMessage: errorMessage ?? this.errorMessage,
    canRetry: canRetry ?? this.canRetry,
    needAnotherSender: needAnotherSender ?? this.needAnotherSender,
    retryAfter: retryAfter ?? this.retryAfter,
  );

  static const CONSTRUCTOR = 'messageSendingStateFailed';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
