part of '../tdapi.dart';

class UserPrivacySetting implements TdObject {
  /// Describes available user privacy settings
  UserPrivacySetting();

  /// a UserPrivacySetting return type can be :
  /// * UserPrivacySettingShowStatus
  /// * UserPrivacySettingShowProfilePhoto
  /// * UserPrivacySettingShowLinkInForwardedMessages
  /// * UserPrivacySettingAllowChatInvites
  /// * UserPrivacySettingAllowCalls
  /// * UserPrivacySettingAllowPeerToPeerCalls
  factory UserPrivacySetting.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case UserPrivacySettingShowStatus.CONSTRUCTOR:
        return UserPrivacySettingShowStatus.fromJson(json);
      case UserPrivacySettingShowProfilePhoto.CONSTRUCTOR:
        return UserPrivacySettingShowProfilePhoto.fromJson(json);
      case UserPrivacySettingShowLinkInForwardedMessages.CONSTRUCTOR:
        return UserPrivacySettingShowLinkInForwardedMessages.fromJson(json);
      case UserPrivacySettingAllowChatInvites.CONSTRUCTOR:
        return UserPrivacySettingAllowChatInvites.fromJson(json);
      case UserPrivacySettingAllowCalls.CONSTRUCTOR:
        return UserPrivacySettingAllowCalls.fromJson(json);
      case UserPrivacySettingAllowPeerToPeerCalls.CONSTRUCTOR:
        return UserPrivacySettingAllowPeerToPeerCalls.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "userPrivacySetting";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingShowStatus implements UserPrivacySetting {
  /// A privacy setting for managing whether the user's online status is visible.
  ///
  UserPrivacySettingShowStatus();

  /// Parse from a json
  UserPrivacySettingShowStatus.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "userPrivacySettingShowStatus";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingShowProfilePhoto implements UserPrivacySetting {
  /// A privacy setting for managing whether the user's profile photo is visible.
  ///
  UserPrivacySettingShowProfilePhoto();

  /// Parse from a json
  UserPrivacySettingShowProfilePhoto.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "userPrivacySettingShowProfilePhoto";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingShowLinkInForwardedMessages
    implements UserPrivacySetting {
  /// A privacy setting for managing whether a link to the user's account is included in forwarded messages.
  ///
  UserPrivacySettingShowLinkInForwardedMessages();

  /// Parse from a json
  UserPrivacySettingShowLinkInForwardedMessages.fromJson(
      Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR =
      "userPrivacySettingShowLinkInForwardedMessages";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingAllowChatInvites implements UserPrivacySetting {
  /// A privacy setting for managing whether the user can be invited to chats.
  ///
  UserPrivacySettingAllowChatInvites();

  /// Parse from a json
  UserPrivacySettingAllowChatInvites.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "userPrivacySettingAllowChatInvites";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingAllowCalls implements UserPrivacySetting {
  /// A privacy setting for managing whether the user can be called.
  ///
  UserPrivacySettingAllowCalls();

  /// Parse from a json
  UserPrivacySettingAllowCalls.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "userPrivacySettingAllowCalls";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingAllowPeerToPeerCalls implements UserPrivacySetting {
  /// A privacy setting for managing whether peer-to-peer connections can be used for calls.
  ///
  UserPrivacySettingAllowPeerToPeerCalls();

  /// Parse from a json
  UserPrivacySettingAllowPeerToPeerCalls.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "userPrivacySettingAllowPeerToPeerCalls";

  @override
  String getConstructor() => CONSTRUCTOR;
}
