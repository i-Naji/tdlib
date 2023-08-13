part of '../tdapi.dart';

class PremiumLimitType extends TdObject {
  /// Describes type of a limit, increased for Premium users
  const PremiumLimitType();

  /// a PremiumLimitType return type can be :
  /// * [PremiumLimitTypeSupergroupCount]
  /// * [PremiumLimitTypePinnedChatCount]
  /// * [PremiumLimitTypeCreatedPublicChatCount]
  /// * [PremiumLimitTypeSavedAnimationCount]
  /// * [PremiumLimitTypeFavoriteStickerCount]
  /// * [PremiumLimitTypeChatFolderCount]
  /// * [PremiumLimitTypeChatFolderChosenChatCount]
  /// * [PremiumLimitTypePinnedArchivedChatCount]
  /// * [PremiumLimitTypeCaptionLength]
  /// * [PremiumLimitTypeBioLength]
  /// * [PremiumLimitTypeChatFolderInviteLinkCount]
  /// * [PremiumLimitTypeShareableChatFolderCount]
  /// * [PremiumLimitTypeActiveStoryCount]
  factory PremiumLimitType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PremiumLimitTypeSupergroupCount.CONSTRUCTOR:
        return PremiumLimitTypeSupergroupCount.fromJson(json);
      case PremiumLimitTypePinnedChatCount.CONSTRUCTOR:
        return PremiumLimitTypePinnedChatCount.fromJson(json);
      case PremiumLimitTypeCreatedPublicChatCount.CONSTRUCTOR:
        return PremiumLimitTypeCreatedPublicChatCount.fromJson(json);
      case PremiumLimitTypeSavedAnimationCount.CONSTRUCTOR:
        return PremiumLimitTypeSavedAnimationCount.fromJson(json);
      case PremiumLimitTypeFavoriteStickerCount.CONSTRUCTOR:
        return PremiumLimitTypeFavoriteStickerCount.fromJson(json);
      case PremiumLimitTypeChatFolderCount.CONSTRUCTOR:
        return PremiumLimitTypeChatFolderCount.fromJson(json);
      case PremiumLimitTypeChatFolderChosenChatCount.CONSTRUCTOR:
        return PremiumLimitTypeChatFolderChosenChatCount.fromJson(json);
      case PremiumLimitTypePinnedArchivedChatCount.CONSTRUCTOR:
        return PremiumLimitTypePinnedArchivedChatCount.fromJson(json);
      case PremiumLimitTypeCaptionLength.CONSTRUCTOR:
        return PremiumLimitTypeCaptionLength.fromJson(json);
      case PremiumLimitTypeBioLength.CONSTRUCTOR:
        return PremiumLimitTypeBioLength.fromJson(json);
      case PremiumLimitTypeChatFolderInviteLinkCount.CONSTRUCTOR:
        return PremiumLimitTypeChatFolderInviteLinkCount.fromJson(json);
      case PremiumLimitTypeShareableChatFolderCount.CONSTRUCTOR:
        return PremiumLimitTypeShareableChatFolderCount.fromJson(json);
      case PremiumLimitTypeActiveStoryCount.CONSTRUCTOR:
        return PremiumLimitTypeActiveStoryCount.fromJson(json);
      default:
        return const PremiumLimitType();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  PremiumLimitType copyWith() => const PremiumLimitType();

  static const CONSTRUCTOR = 'premiumLimitType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeSupergroupCount extends PremiumLimitType {
  /// The maximum number of joined supergroups and channels
  const PremiumLimitTypeSupergroupCount();

  /// Parse from a json
  factory PremiumLimitTypeSupergroupCount.fromJson(Map<String, dynamic> json) =>
      const PremiumLimitTypeSupergroupCount();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeSupergroupCount copyWith() =>
      const PremiumLimitTypeSupergroupCount();

  static const CONSTRUCTOR = 'premiumLimitTypeSupergroupCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypePinnedChatCount extends PremiumLimitType {
  /// The maximum number of pinned chats in the main chat list
  const PremiumLimitTypePinnedChatCount();

  /// Parse from a json
  factory PremiumLimitTypePinnedChatCount.fromJson(Map<String, dynamic> json) =>
      const PremiumLimitTypePinnedChatCount();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypePinnedChatCount copyWith() =>
      const PremiumLimitTypePinnedChatCount();

  static const CONSTRUCTOR = 'premiumLimitTypePinnedChatCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeCreatedPublicChatCount extends PremiumLimitType {
  /// The maximum number of created public chats
  const PremiumLimitTypeCreatedPublicChatCount();

  /// Parse from a json
  factory PremiumLimitTypeCreatedPublicChatCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeCreatedPublicChatCount();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeCreatedPublicChatCount copyWith() =>
      const PremiumLimitTypeCreatedPublicChatCount();

  static const CONSTRUCTOR = 'premiumLimitTypeCreatedPublicChatCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeSavedAnimationCount extends PremiumLimitType {
  /// The maximum number of saved animations
  const PremiumLimitTypeSavedAnimationCount();

  /// Parse from a json
  factory PremiumLimitTypeSavedAnimationCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeSavedAnimationCount();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeSavedAnimationCount copyWith() =>
      const PremiumLimitTypeSavedAnimationCount();

  static const CONSTRUCTOR = 'premiumLimitTypeSavedAnimationCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeFavoriteStickerCount extends PremiumLimitType {
  /// The maximum number of favorite stickers
  const PremiumLimitTypeFavoriteStickerCount();

  /// Parse from a json
  factory PremiumLimitTypeFavoriteStickerCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeFavoriteStickerCount();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeFavoriteStickerCount copyWith() =>
      const PremiumLimitTypeFavoriteStickerCount();

  static const CONSTRUCTOR = 'premiumLimitTypeFavoriteStickerCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeChatFolderCount extends PremiumLimitType {
  /// The maximum number of chat folders
  const PremiumLimitTypeChatFolderCount();

  /// Parse from a json
  factory PremiumLimitTypeChatFolderCount.fromJson(Map<String, dynamic> json) =>
      const PremiumLimitTypeChatFolderCount();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeChatFolderCount copyWith() =>
      const PremiumLimitTypeChatFolderCount();

  static const CONSTRUCTOR = 'premiumLimitTypeChatFolderCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeChatFolderChosenChatCount extends PremiumLimitType {
  /// The maximum number of pinned and always included, or always excluded chats in a chat folder
  const PremiumLimitTypeChatFolderChosenChatCount();

  /// Parse from a json
  factory PremiumLimitTypeChatFolderChosenChatCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeChatFolderChosenChatCount();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeChatFolderChosenChatCount copyWith() =>
      const PremiumLimitTypeChatFolderChosenChatCount();

  static const CONSTRUCTOR = 'premiumLimitTypeChatFolderChosenChatCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypePinnedArchivedChatCount extends PremiumLimitType {
  /// The maximum number of pinned chats in the archive chat list
  const PremiumLimitTypePinnedArchivedChatCount();

  /// Parse from a json
  factory PremiumLimitTypePinnedArchivedChatCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypePinnedArchivedChatCount();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypePinnedArchivedChatCount copyWith() =>
      const PremiumLimitTypePinnedArchivedChatCount();

  static const CONSTRUCTOR = 'premiumLimitTypePinnedArchivedChatCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeCaptionLength extends PremiumLimitType {
  /// The maximum length of sent media caption
  const PremiumLimitTypeCaptionLength();

  /// Parse from a json
  factory PremiumLimitTypeCaptionLength.fromJson(Map<String, dynamic> json) =>
      const PremiumLimitTypeCaptionLength();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeCaptionLength copyWith() =>
      const PremiumLimitTypeCaptionLength();

  static const CONSTRUCTOR = 'premiumLimitTypeCaptionLength';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeBioLength extends PremiumLimitType {
  /// The maximum length of the user's bio
  const PremiumLimitTypeBioLength();

  /// Parse from a json
  factory PremiumLimitTypeBioLength.fromJson(Map<String, dynamic> json) =>
      const PremiumLimitTypeBioLength();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeBioLength copyWith() => const PremiumLimitTypeBioLength();

  static const CONSTRUCTOR = 'premiumLimitTypeBioLength';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeChatFolderInviteLinkCount extends PremiumLimitType {
  /// The maximum number of invite links for a chat folder
  const PremiumLimitTypeChatFolderInviteLinkCount();

  /// Parse from a json
  factory PremiumLimitTypeChatFolderInviteLinkCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeChatFolderInviteLinkCount();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeChatFolderInviteLinkCount copyWith() =>
      const PremiumLimitTypeChatFolderInviteLinkCount();

  static const CONSTRUCTOR = 'premiumLimitTypeChatFolderInviteLinkCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeShareableChatFolderCount extends PremiumLimitType {
  /// The maximum number of added shareable chat folders
  const PremiumLimitTypeShareableChatFolderCount();

  /// Parse from a json
  factory PremiumLimitTypeShareableChatFolderCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeShareableChatFolderCount();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeShareableChatFolderCount copyWith() =>
      const PremiumLimitTypeShareableChatFolderCount();

  static const CONSTRUCTOR = 'premiumLimitTypeShareableChatFolderCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeActiveStoryCount extends PremiumLimitType {
  /// The maximum number of active stories
  const PremiumLimitTypeActiveStoryCount();

  /// Parse from a json
  factory PremiumLimitTypeActiveStoryCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeActiveStoryCount();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeActiveStoryCount copyWith() =>
      const PremiumLimitTypeActiveStoryCount();

  static const CONSTRUCTOR = 'premiumLimitTypeActiveStoryCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}
