part of '../tdapi.dart';

class UserPrivacySetting implements TLObject {
  /// Describes available user privacy settings
  UserPrivacySetting();

  /// a UserPrivacySetting return type can be :
  /// * UserPrivacySettingAllowChatInvites
  /// * UserPrivacySettingAllowPeerToPeerCalls
  /// * UserPrivacySettingAllowCalls
  /// * UserPrivacySettingShowStatus
  factory UserPrivacySetting.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case UserPrivacySettingAllowChatInvites.CONSTRUCTOR:
        return UserPrivacySettingAllowChatInvites.fromJson(json);
      case UserPrivacySettingAllowPeerToPeerCalls.CONSTRUCTOR:
        return UserPrivacySettingAllowPeerToPeerCalls.fromJson(json);
      case UserPrivacySettingAllowCalls.CONSTRUCTOR:
        return UserPrivacySettingAllowCalls.fromJson(json);
      case UserPrivacySettingShowStatus.CONSTRUCTOR:
        return UserPrivacySettingShowStatus.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'userPrivacySetting';

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
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'userPrivacySettingShowStatus';

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
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'userPrivacySettingAllowChatInvites';

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
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'userPrivacySettingAllowCalls';

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
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'userPrivacySettingAllowPeerToPeerCalls';

  @override
  String getConstructor() => CONSTRUCTOR;
}
