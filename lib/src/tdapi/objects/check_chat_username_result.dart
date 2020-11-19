part of '../tdapi.dart';

class CheckChatUsernameResult extends TdObject {
  /// Represents result of checking whether a username can be set for a chat
  CheckChatUsernameResult();

  /// a CheckChatUsernameResult return type can be :
  /// * CheckChatUsernameResultOk
  /// * CheckChatUsernameResultUsernameInvalid
  /// * CheckChatUsernameResultUsernameOccupied
  /// * CheckChatUsernameResultPublicChatsTooMuch
  /// * CheckChatUsernameResultPublicGroupsUnavailable
  factory CheckChatUsernameResult.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case CheckChatUsernameResultOk.CONSTRUCTOR:
        return CheckChatUsernameResultOk.fromJson(json);
      case CheckChatUsernameResultUsernameInvalid.CONSTRUCTOR:
        return CheckChatUsernameResultUsernameInvalid.fromJson(json);
      case CheckChatUsernameResultUsernameOccupied.CONSTRUCTOR:
        return CheckChatUsernameResultUsernameOccupied.fromJson(json);
      case CheckChatUsernameResultPublicChatsTooMuch.CONSTRUCTOR:
        return CheckChatUsernameResultPublicChatsTooMuch.fromJson(json);
      case CheckChatUsernameResultPublicGroupsUnavailable.CONSTRUCTOR:
        return CheckChatUsernameResultPublicGroupsUnavailable.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'checkChatUsernameResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultOk extends CheckChatUsernameResult {
  /// The username can be set
  CheckChatUsernameResultOk();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CheckChatUsernameResultOk.fromJson(Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'checkChatUsernameResultOk';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultUsernameInvalid extends CheckChatUsernameResult {
  /// The username is invalid
  CheckChatUsernameResultUsernameInvalid();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CheckChatUsernameResultUsernameInvalid.fromJson(Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'checkChatUsernameResultUsernameInvalid';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultUsernameOccupied extends CheckChatUsernameResult {
  /// The username is occupied
  CheckChatUsernameResultUsernameOccupied();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CheckChatUsernameResultUsernameOccupied.fromJson(Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'checkChatUsernameResultUsernameOccupied';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultPublicChatsTooMuch
    extends CheckChatUsernameResult {
  /// The user has too much chats with username, one of them should be made private first
  CheckChatUsernameResultPublicChatsTooMuch();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CheckChatUsernameResultPublicChatsTooMuch.fromJson(
      Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'checkChatUsernameResultPublicChatsTooMuch';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultPublicGroupsUnavailable
    extends CheckChatUsernameResult {
  /// The user can't be a member of a public supergroup
  CheckChatUsernameResultPublicGroupsUnavailable();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CheckChatUsernameResultPublicGroupsUnavailable.fromJson(
      Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'checkChatUsernameResultPublicGroupsUnavailable';

  @override
  String getConstructor() => CONSTRUCTOR;
}
