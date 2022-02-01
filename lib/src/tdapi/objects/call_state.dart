part of '../tdapi.dart';

class CallState extends TdObject {

  /// Describes the current call state
  const CallState();
  
  /// a CallState return type can be :
  /// * [CallStatePending]
  /// * [CallStateExchangingKeys]
  /// * [CallStateReady]
  /// * [CallStateHangingUp]
  /// * [CallStateDiscarded]
  /// * [CallStateError]
  factory CallState.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CallStatePending.CONSTRUCTOR:
        return CallStatePending.fromJson(json);
      case CallStateExchangingKeys.CONSTRUCTOR:
        return CallStateExchangingKeys.fromJson(json);
      case CallStateReady.CONSTRUCTOR:
        return CallStateReady.fromJson(json);
      case CallStateHangingUp.CONSTRUCTOR:
        return CallStateHangingUp.fromJson(json);
      case CallStateDiscarded.CONSTRUCTOR:
        return CallStateDiscarded.fromJson(json);
      case CallStateError.CONSTRUCTOR:
        return CallStateError.fromJson(json);
      default:
        return const CallState();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  CallState copyWith() => const CallState();

  static const CONSTRUCTOR = 'callState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallStatePending extends CallState {

  /// The call is pending, waiting to be accepted by a user
  const CallStatePending({
    required this.isCreated,
    required this.isReceived,
  });
  
  /// [isCreated] True, if the call has already been created by the server 
  final bool isCreated;

  /// [isReceived] True, if the call has already been received by the other party
  final bool isReceived;
  
  /// Parse from a json
  factory CallStatePending.fromJson(Map<String, dynamic> json) => CallStatePending(
    isCreated: json['is_created'],
    isReceived: json['is_received'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_created": isCreated,
      "is_received": isReceived,
    };
  }
  
  @override
  CallStatePending copyWith({
    bool? isCreated,
    bool? isReceived,
  }) => CallStatePending(
    isCreated: isCreated ?? this.isCreated,
    isReceived: isReceived ?? this.isReceived,
  );

  static const CONSTRUCTOR = 'callStatePending';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallStateExchangingKeys extends CallState {

  /// The call has been answered and encryption keys are being exchanged
  const CallStateExchangingKeys();
  
  /// Parse from a json
  factory CallStateExchangingKeys.fromJson(Map<String, dynamic> json) => const CallStateExchangingKeys();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CallStateExchangingKeys copyWith() => const CallStateExchangingKeys();

  static const CONSTRUCTOR = 'callStateExchangingKeys';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallStateReady extends CallState {

  /// The call is ready to use
  const CallStateReady({
    required this.protocol,
    required this.servers,
    required this.config,
    required this.encryptionKey,
    required this.emojis,
    required this.allowP2p,
  });
  
  /// [protocol] Call protocols supported by the peer 
  final CallProtocol protocol;

  /// [servers] List of available call servers 
  final List<CallServer> servers;

  /// [config] A JSON-encoded call config 
  final String config;

  /// [encryptionKey] Call encryption key 
  final String encryptionKey;

  /// [emojis] Encryption key emojis fingerprint 
  final List<String> emojis;

  /// [allowP2p] True, if peer-to-peer connection is allowed by users privacy settings
  final bool allowP2p;
  
  /// Parse from a json
  factory CallStateReady.fromJson(Map<String, dynamic> json) => CallStateReady(
    protocol: CallProtocol.fromJson(json['protocol']),
    servers: List<CallServer>.from((json['servers'] ?? []).map((item) => CallServer.fromJson(item)).toList()),
    config: json['config'],
    encryptionKey: json['encryption_key'],
    emojis: List<String>.from((json['emojis'] ?? []).map((item) => item).toList()),
    allowP2p: json['allow_p2p'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "protocol": protocol.toJson(),
      "servers": servers.map((i) => i.toJson()).toList(),
      "config": config,
      "encryption_key": encryptionKey,
      "emojis": emojis.map((i) => i).toList(),
      "allow_p2p": allowP2p,
    };
  }
  
  @override
  CallStateReady copyWith({
    CallProtocol? protocol,
    List<CallServer>? servers,
    String? config,
    String? encryptionKey,
    List<String>? emojis,
    bool? allowP2p,
  }) => CallStateReady(
    protocol: protocol ?? this.protocol,
    servers: servers ?? this.servers,
    config: config ?? this.config,
    encryptionKey: encryptionKey ?? this.encryptionKey,
    emojis: emojis ?? this.emojis,
    allowP2p: allowP2p ?? this.allowP2p,
  );

  static const CONSTRUCTOR = 'callStateReady';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallStateHangingUp extends CallState {

  /// The call is hanging up after discardCall has been called
  const CallStateHangingUp();
  
  /// Parse from a json
  factory CallStateHangingUp.fromJson(Map<String, dynamic> json) => const CallStateHangingUp();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CallStateHangingUp copyWith() => const CallStateHangingUp();

  static const CONSTRUCTOR = 'callStateHangingUp';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallStateDiscarded extends CallState {

  /// The call has ended successfully
  const CallStateDiscarded({
    required this.reason,
    required this.needRating,
    required this.needDebugInformation,
  });
  
  /// [reason] The reason, why the call has ended 
  final CallDiscardReason reason;

  /// [needRating] True, if the call rating must be sent to the server 
  final bool needRating;

  /// [needDebugInformation] True, if the call debug information must be sent to the server
  final bool needDebugInformation;
  
  /// Parse from a json
  factory CallStateDiscarded.fromJson(Map<String, dynamic> json) => CallStateDiscarded(
    reason: CallDiscardReason.fromJson(json['reason']),
    needRating: json['need_rating'],
    needDebugInformation: json['need_debug_information'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reason": reason.toJson(),
      "need_rating": needRating,
      "need_debug_information": needDebugInformation,
    };
  }
  
  @override
  CallStateDiscarded copyWith({
    CallDiscardReason? reason,
    bool? needRating,
    bool? needDebugInformation,
  }) => CallStateDiscarded(
    reason: reason ?? this.reason,
    needRating: needRating ?? this.needRating,
    needDebugInformation: needDebugInformation ?? this.needDebugInformation,
  );

  static const CONSTRUCTOR = 'callStateDiscarded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallStateError extends CallState {

  /// The call has ended with an error
  const CallStateError({
    required this.error,
  });
  
  /// [error] Error. An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout
  final TdError error;
  
  /// Parse from a json
  factory CallStateError.fromJson(Map<String, dynamic> json) => CallStateError(
    error: TdError.fromJson(json['error']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "error": error.toJson(),
    };
  }
  
  @override
  CallStateError copyWith({
    TdError? error,
  }) => CallStateError(
    error: error ?? this.error,
  );

  static const CONSTRUCTOR = 'callStateError';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
