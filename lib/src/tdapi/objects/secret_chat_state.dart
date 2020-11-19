part of '../tdapi.dart';

class SecretChatState extends TdObject {
  /// Describes the current secret chat state
  SecretChatState();

  /// a SecretChatState return type can be :
  /// * SecretChatStatePending
  /// * SecretChatStateReady
  /// * SecretChatStateClosed
  factory SecretChatState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case SecretChatStatePending.CONSTRUCTOR:
        return SecretChatStatePending.fromJson(json);
      case SecretChatStateReady.CONSTRUCTOR:
        return SecretChatStateReady.fromJson(json);
      case SecretChatStateClosed.CONSTRUCTOR:
        return SecretChatStateClosed.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'secretChatState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SecretChatStatePending extends SecretChatState {
  /// The secret chat is not yet created; waiting for the other user to get online
  SecretChatStatePending();

  /// Parse from a json
  SecretChatStatePending.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'secretChatStatePending';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SecretChatStateReady extends SecretChatState {
  /// The secret chat is ready to use
  SecretChatStateReady();

  /// Parse from a json
  SecretChatStateReady.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'secretChatStateReady';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SecretChatStateClosed extends SecretChatState {
  /// The secret chat is closed
  SecretChatStateClosed();

  /// Parse from a json
  SecretChatStateClosed.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'secretChatStateClosed';

  @override
  String getConstructor() => CONSTRUCTOR;
}
