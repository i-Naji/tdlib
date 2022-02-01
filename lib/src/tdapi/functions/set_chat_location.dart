part of '../tdapi.dart';

class SetChatLocation extends TdFunction {

  /// Changes the location of a chat. Available only for some location-based supergroups, use supergroupFullInfo.can_set_location to check whether the method is allowed to use
  const SetChatLocation({
    required this.chatId,
    required this.location,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [location] New location for the chat; must be valid and not null
  final ChatLocation location;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "location": location.toJson(),
      "@extra": extra,
    };
  }
  
  SetChatLocation copyWith({
    int? chatId,
    ChatLocation? location,
  }) => SetChatLocation(
    chatId: chatId ?? this.chatId,
    location: location ?? this.location,
  );

  static const CONSTRUCTOR = 'setChatLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
