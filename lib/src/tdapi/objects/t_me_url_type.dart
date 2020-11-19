part of '../tdapi.dart';

class TMeUrlType extends TdObject {
  /// Describes the type of a URL linking to an internal Telegram entity
  TMeUrlType();

  /// a TMeUrlType return type can be :
  /// * TMeUrlTypeUser
  /// * TMeUrlTypeSupergroup
  /// * TMeUrlTypeChatInvite
  /// * TMeUrlTypeStickerSet
  factory TMeUrlType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case TMeUrlTypeUser.CONSTRUCTOR:
        return TMeUrlTypeUser.fromJson(json);
      case TMeUrlTypeSupergroup.CONSTRUCTOR:
        return TMeUrlTypeSupergroup.fromJson(json);
      case TMeUrlTypeChatInvite.CONSTRUCTOR:
        return TMeUrlTypeChatInvite.fromJson(json);
      case TMeUrlTypeStickerSet.CONSTRUCTOR:
        return TMeUrlTypeStickerSet.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'tMeUrlType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TMeUrlTypeUser extends TMeUrlType {
  /// A URL linking to a user
  TMeUrlTypeUser({this.userId});

  /// [userId] Identifier of the user
  int userId;

  /// Parse from a json
  TMeUrlTypeUser.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
    };
  }

  static const CONSTRUCTOR = 'tMeUrlTypeUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TMeUrlTypeSupergroup extends TMeUrlType {
  /// A URL linking to a public supergroup or channel
  TMeUrlTypeSupergroup({this.supergroupId});

  /// [supergroupId] Identifier of the supergroup or channel
  int supergroupId;

  /// Parse from a json
  TMeUrlTypeSupergroup.fromJson(Map<String, dynamic> json) {
    this.supergroupId = json['supergroup_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
    };
  }

  static const CONSTRUCTOR = 'tMeUrlTypeSupergroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TMeUrlTypeChatInvite extends TMeUrlType {
  /// A chat invite link
  TMeUrlTypeChatInvite({this.info});

  /// [info] Chat invite link info
  ChatInviteLinkInfo info;

  /// Parse from a json
  TMeUrlTypeChatInvite.fromJson(Map<String, dynamic> json) {
    this.info =
        ChatInviteLinkInfo.fromJson(json['info'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "info": this.info == null ? null : this.info.toJson(),
    };
  }

  static const CONSTRUCTOR = 'tMeUrlTypeChatInvite';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TMeUrlTypeStickerSet extends TMeUrlType {
  /// A URL linking to a sticker set
  TMeUrlTypeStickerSet({this.stickerSetId});

  /// [stickerSetId] Identifier of the sticker set
  int stickerSetId;

  /// Parse from a json
  TMeUrlTypeStickerSet.fromJson(Map<String, dynamic> json) {
    this.stickerSetId = int.tryParse(json['sticker_set_id'] ?? "");
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker_set_id": this.stickerSetId,
    };
  }

  static const CONSTRUCTOR = 'tMeUrlTypeStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
