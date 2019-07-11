part of '../tdapi.dart';

class CheckChatUsernameResult implements TLObject {
  /// Represents result of checking whether a username can be set for a chat
  CheckChatUsernameResult();

  /// a CheckChatUsernameResult return type can be :
  /// * CheckChatUsernameResultOk
  /// * CheckChatUsernameResultUsernameInvalid
  /// * CheckChatUsernameResultUsernameOccupied
  /// * CheckChatUsernameResultPublicChatsTooMuch
  /// * CheckChatUsernameResultPublicGroupsUnavailable
  factory CheckChatUsernameResult.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
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

  static const String CONSTRUCTOR = "checkChatUsernameResult";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultOk implements CheckChatUsernameResult {
  dynamic extra;

  /// The username can be set.
  ///
  CheckChatUsernameResultOk();

  /// Parse from a json
  CheckChatUsernameResultOk.fromJson(Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "checkChatUsernameResultOk";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultUsernameInvalid
    implements CheckChatUsernameResult {
  dynamic extra;

  /// The username is invalid.
  ///
  CheckChatUsernameResultUsernameInvalid();

  /// Parse from a json
  CheckChatUsernameResultUsernameInvalid.fromJson(Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "checkChatUsernameResultUsernameInvalid";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultUsernameOccupied
    implements CheckChatUsernameResult {
  dynamic extra;

  /// The username is occupied.
  ///
  CheckChatUsernameResultUsernameOccupied();

  /// Parse from a json
  CheckChatUsernameResultUsernameOccupied.fromJson(Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "checkChatUsernameResultUsernameOccupied";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultPublicChatsTooMuch
    implements CheckChatUsernameResult {
  dynamic extra;

  /// The user has too much public chats, one of them should be made private first.
  ///
  CheckChatUsernameResultPublicChatsTooMuch();

  /// Parse from a json
  CheckChatUsernameResultPublicChatsTooMuch.fromJson(
      Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "checkChatUsernameResultPublicChatsTooMuch";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultPublicGroupsUnavailable
    implements CheckChatUsernameResult {
  dynamic extra;

  /// The user can't be a member of a public supergroup.
  ///
  CheckChatUsernameResultPublicGroupsUnavailable();

  /// Parse from a json
  CheckChatUsernameResultPublicGroupsUnavailable.fromJson(
      Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR =
      "checkChatUsernameResultPublicGroupsUnavailable";

  @override
  String getConstructor() => CONSTRUCTOR;
}
