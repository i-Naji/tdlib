part of '../tdapi.dart';

class MessageSendingState implements TdObject {
  /// Contains information about the sending state of the message
  MessageSendingState();

  /// a MessageSendingState return type can be :
  /// * MessageSendingStatePending
  /// * MessageSendingStateFailed
  factory MessageSendingState.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case MessageSendingStatePending.CONSTRUCTOR:
        return MessageSendingStatePending.fromJson(json);
      case MessageSendingStateFailed.CONSTRUCTOR:
        return MessageSendingStateFailed.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "messageSendingState";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSendingStatePending implements MessageSendingState {
  /// The message is being sent now, but has not yet been delivered to the server.
  ///
  MessageSendingStatePending();

  /// Parse from a json
  MessageSendingStatePending.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "messageSendingStatePending";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSendingStateFailed implements MessageSendingState {
  int errorCode;
  String errorMessage;
  bool canRetry;
  double retryAfter;

  /// The message failed to be sent.
  ///[errorCode] An error code; 0 if unknown .
  /// [errorMessage] Error message.
  /// [canRetry] True, if the message can be re-sent .
  /// [retryAfter] Time left before the message can be re-sent, in seconds. No update is sent when this field changes
  MessageSendingStateFailed(
      {this.errorCode, this.errorMessage, this.canRetry, this.retryAfter});

  /// Parse from a json
  MessageSendingStateFailed.fromJson(Map<String, dynamic> json) {
    this.errorCode = json['error_code'];
    this.errorMessage = json['error_message'];
    this.canRetry = json['can_retry'];
    this.retryAfter = json['retry_after'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "error_code": this.errorCode,
      "error_message": this.errorMessage,
      "can_retry": this.canRetry,
      "retry_after": this.retryAfter
    };
  }

  static const String CONSTRUCTOR = "messageSendingStateFailed";

  @override
  String getConstructor() => CONSTRUCTOR;
}
