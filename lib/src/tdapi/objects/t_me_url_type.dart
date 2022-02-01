part of '../tdapi.dart';

class TMeUrlType extends TdObject {

  /// Describes the type of a URL linking to an internal Telegram entity
  const TMeUrlType();
  
  /// a TMeUrlType return type can be :
  /// * [TMeUrlTypeUser]
  /// * [TMeUrlTypeSupergroup]
  /// * [TMeUrlTypeChatInvite]
  /// * [TMeUrlTypeStickerSet]
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
        return const TMeUrlType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  TMeUrlType copyWith() => const TMeUrlType();

  static const CONSTRUCTOR = 'tMeUrlType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TMeUrlTypeUser extends TMeUrlType {

  /// A URL linking to a user
  const TMeUrlTypeUser({
    required this.userId,
  });
  
  /// [userId] Identifier of the user
  final int userId;
  
  /// Parse from a json
  factory TMeUrlTypeUser.fromJson(Map<String, dynamic> json) => TMeUrlTypeUser(
    userId: json['user_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
    };
  }
  
  @override
  TMeUrlTypeUser copyWith({
    int? userId,
  }) => TMeUrlTypeUser(
    userId: userId ?? this.userId,
  );

  static const CONSTRUCTOR = 'tMeUrlTypeUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TMeUrlTypeSupergroup extends TMeUrlType {

  /// A URL linking to a public supergroup or channel
  const TMeUrlTypeSupergroup({
    required this.supergroupId,
  });
  
  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;
  
  /// Parse from a json
  factory TMeUrlTypeSupergroup.fromJson(Map<String, dynamic> json) => TMeUrlTypeSupergroup(
    supergroupId: json['supergroup_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
    };
  }
  
  @override
  TMeUrlTypeSupergroup copyWith({
    int? supergroupId,
  }) => TMeUrlTypeSupergroup(
    supergroupId: supergroupId ?? this.supergroupId,
  );

  static const CONSTRUCTOR = 'tMeUrlTypeSupergroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TMeUrlTypeChatInvite extends TMeUrlType {

  /// A chat invite link
  const TMeUrlTypeChatInvite({
    required this.info,
  });
  
  /// [info] Chat invite link info
  final ChatInviteLinkInfo info;
  
  /// Parse from a json
  factory TMeUrlTypeChatInvite.fromJson(Map<String, dynamic> json) => TMeUrlTypeChatInvite(
    info: ChatInviteLinkInfo.fromJson(json['info']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "info": info.toJson(),
    };
  }
  
  @override
  TMeUrlTypeChatInvite copyWith({
    ChatInviteLinkInfo? info,
  }) => TMeUrlTypeChatInvite(
    info: info ?? this.info,
  );

  static const CONSTRUCTOR = 'tMeUrlTypeChatInvite';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TMeUrlTypeStickerSet extends TMeUrlType {

  /// A URL linking to a sticker set
  const TMeUrlTypeStickerSet({
    required this.stickerSetId,
  });
  
  /// [stickerSetId] Identifier of the sticker set
  final int stickerSetId;
  
  /// Parse from a json
  factory TMeUrlTypeStickerSet.fromJson(Map<String, dynamic> json) => TMeUrlTypeStickerSet(
    stickerSetId: int.parse(json['sticker_set_id']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_set_id": stickerSetId,
    };
  }
  
  @override
  TMeUrlTypeStickerSet copyWith({
    int? stickerSetId,
  }) => TMeUrlTypeStickerSet(
    stickerSetId: stickerSetId ?? this.stickerSetId,
  );

  static const CONSTRUCTOR = 'tMeUrlTypeStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
