part of '../tdapi.dart';

class ChatType implements TdObject {
  /// Describes the type of a chat
  ChatType();

  /// a ChatType return type can be :
  /// * ChatTypePrivate
  /// * ChatTypeBasicGroup
  /// * ChatTypeSupergroup
  /// * ChatTypeSecret
  factory ChatType.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case ChatTypePrivate.CONSTRUCTOR:
        return ChatTypePrivate.fromJson(json);
      case ChatTypeBasicGroup.CONSTRUCTOR:
        return ChatTypeBasicGroup.fromJson(json);
      case ChatTypeSupergroup.CONSTRUCTOR:
        return ChatTypeSupergroup.fromJson(json);
      case ChatTypeSecret.CONSTRUCTOR:
        return ChatTypeSecret.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "chatType";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatTypePrivate implements ChatType {
  int userId;

  /// An ordinary chat with a user.
  ///[userId] User identifier
  ChatTypePrivate({this.userId});

  /// Parse from a json
  ChatTypePrivate.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "user_id": this.userId};
  }

  static const String CONSTRUCTOR = "chatTypePrivate";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatTypeBasicGroup implements ChatType {
  int basicGroupId;

  /// A basic group (i.e., a chat with 0-200 other users).
  ///[basicGroupId] Basic group identifier
  ChatTypeBasicGroup({this.basicGroupId});

  /// Parse from a json
  ChatTypeBasicGroup.fromJson(Map<String, dynamic> json) {
    this.basicGroupId = json['basic_group_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "basic_group_id": this.basicGroupId};
  }

  static const String CONSTRUCTOR = "chatTypeBasicGroup";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatTypeSupergroup implements ChatType {
  int supergroupId;
  bool isChannel;

  /// A supergroup (i.e. a chat with up to GetOption("supergroup_max_size") other users), or channel (with unlimited members).
  ///[supergroupId] Supergroup or channel identifier .
  /// [isChannel] True, if the supergroup is a channel
  ChatTypeSupergroup({this.supergroupId, this.isChannel});

  /// Parse from a json
  ChatTypeSupergroup.fromJson(Map<String, dynamic> json) {
    this.supergroupId = json['supergroup_id'];
    this.isChannel = json['is_channel'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "is_channel": this.isChannel
    };
  }

  static const String CONSTRUCTOR = "chatTypeSupergroup";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatTypeSecret implements ChatType {
  int secretChatId;
  int userId;

  /// A secret chat with a user.
  ///[secretChatId] Secret chat identifier .
  /// [userId] User identifier of the secret chat peer
  ChatTypeSecret({this.secretChatId, this.userId});

  /// Parse from a json
  ChatTypeSecret.fromJson(Map<String, dynamic> json) {
    this.secretChatId = json['secret_chat_id'];
    this.userId = json['user_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat_id": this.secretChatId,
      "user_id": this.userId
    };
  }

  static const String CONSTRUCTOR = "chatTypeSecret";

  @override
  String getConstructor() => CONSTRUCTOR;
}
