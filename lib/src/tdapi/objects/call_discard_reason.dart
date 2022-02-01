part of '../tdapi.dart';

class CallDiscardReason extends TdObject {

  /// Describes the reason why a call was discarded
  const CallDiscardReason();
  
  /// a CallDiscardReason return type can be :
  /// * [CallDiscardReasonEmpty]
  /// * [CallDiscardReasonMissed]
  /// * [CallDiscardReasonDeclined]
  /// * [CallDiscardReasonDisconnected]
  /// * [CallDiscardReasonHungUp]
  factory CallDiscardReason.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
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
        return const CallDiscardReason();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  CallDiscardReason copyWith() => const CallDiscardReason();

  static const CONSTRUCTOR = 'callDiscardReason';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallDiscardReasonEmpty extends CallDiscardReason {

  /// The call wasn't discarded, or the reason is unknown
  const CallDiscardReasonEmpty();
  
  /// Parse from a json
  factory CallDiscardReasonEmpty.fromJson(Map<String, dynamic> json) => const CallDiscardReasonEmpty();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CallDiscardReasonEmpty copyWith() => const CallDiscardReasonEmpty();

  static const CONSTRUCTOR = 'callDiscardReasonEmpty';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallDiscardReasonMissed extends CallDiscardReason {

  /// The call was ended before the conversation started. It was canceled by the caller or missed by the other party
  const CallDiscardReasonMissed();
  
  /// Parse from a json
  factory CallDiscardReasonMissed.fromJson(Map<String, dynamic> json) => const CallDiscardReasonMissed();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CallDiscardReasonMissed copyWith() => const CallDiscardReasonMissed();

  static const CONSTRUCTOR = 'callDiscardReasonMissed';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallDiscardReasonDeclined extends CallDiscardReason {

  /// The call was ended before the conversation started. It was declined by the other party
  const CallDiscardReasonDeclined();
  
  /// Parse from a json
  factory CallDiscardReasonDeclined.fromJson(Map<String, dynamic> json) => const CallDiscardReasonDeclined();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CallDiscardReasonDeclined copyWith() => const CallDiscardReasonDeclined();

  static const CONSTRUCTOR = 'callDiscardReasonDeclined';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallDiscardReasonDisconnected extends CallDiscardReason {

  /// The call was ended during the conversation because the users were disconnected
  const CallDiscardReasonDisconnected();
  
  /// Parse from a json
  factory CallDiscardReasonDisconnected.fromJson(Map<String, dynamic> json) => const CallDiscardReasonDisconnected();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CallDiscardReasonDisconnected copyWith() => const CallDiscardReasonDisconnected();

  static const CONSTRUCTOR = 'callDiscardReasonDisconnected';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallDiscardReasonHungUp extends CallDiscardReason {

  /// The call was ended because one of the parties hung up
  const CallDiscardReasonHungUp();
  
  /// Parse from a json
  factory CallDiscardReasonHungUp.fromJson(Map<String, dynamic> json) => const CallDiscardReasonHungUp();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CallDiscardReasonHungUp copyWith() => const CallDiscardReasonHungUp();

  static const CONSTRUCTOR = 'callDiscardReasonHungUp';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
