part of '../tdapi.dart';

class ViewMessages extends TLFunction {
  int chatId;
  List<int> messageIds;
  bool forceRead;
  dynamic extra;

  /// Informs TDLib that messages are being viewed by the user. Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels).
  ///[chatId] Chat identifier .
  /// [messageIds] The identifiers of the messages being viewed.
  /// [forceRead] True, if messages in closed chats should be marked as read
  ViewMessages({this.chatId, this.messageIds, this.forceRead});

  /// Parse from a json
  ViewMessages.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'message_ids': this.messageIds,
      'force_read': this.forceRead,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'viewMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
