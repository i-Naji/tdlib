part of '../tdapi.dart';

class CallState extends TdObject {
  /// Describes the current call state
  CallState();

  /// a CallState return type can be :
  /// * CallStatePending
  /// * CallStateExchangingKeys
  /// * CallStateReady
  /// * CallStateHangingUp
  /// * CallStateDiscarded
  /// * CallStateError
  factory CallState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
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
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'callState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStatePending extends CallState {
  /// The call is pending, waiting to be accepted by a user
  CallStatePending({this.isCreated, this.isReceived});

  /// [isCreated] True, if the call has already been created by the server
  bool isCreated;

  /// [isReceived] True, if the call has already been received by the other party
  bool isReceived;

  /// Parse from a json
  CallStatePending.fromJson(Map<String, dynamic> json) {
    this.isCreated = json['is_created'];
    this.isReceived = json['is_received'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_created": this.isCreated,
      "is_received": this.isReceived,
    };
  }

  static const CONSTRUCTOR = 'callStatePending';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStateExchangingKeys extends CallState {
  /// The call has been answered and encryption keys are being exchanged
  CallStateExchangingKeys();

  /// Parse from a json
  CallStateExchangingKeys.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'callStateExchangingKeys';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStateReady extends CallState {
  /// The call is ready to use
  CallStateReady(
      {this.protocol,
      this.servers,
      this.config,
      this.encryptionKey,
      this.emojis,
      this.allowP2p});

  /// [protocol] Call protocols supported by the peer
  CallProtocol protocol;

  /// [servers] List of available call servers
  List<CallServer> servers;

  /// [config] A JSON-encoded call config
  String config;

  /// [encryptionKey] Call encryption key
  String encryptionKey;

  /// [emojis] Encryption key emojis fingerprint
  List<String> emojis;

  /// [allowP2p] True, if peer-to-peer connection is allowed by users privacy settings
  bool allowP2p;

  /// Parse from a json
  CallStateReady.fromJson(Map<String, dynamic> json) {
    this.protocol =
        CallProtocol.fromJson(json['protocol'] ?? <String, dynamic>{});
    this.servers = List<CallServer>.from((json['servers'] ?? [])
        .map((item) => CallServer.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.config = json['config'];
    this.encryptionKey = json['encryption_key'];
    this.emojis =
        List<String>.from((json['emojis'] ?? []).map((item) => item).toList());
    this.allowP2p = json['allow_p2p'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "protocol": this.protocol == null ? null : this.protocol.toJson(),
      "servers": this.servers.map((i) => i.toJson()).toList(),
      "config": this.config,
      "encryption_key": this.encryptionKey,
      "emojis": this.emojis.map((i) => i).toList(),
      "allow_p2p": this.allowP2p,
    };
  }

  static const CONSTRUCTOR = 'callStateReady';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStateHangingUp extends CallState {
  /// The call is hanging up after discardCall has been called
  CallStateHangingUp();

  /// Parse from a json
  CallStateHangingUp.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'callStateHangingUp';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStateDiscarded extends CallState {
  /// The call has ended successfully
  CallStateDiscarded({this.reason, this.needRating, this.needDebugInformation});

  /// [reason] The reason, why the call has ended
  CallDiscardReason reason;

  /// [needRating] True, if the call rating should be sent to the server
  bool needRating;

  /// [needDebugInformation] True, if the call debug information should be sent to the server
  bool needDebugInformation;

  /// Parse from a json
  CallStateDiscarded.fromJson(Map<String, dynamic> json) {
    this.reason =
        CallDiscardReason.fromJson(json['reason'] ?? <String, dynamic>{});
    this.needRating = json['need_rating'];
    this.needDebugInformation = json['need_debug_information'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "reason": this.reason == null ? null : this.reason.toJson(),
      "need_rating": this.needRating,
      "need_debug_information": this.needDebugInformation,
    };
  }

  static const CONSTRUCTOR = 'callStateDiscarded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStateError extends CallState {
  /// The call has ended with an error
  CallStateError({this.error});

  /// [error] Error. An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout
  TdError error;

  /// Parse from a json
  CallStateError.fromJson(Map<String, dynamic> json) {
    this.error = TdError.fromJson(json['error'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "error": this.error == null ? null : this.error.toJson(),
    };
  }

  static const CONSTRUCTOR = 'callStateError';

  @override
  String getConstructor() => CONSTRUCTOR;
}
