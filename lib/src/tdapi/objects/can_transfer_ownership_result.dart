part of '../tdapi.dart';

class CanTransferOwnershipResult extends TdObject {
  

  /// Represents result of checking whether the current session can be used to transfer a chat ownership to another user
  CanTransferOwnershipResult();

  /// a CanTransferOwnershipResult return type can be :
  /// * CanTransferOwnershipResultOk
  /// * CanTransferOwnershipResultPasswordNeeded
  /// * CanTransferOwnershipResultPasswordTooFresh
  /// * CanTransferOwnershipResultSessionTooFresh
  factory CanTransferOwnershipResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CanTransferOwnershipResultOk.CONSTRUCTOR:
        return CanTransferOwnershipResultOk.fromJson(json);
      case CanTransferOwnershipResultPasswordNeeded.CONSTRUCTOR:
        return CanTransferOwnershipResultPasswordNeeded.fromJson(json);
      case CanTransferOwnershipResultPasswordTooFresh.CONSTRUCTOR:
        return CanTransferOwnershipResultPasswordTooFresh.fromJson(json);
      case CanTransferOwnershipResultSessionTooFresh.CONSTRUCTOR:
        return CanTransferOwnershipResultSessionTooFresh.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'canTransferOwnershipResult';
}

class CanTransferOwnershipResultOk extends CanTransferOwnershipResult {
  dynamic extra;

  /// The session can be used
  CanTransferOwnershipResultOk();

  /// Parse from a json
  CanTransferOwnershipResultOk.fromJson(Map<String, dynamic> json)  {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'canTransferOwnershipResultOk';
}

class CanTransferOwnershipResultPasswordNeeded extends CanTransferOwnershipResult {
  dynamic extra;

  /// The 2-step verification needs to be enabled first
  CanTransferOwnershipResultPasswordNeeded();

  /// Parse from a json
  CanTransferOwnershipResultPasswordNeeded.fromJson(Map<String, dynamic> json)  {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'canTransferOwnershipResultPasswordNeeded';
}

class CanTransferOwnershipResultPasswordTooFresh extends CanTransferOwnershipResult {
  int retryAfter;
  dynamic extra;

  /// The 2-step verification was enabled recently, user needs to wait. 
  /// [retryAfter] Time left before the session can be used to transfer ownership of a chat, in seconds
  CanTransferOwnershipResultPasswordTooFresh({this.retryAfter});

  /// Parse from a json
  CanTransferOwnershipResultPasswordTooFresh.fromJson(Map<String, dynamic> json)  {
    this.retryAfter = json['retry_after'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "retry_after": this.retryAfter,
    };
  }

  static const CONSTRUCTOR = 'canTransferOwnershipResultPasswordTooFresh';
}

class CanTransferOwnershipResultSessionTooFresh extends CanTransferOwnershipResult {
  int retryAfter;
  dynamic extra;

  /// The session was created recently, user needs to wait. 
  /// [retryAfter] Time left before the session can be used to transfer ownership of a chat, in seconds
  CanTransferOwnershipResultSessionTooFresh({this.retryAfter});

  /// Parse from a json
  CanTransferOwnershipResultSessionTooFresh.fromJson(Map<String, dynamic> json)  {
    this.retryAfter = json['retry_after'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "retry_after": this.retryAfter,
    };
  }

  static const CONSTRUCTOR = 'canTransferOwnershipResultSessionTooFresh';
}