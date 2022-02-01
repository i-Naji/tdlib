part of '../tdapi.dart';

class CanTransferOwnershipResult extends TdObject {

  /// Represents result of checking whether the current session can be used to transfer a chat ownership to another user
  const CanTransferOwnershipResult();
  
  /// a CanTransferOwnershipResult return type can be :
  /// * [CanTransferOwnershipResultOk]
  /// * [CanTransferOwnershipResultPasswordNeeded]
  /// * [CanTransferOwnershipResultPasswordTooFresh]
  /// * [CanTransferOwnershipResultSessionTooFresh]
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
        return const CanTransferOwnershipResult();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  CanTransferOwnershipResult copyWith() => const CanTransferOwnershipResult();

  static const CONSTRUCTOR = 'canTransferOwnershipResult';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CanTransferOwnershipResultOk extends CanTransferOwnershipResult {

  /// The session can be used
  const CanTransferOwnershipResultOk({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanTransferOwnershipResultOk.fromJson(Map<String, dynamic> json) => CanTransferOwnershipResultOk(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CanTransferOwnershipResultOk copyWith({
    dynamic extra,
    int? clientId,
  }) => CanTransferOwnershipResultOk(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'canTransferOwnershipResultOk';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CanTransferOwnershipResultPasswordNeeded extends CanTransferOwnershipResult {

  /// The 2-step verification needs to be enabled first
  const CanTransferOwnershipResultPasswordNeeded({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanTransferOwnershipResultPasswordNeeded.fromJson(Map<String, dynamic> json) => CanTransferOwnershipResultPasswordNeeded(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CanTransferOwnershipResultPasswordNeeded copyWith({
    dynamic extra,
    int? clientId,
  }) => CanTransferOwnershipResultPasswordNeeded(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'canTransferOwnershipResultPasswordNeeded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CanTransferOwnershipResultPasswordTooFresh extends CanTransferOwnershipResult {

  /// The 2-step verification was enabled recently, user needs to wait
  const CanTransferOwnershipResultPasswordTooFresh({
    required this.retryAfter,
    this.extra,
    this.clientId,
  });
  
  /// [retryAfter] Time left before the session can be used to transfer ownership of a chat, in seconds
  final int retryAfter;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanTransferOwnershipResultPasswordTooFresh.fromJson(Map<String, dynamic> json) => CanTransferOwnershipResultPasswordTooFresh(
    retryAfter: json['retry_after'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "retry_after": retryAfter,
    };
  }
  
  @override
  CanTransferOwnershipResultPasswordTooFresh copyWith({
    int? retryAfter,
    dynamic extra,
    int? clientId,
  }) => CanTransferOwnershipResultPasswordTooFresh(
    retryAfter: retryAfter ?? this.retryAfter,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'canTransferOwnershipResultPasswordTooFresh';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CanTransferOwnershipResultSessionTooFresh extends CanTransferOwnershipResult {

  /// The session was created recently, user needs to wait
  const CanTransferOwnershipResultSessionTooFresh({
    required this.retryAfter,
    this.extra,
    this.clientId,
  });
  
  /// [retryAfter] Time left before the session can be used to transfer ownership of a chat, in seconds
  final int retryAfter;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanTransferOwnershipResultSessionTooFresh.fromJson(Map<String, dynamic> json) => CanTransferOwnershipResultSessionTooFresh(
    retryAfter: json['retry_after'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "retry_after": retryAfter,
    };
  }
  
  @override
  CanTransferOwnershipResultSessionTooFresh copyWith({
    int? retryAfter,
    dynamic extra,
    int? clientId,
  }) => CanTransferOwnershipResultSessionTooFresh(
    retryAfter: retryAfter ?? this.retryAfter,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'canTransferOwnershipResultSessionTooFresh';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
