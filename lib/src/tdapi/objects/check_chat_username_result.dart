part of '../tdapi.dart';

class CheckChatUsernameResult extends TdObject {

  /// Represents result of checking whether a username can be set for a chat
  const CheckChatUsernameResult();
  
  /// a CheckChatUsernameResult return type can be :
  /// * [CheckChatUsernameResultOk]
  /// * [CheckChatUsernameResultUsernameInvalid]
  /// * [CheckChatUsernameResultUsernameOccupied]
  /// * [CheckChatUsernameResultPublicChatsTooMuch]
  /// * [CheckChatUsernameResultPublicGroupsUnavailable]
  factory CheckChatUsernameResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CheckChatUsernameResultOk.CONSTRUCTOR:
        return CheckChatUsernameResultOk.fromJson(json);
      case CheckChatUsernameResultUsernameInvalid.CONSTRUCTOR:
        return CheckChatUsernameResultUsernameInvalid.fromJson(json);
      case CheckChatUsernameResultUsernameOccupied.CONSTRUCTOR:
        return CheckChatUsernameResultUsernameOccupied.fromJson(json);
      case CheckChatUsernameResultPublicChatsTooMuch.CONSTRUCTOR:
        return CheckChatUsernameResultPublicChatsTooMuch.fromJson(json);
      case CheckChatUsernameResultPublicGroupsUnavailable.CONSTRUCTOR:
        return CheckChatUsernameResultPublicGroupsUnavailable.fromJson(json);
      default:
        return const CheckChatUsernameResult();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  CheckChatUsernameResult copyWith() => const CheckChatUsernameResult();

  static const CONSTRUCTOR = 'checkChatUsernameResult';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CheckChatUsernameResultOk extends CheckChatUsernameResult {

  /// The username can be set
  const CheckChatUsernameResultOk({
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
  factory CheckChatUsernameResultOk.fromJson(Map<String, dynamic> json) => CheckChatUsernameResultOk(
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
  CheckChatUsernameResultOk copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckChatUsernameResultOk(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'checkChatUsernameResultOk';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CheckChatUsernameResultUsernameInvalid extends CheckChatUsernameResult {

  /// The username is invalid
  const CheckChatUsernameResultUsernameInvalid({
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
  factory CheckChatUsernameResultUsernameInvalid.fromJson(Map<String, dynamic> json) => CheckChatUsernameResultUsernameInvalid(
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
  CheckChatUsernameResultUsernameInvalid copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckChatUsernameResultUsernameInvalid(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'checkChatUsernameResultUsernameInvalid';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CheckChatUsernameResultUsernameOccupied extends CheckChatUsernameResult {

  /// The username is occupied
  const CheckChatUsernameResultUsernameOccupied({
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
  factory CheckChatUsernameResultUsernameOccupied.fromJson(Map<String, dynamic> json) => CheckChatUsernameResultUsernameOccupied(
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
  CheckChatUsernameResultUsernameOccupied copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckChatUsernameResultUsernameOccupied(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'checkChatUsernameResultUsernameOccupied';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CheckChatUsernameResultPublicChatsTooMuch extends CheckChatUsernameResult {

  /// The user has too many chats with username, one of them must be made private first
  const CheckChatUsernameResultPublicChatsTooMuch({
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
  factory CheckChatUsernameResultPublicChatsTooMuch.fromJson(Map<String, dynamic> json) => CheckChatUsernameResultPublicChatsTooMuch(
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
  CheckChatUsernameResultPublicChatsTooMuch copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckChatUsernameResultPublicChatsTooMuch(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'checkChatUsernameResultPublicChatsTooMuch';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CheckChatUsernameResultPublicGroupsUnavailable extends CheckChatUsernameResult {

  /// The user can't be a member of a public supergroup
  const CheckChatUsernameResultPublicGroupsUnavailable({
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
  factory CheckChatUsernameResultPublicGroupsUnavailable.fromJson(Map<String, dynamic> json) => CheckChatUsernameResultPublicGroupsUnavailable(
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
  CheckChatUsernameResultPublicGroupsUnavailable copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckChatUsernameResultPublicGroupsUnavailable(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'checkChatUsernameResultPublicGroupsUnavailable';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
