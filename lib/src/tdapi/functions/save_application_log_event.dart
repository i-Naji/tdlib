part of '../tdapi.dart';

class SaveApplicationLogEvent extends TdFunction {
  /// Saves application log event on the server. Can be called before authorization
  SaveApplicationLogEvent({this.type, this.chatId, this.data});

  /// [type] Event type
  String type;

  /// [chatId] Optional chat identifier, associated with the event
  int chatId;

  /// [data] The log event data
  JsonValue data;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SaveApplicationLogEvent.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type,
      "chat_id": this.chatId,
      "data": this.data == null ? null : this.data.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'saveApplicationLogEvent';

  @override
  String getConstructor() => CONSTRUCTOR;
}
