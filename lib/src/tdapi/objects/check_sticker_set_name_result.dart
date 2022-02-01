part of '../tdapi.dart';

class CheckStickerSetNameResult extends TdObject {

  /// Represents result of checking whether a name can be used for a new sticker set
  const CheckStickerSetNameResult();
  
  /// a CheckStickerSetNameResult return type can be :
  /// * [CheckStickerSetNameResultOk]
  /// * [CheckStickerSetNameResultNameInvalid]
  /// * [CheckStickerSetNameResultNameOccupied]
  factory CheckStickerSetNameResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CheckStickerSetNameResultOk.CONSTRUCTOR:
        return CheckStickerSetNameResultOk.fromJson(json);
      case CheckStickerSetNameResultNameInvalid.CONSTRUCTOR:
        return CheckStickerSetNameResultNameInvalid.fromJson(json);
      case CheckStickerSetNameResultNameOccupied.CONSTRUCTOR:
        return CheckStickerSetNameResultNameOccupied.fromJson(json);
      default:
        return const CheckStickerSetNameResult();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  CheckStickerSetNameResult copyWith() => const CheckStickerSetNameResult();

  static const CONSTRUCTOR = 'checkStickerSetNameResult';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CheckStickerSetNameResultOk extends CheckStickerSetNameResult {

  /// The name can be set
  const CheckStickerSetNameResultOk({
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
  factory CheckStickerSetNameResultOk.fromJson(Map<String, dynamic> json) => CheckStickerSetNameResultOk(
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
  CheckStickerSetNameResultOk copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckStickerSetNameResultOk(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'checkStickerSetNameResultOk';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CheckStickerSetNameResultNameInvalid extends CheckStickerSetNameResult {

  /// The name is invalid
  const CheckStickerSetNameResultNameInvalid({
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
  factory CheckStickerSetNameResultNameInvalid.fromJson(Map<String, dynamic> json) => CheckStickerSetNameResultNameInvalid(
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
  CheckStickerSetNameResultNameInvalid copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckStickerSetNameResultNameInvalid(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'checkStickerSetNameResultNameInvalid';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CheckStickerSetNameResultNameOccupied extends CheckStickerSetNameResult {

  /// The name is occupied
  const CheckStickerSetNameResultNameOccupied({
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
  factory CheckStickerSetNameResultNameOccupied.fromJson(Map<String, dynamic> json) => CheckStickerSetNameResultNameOccupied(
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
  CheckStickerSetNameResultNameOccupied copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckStickerSetNameResultNameOccupied(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'checkStickerSetNameResultNameOccupied';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
