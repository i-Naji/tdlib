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
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'callState';
}

class CallStatePending extends CallState {
  bool isCreated;
  bool isReceived;

  /// The call is pending, waiting to be accepted by a user. 
  /// [isCreated] True, if the call has already been created by the server . 
  /// [isReceived] True, if the call has already been received by the other party
  CallStatePending({this.isCreated,
    this.isReceived});

  /// Parse from a json
  CallStatePending.fromJson(Map<String, dynamic> json)  {
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
}

class CallStateExchangingKeys extends CallState {
  

  /// The call has been answered and encryption keys are being exchanged
  CallStateExchangingKeys();

  /// Parse from a json
  CallStateExchangingKeys.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'callStateExchangingKeys';
}

class CallStateReady extends CallState {
  CallProtocol protocol;
  List<List<CallConnection>> connections;
  String config;
  String encryptionKey;
  List<List<String>> emojis;
  bool allowP2p;

  /// The call is ready to use. 
  /// [protocol] Call protocols supported by the peer . 
  /// [connections] Available UDP reflectors . 
  /// [config] A JSON-encoded call config . 
  /// [encryptionKey] Call encryption key . 
  /// [emojis] Encryption key emojis fingerprint . 
  /// [allowP2p] True, if peer-to-peer connection is allowed by users privacy settings
  CallStateReady({this.protocol,
    this.connections,
    this.config,
    this.encryptionKey,
    this.emojis,
    this.allowP2p});

  /// Parse from a json
  CallStateReady.fromJson(Map<String, dynamic> json)  {
    this.protocol = CallProtocol.fromJson(json['protocol'] ?? <String, dynamic>{});
    this.connections = List<List<CallConnection>>.from((json['connections'] ?? []).map((item) => List<CallConnection>.from((item ?? []).map((innerItem) => CallConnection.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.config = json['config'];
    this.encryptionKey = json['encryption_key'];
    this.emojis = List<List<String>>.from((json['emojis'] ?? []).map((item) => List<String>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
    this.allowP2p = json['allow_p2p'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "protocol": this.protocol.toJson(),
      "connections": this.connections.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "config": this.config,
      "encryption_key": this.encryptionKey,
      "emojis": this.emojis.map((i) => i.map((ii) => ii).toList()).toList(),
      "allow_p2p": this.allowP2p,
    };
  }

  static const CONSTRUCTOR = 'callStateReady';
}

class CallStateHangingUp extends CallState {
  

  /// The call is hanging up after discardCall has been called
  CallStateHangingUp();

  /// Parse from a json
  CallStateHangingUp.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'callStateHangingUp';
}

class CallStateDiscarded extends CallState {
  CallDiscardReason reason;
  bool needRating;
  bool needDebugInformation;

  /// The call has ended successfully. 
  /// [reason] The reason, why the call has ended . 
  /// [needRating] True, if the call rating should be sent to the server . 
  /// [needDebugInformation] True, if the call debug information should be sent to the server
  CallStateDiscarded({this.reason,
    this.needRating,
    this.needDebugInformation});

  /// Parse from a json
  CallStateDiscarded.fromJson(Map<String, dynamic> json)  {
    this.reason = CallDiscardReason.fromJson(json['reason'] ?? <String, dynamic>{});
    this.needRating = json['need_rating'];
    this.needDebugInformation = json['need_debug_information'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "reason": this.reason.toJson(),
      "need_rating": this.needRating,
      "need_debug_information": this.needDebugInformation,
    };
  }

  static const CONSTRUCTOR = 'callStateDiscarded';
}

class CallStateError extends CallState {
  TdError error;

  /// The call has ended with an error. 
  /// [error] Error. An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout
  CallStateError({this.error});

  /// Parse from a json
  CallStateError.fromJson(Map<String, dynamic> json)  {
    this.error = TdError.fromJson(json['error'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "error": this.error.toJson(),
    };
  }

  static const CONSTRUCTOR = 'callStateError';
}