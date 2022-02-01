part of '../tdapi.dart';

class PublicChatType extends TdObject {

  /// Describes a type of public chats
  const PublicChatType();
  
  /// a PublicChatType return type can be :
  /// * [PublicChatTypeHasUsername]
  /// * [PublicChatTypeIsLocationBased]
  factory PublicChatType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PublicChatTypeHasUsername.CONSTRUCTOR:
        return PublicChatTypeHasUsername.fromJson(json);
      case PublicChatTypeIsLocationBased.CONSTRUCTOR:
        return PublicChatTypeIsLocationBased.fromJson(json);
      default:
        return const PublicChatType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PublicChatType copyWith() => const PublicChatType();

  static const CONSTRUCTOR = 'publicChatType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PublicChatTypeHasUsername extends PublicChatType {

  /// The chat is public, because it has username
  const PublicChatTypeHasUsername();
  
  /// Parse from a json
  factory PublicChatTypeHasUsername.fromJson(Map<String, dynamic> json) => const PublicChatTypeHasUsername();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PublicChatTypeHasUsername copyWith() => const PublicChatTypeHasUsername();

  static const CONSTRUCTOR = 'publicChatTypeHasUsername';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PublicChatTypeIsLocationBased extends PublicChatType {

  /// The chat is public, because it is a location-based supergroup
  const PublicChatTypeIsLocationBased();
  
  /// Parse from a json
  factory PublicChatTypeIsLocationBased.fromJson(Map<String, dynamic> json) => const PublicChatTypeIsLocationBased();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PublicChatTypeIsLocationBased copyWith() => const PublicChatTypeIsLocationBased();

  static const CONSTRUCTOR = 'publicChatTypeIsLocationBased';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
