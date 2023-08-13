part of '../tdapi.dart';

class SuggestedAction extends TdObject {
  /// Describes an action suggested to the current user
  const SuggestedAction();

  /// a SuggestedAction return type can be :
  /// * [SuggestedActionEnableArchiveAndMuteNewChats]
  /// * [SuggestedActionCheckPassword]
  /// * [SuggestedActionCheckPhoneNumber]
  /// * [SuggestedActionViewChecksHint]
  /// * [SuggestedActionConvertToBroadcastGroup]
  /// * [SuggestedActionSetPassword]
  /// * [SuggestedActionUpgradePremium]
  /// * [SuggestedActionRestorePremium]
  /// * [SuggestedActionSubscribeToAnnualPremium]
  factory SuggestedAction.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case SuggestedActionEnableArchiveAndMuteNewChats.CONSTRUCTOR:
        return SuggestedActionEnableArchiveAndMuteNewChats.fromJson(json);
      case SuggestedActionCheckPassword.CONSTRUCTOR:
        return SuggestedActionCheckPassword.fromJson(json);
      case SuggestedActionCheckPhoneNumber.CONSTRUCTOR:
        return SuggestedActionCheckPhoneNumber.fromJson(json);
      case SuggestedActionViewChecksHint.CONSTRUCTOR:
        return SuggestedActionViewChecksHint.fromJson(json);
      case SuggestedActionConvertToBroadcastGroup.CONSTRUCTOR:
        return SuggestedActionConvertToBroadcastGroup.fromJson(json);
      case SuggestedActionSetPassword.CONSTRUCTOR:
        return SuggestedActionSetPassword.fromJson(json);
      case SuggestedActionUpgradePremium.CONSTRUCTOR:
        return SuggestedActionUpgradePremium.fromJson(json);
      case SuggestedActionRestorePremium.CONSTRUCTOR:
        return SuggestedActionRestorePremium.fromJson(json);
      case SuggestedActionSubscribeToAnnualPremium.CONSTRUCTOR:
        return SuggestedActionSubscribeToAnnualPremium.fromJson(json);
      default:
        return const SuggestedAction();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  SuggestedAction copyWith() => const SuggestedAction();

  static const CONSTRUCTOR = 'suggestedAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionEnableArchiveAndMuteNewChats extends SuggestedAction {
  /// Suggests the user to enable archive_and_mute_new_chats_from_unknown_users setting in archiveChatListSettings
  const SuggestedActionEnableArchiveAndMuteNewChats();

  /// Parse from a json
  factory SuggestedActionEnableArchiveAndMuteNewChats.fromJson(
          Map<String, dynamic> json) =>
      const SuggestedActionEnableArchiveAndMuteNewChats();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionEnableArchiveAndMuteNewChats copyWith() =>
      const SuggestedActionEnableArchiveAndMuteNewChats();

  static const CONSTRUCTOR = 'suggestedActionEnableArchiveAndMuteNewChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionCheckPassword extends SuggestedAction {
  /// Suggests the user to check whether they still remember their 2-step verification password
  const SuggestedActionCheckPassword();

  /// Parse from a json
  factory SuggestedActionCheckPassword.fromJson(Map<String, dynamic> json) =>
      const SuggestedActionCheckPassword();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionCheckPassword copyWith() =>
      const SuggestedActionCheckPassword();

  static const CONSTRUCTOR = 'suggestedActionCheckPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionCheckPhoneNumber extends SuggestedAction {
  /// Suggests the user to check whether authorization phone number is correct and change the phone number if it is inaccessible
  const SuggestedActionCheckPhoneNumber();

  /// Parse from a json
  factory SuggestedActionCheckPhoneNumber.fromJson(Map<String, dynamic> json) =>
      const SuggestedActionCheckPhoneNumber();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionCheckPhoneNumber copyWith() =>
      const SuggestedActionCheckPhoneNumber();

  static const CONSTRUCTOR = 'suggestedActionCheckPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionViewChecksHint extends SuggestedAction {
  /// Suggests the user to view a hint about the meaning of one and two check marks on sent messages
  const SuggestedActionViewChecksHint();

  /// Parse from a json
  factory SuggestedActionViewChecksHint.fromJson(Map<String, dynamic> json) =>
      const SuggestedActionViewChecksHint();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionViewChecksHint copyWith() =>
      const SuggestedActionViewChecksHint();

  static const CONSTRUCTOR = 'suggestedActionViewChecksHint';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionConvertToBroadcastGroup extends SuggestedAction {
  /// Suggests the user to convert specified supergroup to a broadcast group
  const SuggestedActionConvertToBroadcastGroup({
    required this.supergroupId,
  });

  /// [supergroupId] Supergroup identifier
  final int supergroupId;

  /// Parse from a json
  factory SuggestedActionConvertToBroadcastGroup.fromJson(
          Map<String, dynamic> json) =>
      SuggestedActionConvertToBroadcastGroup(
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
  SuggestedActionConvertToBroadcastGroup copyWith({
    int? supergroupId,
  }) =>
      SuggestedActionConvertToBroadcastGroup(
        supergroupId: supergroupId ?? this.supergroupId,
      );

  static const CONSTRUCTOR = 'suggestedActionConvertToBroadcastGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionSetPassword extends SuggestedAction {
  /// Suggests the user to set a 2-step verification password to be able to log in again
  const SuggestedActionSetPassword({
    required this.authorizationDelay,
  });

  /// [authorizationDelay] The number of days to pass between consecutive authorizations if the user declines to set password; if 0, then the user is advised to set the password for security reasons
  final int authorizationDelay;

  /// Parse from a json
  factory SuggestedActionSetPassword.fromJson(Map<String, dynamic> json) =>
      SuggestedActionSetPassword(
        authorizationDelay: json['authorization_delay'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "authorization_delay": authorizationDelay,
    };
  }

  @override
  SuggestedActionSetPassword copyWith({
    int? authorizationDelay,
  }) =>
      SuggestedActionSetPassword(
        authorizationDelay: authorizationDelay ?? this.authorizationDelay,
      );

  static const CONSTRUCTOR = 'suggestedActionSetPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionUpgradePremium extends SuggestedAction {
  /// Suggests the user to upgrade the Premium subscription from monthly payments to annual payments
  const SuggestedActionUpgradePremium();

  /// Parse from a json
  factory SuggestedActionUpgradePremium.fromJson(Map<String, dynamic> json) =>
      const SuggestedActionUpgradePremium();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionUpgradePremium copyWith() =>
      const SuggestedActionUpgradePremium();

  static const CONSTRUCTOR = 'suggestedActionUpgradePremium';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionRestorePremium extends SuggestedAction {
  /// Suggests the user to restore a recently expired Premium subscription
  const SuggestedActionRestorePremium();

  /// Parse from a json
  factory SuggestedActionRestorePremium.fromJson(Map<String, dynamic> json) =>
      const SuggestedActionRestorePremium();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionRestorePremium copyWith() =>
      const SuggestedActionRestorePremium();

  static const CONSTRUCTOR = 'suggestedActionRestorePremium';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionSubscribeToAnnualPremium extends SuggestedAction {
  /// Suggests the user to subscribe to the Premium subscription with annual payments
  const SuggestedActionSubscribeToAnnualPremium();

  /// Parse from a json
  factory SuggestedActionSubscribeToAnnualPremium.fromJson(
          Map<String, dynamic> json) =>
      const SuggestedActionSubscribeToAnnualPremium();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionSubscribeToAnnualPremium copyWith() =>
      const SuggestedActionSubscribeToAnnualPremium();

  static const CONSTRUCTOR = 'suggestedActionSubscribeToAnnualPremium';

  @override
  String getConstructor() => CONSTRUCTOR;
}
