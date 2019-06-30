part of '../tdapi.dart';

class CallState implements TLObject {
  /// Describes the current call state
  CallState();

  /// a CallState return type can be :
  /// * CallStateReady
  /// * CallStateExchangingKeys
  /// * CallStateError
  /// * CallStateDiscarded
  /// * CallStatePending
  /// * CallStateHangingUp
  factory CallState.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case CallStateReady.CONSTRUCTOR:
        return CallStateReady.fromJson(json);
      case CallStateExchangingKeys.CONSTRUCTOR:
        return CallStateExchangingKeys.fromJson(json);
      case CallStateError.CONSTRUCTOR:
        return CallStateError.fromJson(json);
      case CallStateDiscarded.CONSTRUCTOR:
        return CallStateDiscarded.fromJson(json);
      case CallStatePending.CONSTRUCTOR:
        return CallStatePending.fromJson(json);
      case CallStateHangingUp.CONSTRUCTOR:
        return CallStateHangingUp.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'callState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStatePending implements CallState {
  bool isCreated;
  bool isReceived;

  /// The call is pending, waiting to be accepted by a user.
  ///[isCreated] True, if the call has already been created by the server .
  /// [isReceived] True, if the call has already been received by the other party
  CallStatePending({this.isCreated, this.isReceived});

  /// Parse from a json
  CallStatePending.fromJson(Map<String, dynamic> json) {
    this.isCreated = json['is_created'];
    this.isReceived = json['is_received'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'is_created': this.isCreated,
      'is_received': this.isReceived
    };
  }

  static const String CONSTRUCTOR = 'callStatePending';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStateExchangingKeys implements CallState {
  /// The call has been answered and encryption keys are being exchanged.
  ///
  CallStateExchangingKeys();

  /// Parse from a json
  CallStateExchangingKeys.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'callStateExchangingKeys';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStateReady implements CallState {
  CallProtocol protocol;
  List<CallConnection> connections;
  String config;
  String encryptionKey;
  List<String> emojis;
  bool allowP2p;

  /// The call is ready to use.
  ///[protocol] Call protocols supported by the peer .
  /// [connections] Available UDP reflectors .
  /// [config] A JSON-encoded call config .
  /// [encryptionKey] Call encryption key .
  /// [emojis] Encryption key emojis fingerprint .
  /// [allowP2p] True, if peer-to-peer connection is allowed by users privacy settings
  CallStateReady(
      {this.protocol,
      this.connections,
      this.config,
      this.encryptionKey,
      this.emojis,
      this.allowP2p});

  /// Parse from a json
  CallStateReady.fromJson(Map<String, dynamic> json) {
    this.protocol =
        CallProtocol.fromJson(json['protocol'] ?? <String, dynamic>{});
    this.connections = (json['connections'] ?? [])
        .map((listValue) => CallConnection.fromJson(listValue))
        .toList();
    this.config = json['config'];
    this.encryptionKey = json['encryption_key'];
    this.emojis = json['emojis'] ?? [];
    this.allowP2p = json['allow_p2p'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'protocol': this.protocol.toJson(),
      'connections':
          this.connections.map((listItem) => listItem.toJson()).toList(),
      'config': this.config,
      'encryption_key': this.encryptionKey,
      'emojis': this.emojis,
      'allow_p2p': this.allowP2p
    };
  }

  static const String CONSTRUCTOR = 'callStateReady';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStateHangingUp implements CallState {
  /// The call is hanging up after discardCall has been called.
  ///
  CallStateHangingUp();

  /// Parse from a json
  CallStateHangingUp.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'callStateHangingUp';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStateDiscarded implements CallState {
  var reason;
  bool needRating;
  bool needDebugInformation;

  /// The call has ended successfully.
  ///[reason] The reason, why the call has ended .
  /// [needRating] True, if the call rating should be sent to the server .
  /// [needDebugInformation] True, if the call debug information should be sent to the server
  CallStateDiscarded({this.reason, this.needRating, this.needDebugInformation});

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
      '@type': CONSTRUCTOR,
      'reason': this.reason.toJson(),
      'need_rating': this.needRating,
      'need_debug_information': this.needDebugInformation
    };
  }

  static const String CONSTRUCTOR = 'callStateDiscarded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStateError implements CallState {
  Error error;

  /// The call has ended with an error.
  ///[error] Error. An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout
  CallStateError({this.error});

  /// Parse from a json
  CallStateError.fromJson(Map<String, dynamic> json) {
    this.error = Error.fromJson(json['error'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'error': this.error.toJson()};
  }

  static const String CONSTRUCTOR = 'callStateError';

  @override
  String getConstructor() => CONSTRUCTOR;
}
