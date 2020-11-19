part of '../tdapi.dart';

class PublicChatType extends TdObject {
  /// Describes a type of public chats
  PublicChatType();

  /// a PublicChatType return type can be :
  /// * PublicChatTypeHasUsername
  /// * PublicChatTypeIsLocationBased
  factory PublicChatType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PublicChatTypeHasUsername.CONSTRUCTOR:
        return PublicChatTypeHasUsername.fromJson(json);
      case PublicChatTypeIsLocationBased.CONSTRUCTOR:
        return PublicChatTypeIsLocationBased.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'publicChatType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PublicChatTypeHasUsername extends PublicChatType {
  /// The chat is public, because it has username
  PublicChatTypeHasUsername();

  /// Parse from a json
  PublicChatTypeHasUsername.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'publicChatTypeHasUsername';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PublicChatTypeIsLocationBased extends PublicChatType {
  /// The chat is public, because it is a location-based supergroup
  PublicChatTypeIsLocationBased();

  /// Parse from a json
  PublicChatTypeIsLocationBased.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'publicChatTypeIsLocationBased';

  @override
  String getConstructor() => CONSTRUCTOR;
}
