part of '../tdapi.dart';

class SaveApplicationLogEvent extends TdFunction {

  /// Saves application log event on the server. Can be called before authorization
  const SaveApplicationLogEvent({
    required this.type,
    required this.chatId,
    required this.data,
  });
  
  /// [type] Event type 
  final String type;

  /// [chatId] Optional chat identifier, associated with the event 
  final int chatId;

  /// [data] The log event data
  final JsonValue data;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type,
      "chat_id": chatId,
      "data": data.toJson(),
      "@extra": extra,
    };
  }
  
  SaveApplicationLogEvent copyWith({
    String? type,
    int? chatId,
    JsonValue? data,
  }) => SaveApplicationLogEvent(
    type: type ?? this.type,
    chatId: chatId ?? this.chatId,
    data: data ?? this.data,
  );

  static const CONSTRUCTOR = 'saveApplicationLogEvent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
