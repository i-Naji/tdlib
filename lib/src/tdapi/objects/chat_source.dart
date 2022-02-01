part of '../tdapi.dart';

class ChatSource extends TdObject {

  /// Describes a reason why an external chat is shown in a chat list
  const ChatSource();
  
  /// a ChatSource return type can be :
  /// * [ChatSourceMtprotoProxy]
  /// * [ChatSourcePublicServiceAnnouncement]
  factory ChatSource.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatSourceMtprotoProxy.CONSTRUCTOR:
        return ChatSourceMtprotoProxy.fromJson(json);
      case ChatSourcePublicServiceAnnouncement.CONSTRUCTOR:
        return ChatSourcePublicServiceAnnouncement.fromJson(json);
      default:
        return const ChatSource();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ChatSource copyWith() => const ChatSource();

  static const CONSTRUCTOR = 'chatSource';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatSourceMtprotoProxy extends ChatSource {

  /// The chat is sponsored by the user's MTProxy server
  const ChatSourceMtprotoProxy();
  
  /// Parse from a json
  factory ChatSourceMtprotoProxy.fromJson(Map<String, dynamic> json) => const ChatSourceMtprotoProxy();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatSourceMtprotoProxy copyWith() => const ChatSourceMtprotoProxy();

  static const CONSTRUCTOR = 'chatSourceMtprotoProxy';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatSourcePublicServiceAnnouncement extends ChatSource {

  /// The chat contains a public service announcement
  const ChatSourcePublicServiceAnnouncement({
    required this.type,
    required this.text,
  });
  
  /// [type] The type of the announcement 
  final String type;

  /// [text] The text of the announcement
  final String text;
  
  /// Parse from a json
  factory ChatSourcePublicServiceAnnouncement.fromJson(Map<String, dynamic> json) => ChatSourcePublicServiceAnnouncement(
    type: json['type'],
    text: json['text'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type,
      "text": text,
    };
  }
  
  @override
  ChatSourcePublicServiceAnnouncement copyWith({
    String? type,
    String? text,
  }) => ChatSourcePublicServiceAnnouncement(
    type: type ?? this.type,
    text: text ?? this.text,
  );

  static const CONSTRUCTOR = 'chatSourcePublicServiceAnnouncement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
