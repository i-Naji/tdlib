part of '../tdapi.dart';

class ChatType extends TdObject {
  /// Describes the type of a chat
  ChatType();

  /// a ChatType return type can be :
  /// * ChatTypePrivate
  /// * ChatTypeBasicGroup
  /// * ChatTypeSupergroup
  /// * ChatTypeSecret
  factory ChatType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
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

  static const CONSTRUCTOR = 'chatType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatTypePrivate extends ChatType {
  /// An ordinary chat with a user
  ChatTypePrivate({this.userId});

  /// [userId] User identifier
  int userId;

  /// Parse from a json
  ChatTypePrivate.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
    };
  }

  static const CONSTRUCTOR = 'chatTypePrivate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatTypeBasicGroup extends ChatType {
  /// A basic group (i.e., a chat with 0-200 other users)
  ChatTypeBasicGroup({this.basicGroupId});

  /// [basicGroupId] Basic group identifier
  int basicGroupId;

  /// Parse from a json
  ChatTypeBasicGroup.fromJson(Map<String, dynamic> json) {
    this.basicGroupId = json['basic_group_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": this.basicGroupId,
    };
  }

  static const CONSTRUCTOR = 'chatTypeBasicGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatTypeSupergroup extends ChatType {
  /// A supergroup (i.e. a chat with up to GetOption("supergroup_max_size") other users), or channel (with unlimited members)
  ChatTypeSupergroup({this.supergroupId, this.isChannel});

  /// [supergroupId] Supergroup or channel identifier
  int supergroupId;

  /// [isChannel] True, if the supergroup is a channel
  bool isChannel;

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
      "is_channel": this.isChannel,
    };
  }

  static const CONSTRUCTOR = 'chatTypeSupergroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatTypeSecret extends ChatType {
  /// A secret chat with a user
  ChatTypeSecret({this.secretChatId, this.userId});

  /// [secretChatId] Secret chat identifier
  int secretChatId;

  /// [userId] User identifier of the secret chat peer
  int userId;

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
      "user_id": this.userId,
    };
  }

  static const CONSTRUCTOR = 'chatTypeSecret';

  @override
  String getConstructor() => CONSTRUCTOR;
}
