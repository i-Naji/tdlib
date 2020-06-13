part of '../tdapi.dart';

class TMeUrlType extends TdObject {
  

  /// Describes the type of a URL linking to an internal Telegram entity
  TMeUrlType();

  /// a TMeUrlType return type can be :
  /// * TMeUrlTypeUser
  /// * TMeUrlTypeSupergroup
  /// * TMeUrlTypeChatInvite
  /// * TMeUrlTypeStickerSet
  factory TMeUrlType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
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
    return {
      
    };
  }

  static const CONSTRUCTOR = 'tMeUrlType';
}

class TMeUrlTypeUser extends TMeUrlType {
  int userId;

  /// A URL linking to a user. 
  /// [userId] Identifier of the user
  TMeUrlTypeUser({this.userId});

  /// Parse from a json
  TMeUrlTypeUser.fromJson(Map<String, dynamic> json)  {
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
}

class TMeUrlTypeSupergroup extends TMeUrlType {
  int supergroupId;

  /// A URL linking to a public supergroup or channel. 
  /// [supergroupId] Identifier of the supergroup or channel
  TMeUrlTypeSupergroup({this.supergroupId});

  /// Parse from a json
  TMeUrlTypeSupergroup.fromJson(Map<String, dynamic> json)  {
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
}

class TMeUrlTypeChatInvite extends TMeUrlType {
  ChatInviteLinkInfo info;

  /// A chat invite link. 
  /// [info] Chat invite link info
  TMeUrlTypeChatInvite({this.info});

  /// Parse from a json
  TMeUrlTypeChatInvite.fromJson(Map<String, dynamic> json)  {
    this.info = ChatInviteLinkInfo.fromJson(json['info'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "info": this.info.toJson(),
    };
  }

  static const CONSTRUCTOR = 'tMeUrlTypeChatInvite';
}

class TMeUrlTypeStickerSet extends TMeUrlType {
  int stickerSetId;

  /// A URL linking to a sticker set. 
  /// [stickerSetId] Identifier of the sticker set
  TMeUrlTypeStickerSet({this.stickerSetId});

  /// Parse from a json
  TMeUrlTypeStickerSet.fromJson(Map<String, dynamic> json)  {
    this.stickerSetId = json['sticker_set_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker_set_id": this.stickerSetId,
    };
  }

  static const CONSTRUCTOR = 'tMeUrlTypeStickerSet';
}