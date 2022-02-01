part of '../tdapi.dart';

class UserPrivacySetting extends TdObject {

  /// Describes available user privacy settings
  const UserPrivacySetting();
  
  /// a UserPrivacySetting return type can be :
  /// * [UserPrivacySettingShowStatus]
  /// * [UserPrivacySettingShowProfilePhoto]
  /// * [UserPrivacySettingShowLinkInForwardedMessages]
  /// * [UserPrivacySettingShowPhoneNumber]
  /// * [UserPrivacySettingAllowChatInvites]
  /// * [UserPrivacySettingAllowCalls]
  /// * [UserPrivacySettingAllowPeerToPeerCalls]
  /// * [UserPrivacySettingAllowFindingByPhoneNumber]
  factory UserPrivacySetting.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case UserPrivacySettingShowStatus.CONSTRUCTOR:
        return UserPrivacySettingShowStatus.fromJson(json);
      case UserPrivacySettingShowProfilePhoto.CONSTRUCTOR:
        return UserPrivacySettingShowProfilePhoto.fromJson(json);
      case UserPrivacySettingShowLinkInForwardedMessages.CONSTRUCTOR:
        return UserPrivacySettingShowLinkInForwardedMessages.fromJson(json);
      case UserPrivacySettingShowPhoneNumber.CONSTRUCTOR:
        return UserPrivacySettingShowPhoneNumber.fromJson(json);
      case UserPrivacySettingAllowChatInvites.CONSTRUCTOR:
        return UserPrivacySettingAllowChatInvites.fromJson(json);
      case UserPrivacySettingAllowCalls.CONSTRUCTOR:
        return UserPrivacySettingAllowCalls.fromJson(json);
      case UserPrivacySettingAllowPeerToPeerCalls.CONSTRUCTOR:
        return UserPrivacySettingAllowPeerToPeerCalls.fromJson(json);
      case UserPrivacySettingAllowFindingByPhoneNumber.CONSTRUCTOR:
        return UserPrivacySettingAllowFindingByPhoneNumber.fromJson(json);
      default:
        return const UserPrivacySetting();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  UserPrivacySetting copyWith() => const UserPrivacySetting();

  static const CONSTRUCTOR = 'userPrivacySetting';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingShowStatus extends UserPrivacySetting {

  /// A privacy setting for managing whether the user's online status is visible
  const UserPrivacySettingShowStatus();
  
  /// Parse from a json
  factory UserPrivacySettingShowStatus.fromJson(Map<String, dynamic> json) => const UserPrivacySettingShowStatus();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserPrivacySettingShowStatus copyWith() => const UserPrivacySettingShowStatus();

  static const CONSTRUCTOR = 'userPrivacySettingShowStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingShowProfilePhoto extends UserPrivacySetting {

  /// A privacy setting for managing whether the user's profile photo is visible
  const UserPrivacySettingShowProfilePhoto();
  
  /// Parse from a json
  factory UserPrivacySettingShowProfilePhoto.fromJson(Map<String, dynamic> json) => const UserPrivacySettingShowProfilePhoto();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserPrivacySettingShowProfilePhoto copyWith() => const UserPrivacySettingShowProfilePhoto();

  static const CONSTRUCTOR = 'userPrivacySettingShowProfilePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingShowLinkInForwardedMessages extends UserPrivacySetting {

  /// A privacy setting for managing whether a link to the user's account is included in forwarded messages
  const UserPrivacySettingShowLinkInForwardedMessages();
  
  /// Parse from a json
  factory UserPrivacySettingShowLinkInForwardedMessages.fromJson(Map<String, dynamic> json) => const UserPrivacySettingShowLinkInForwardedMessages();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserPrivacySettingShowLinkInForwardedMessages copyWith() => const UserPrivacySettingShowLinkInForwardedMessages();

  static const CONSTRUCTOR = 'userPrivacySettingShowLinkInForwardedMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingShowPhoneNumber extends UserPrivacySetting {

  /// A privacy setting for managing whether the user's phone number is visible
  const UserPrivacySettingShowPhoneNumber();
  
  /// Parse from a json
  factory UserPrivacySettingShowPhoneNumber.fromJson(Map<String, dynamic> json) => const UserPrivacySettingShowPhoneNumber();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserPrivacySettingShowPhoneNumber copyWith() => const UserPrivacySettingShowPhoneNumber();

  static const CONSTRUCTOR = 'userPrivacySettingShowPhoneNumber';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingAllowChatInvites extends UserPrivacySetting {

  /// A privacy setting for managing whether the user can be invited to chats
  const UserPrivacySettingAllowChatInvites();
  
  /// Parse from a json
  factory UserPrivacySettingAllowChatInvites.fromJson(Map<String, dynamic> json) => const UserPrivacySettingAllowChatInvites();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserPrivacySettingAllowChatInvites copyWith() => const UserPrivacySettingAllowChatInvites();

  static const CONSTRUCTOR = 'userPrivacySettingAllowChatInvites';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingAllowCalls extends UserPrivacySetting {

  /// A privacy setting for managing whether the user can be called
  const UserPrivacySettingAllowCalls();
  
  /// Parse from a json
  factory UserPrivacySettingAllowCalls.fromJson(Map<String, dynamic> json) => const UserPrivacySettingAllowCalls();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserPrivacySettingAllowCalls copyWith() => const UserPrivacySettingAllowCalls();

  static const CONSTRUCTOR = 'userPrivacySettingAllowCalls';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingAllowPeerToPeerCalls extends UserPrivacySetting {

  /// A privacy setting for managing whether peer-to-peer connections can be used for calls
  const UserPrivacySettingAllowPeerToPeerCalls();
  
  /// Parse from a json
  factory UserPrivacySettingAllowPeerToPeerCalls.fromJson(Map<String, dynamic> json) => const UserPrivacySettingAllowPeerToPeerCalls();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserPrivacySettingAllowPeerToPeerCalls copyWith() => const UserPrivacySettingAllowPeerToPeerCalls();

  static const CONSTRUCTOR = 'userPrivacySettingAllowPeerToPeerCalls';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingAllowFindingByPhoneNumber extends UserPrivacySetting {

  /// A privacy setting for managing whether the user can be found by their phone number. Checked only if the phone number is not known to the other user. Can be set only to "Allow contacts" or "Allow all"
  const UserPrivacySettingAllowFindingByPhoneNumber();
  
  /// Parse from a json
  factory UserPrivacySettingAllowFindingByPhoneNumber.fromJson(Map<String, dynamic> json) => const UserPrivacySettingAllowFindingByPhoneNumber();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserPrivacySettingAllowFindingByPhoneNumber copyWith() => const UserPrivacySettingAllowFindingByPhoneNumber();

  static const CONSTRUCTOR = 'userPrivacySettingAllowFindingByPhoneNumber';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
