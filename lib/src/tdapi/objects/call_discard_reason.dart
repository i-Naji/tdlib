part of '../tdapi.dart';

class CallDiscardReason implements TLObject {
  /// Describes the reason why a call was discarded
  CallDiscardReason();

  /// a CallDiscardReason return type can be :
  /// * CallDiscardReasonEmpty
  /// * CallDiscardReasonMissed
  /// * CallDiscardReasonDeclined
  /// * CallDiscardReasonDisconnected
  /// * CallDiscardReasonHungUp
  factory CallDiscardReason.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case CallDiscardReasonEmpty.CONSTRUCTOR:
        return CallDiscardReasonEmpty.fromJson(json);
      case CallDiscardReasonMissed.CONSTRUCTOR:
        return CallDiscardReasonMissed.fromJson(json);
      case CallDiscardReasonDeclined.CONSTRUCTOR:
        return CallDiscardReasonDeclined.fromJson(json);
      case CallDiscardReasonDisconnected.CONSTRUCTOR:
        return CallDiscardReasonDisconnected.fromJson(json);
      case CallDiscardReasonHungUp.CONSTRUCTOR:
        return CallDiscardReasonHungUp.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "callDiscardReason";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallDiscardReasonEmpty implements CallDiscardReason {
  /// The call wasn't discarded, or the reason is unknown.
  ///
  CallDiscardReasonEmpty();

  /// Parse from a json
  CallDiscardReasonEmpty.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "callDiscardReasonEmpty";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallDiscardReasonMissed implements CallDiscardReason {
  /// The call was ended before the conversation started. It was cancelled by the caller or missed by the other party.
  ///
  CallDiscardReasonMissed();

  /// Parse from a json
  CallDiscardReasonMissed.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "callDiscardReasonMissed";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallDiscardReasonDeclined implements CallDiscardReason {
  /// The call was ended before the conversation started. It was declined by the other party.
  ///
  CallDiscardReasonDeclined();

  /// Parse from a json
  CallDiscardReasonDeclined.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "callDiscardReasonDeclined";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallDiscardReasonDisconnected implements CallDiscardReason {
  /// The call was ended during the conversation because the users were disconnected.
  ///
  CallDiscardReasonDisconnected();

  /// Parse from a json
  CallDiscardReasonDisconnected.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "callDiscardReasonDisconnected";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallDiscardReasonHungUp implements CallDiscardReason {
  /// The call was ended because one of the parties hung up.
  ///
  CallDiscardReasonHungUp();

  /// Parse from a json
  CallDiscardReasonHungUp.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "callDiscardReasonHungUp";

  @override
  String getConstructor() => CONSTRUCTOR;
}
