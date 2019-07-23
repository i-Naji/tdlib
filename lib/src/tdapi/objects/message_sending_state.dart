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
  /// The message failed to be sent.
  ///
  MessageSendingStateFailed();

  /// Parse from a json
  MessageSendingStateFailed.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "messageSendingStateFailed";

  @override
  String getConstructor() => CONSTRUCTOR;
}
