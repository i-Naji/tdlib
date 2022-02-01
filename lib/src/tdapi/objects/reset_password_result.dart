part of '../tdapi.dart';

class ResetPasswordResult extends TdObject {

  /// Represents result of 2-step verification password reset
  const ResetPasswordResult();
  
  /// a ResetPasswordResult return type can be :
  /// * [ResetPasswordResultOk]
  /// * [ResetPasswordResultPending]
  /// * [ResetPasswordResultDeclined]
  factory ResetPasswordResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ResetPasswordResultOk.CONSTRUCTOR:
        return ResetPasswordResultOk.fromJson(json);
      case ResetPasswordResultPending.CONSTRUCTOR:
        return ResetPasswordResultPending.fromJson(json);
      case ResetPasswordResultDeclined.CONSTRUCTOR:
        return ResetPasswordResultDeclined.fromJson(json);
      default:
        return const ResetPasswordResult();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ResetPasswordResult copyWith() => const ResetPasswordResult();

  static const CONSTRUCTOR = 'resetPasswordResult';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ResetPasswordResultOk extends ResetPasswordResult {

  /// The password was reset
  const ResetPasswordResultOk({
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
  factory ResetPasswordResultOk.fromJson(Map<String, dynamic> json) => ResetPasswordResultOk(
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
  ResetPasswordResultOk copyWith({
    dynamic extra,
    int? clientId,
  }) => ResetPasswordResultOk(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'resetPasswordResultOk';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ResetPasswordResultPending extends ResetPasswordResult {

  /// The password reset request is pending
  const ResetPasswordResultPending({
    required this.pendingResetDate,
    this.extra,
    this.clientId,
  });
  
  /// [pendingResetDate] Point in time (Unix timestamp) after which the password can be reset immediately using resetPassword
  final int pendingResetDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ResetPasswordResultPending.fromJson(Map<String, dynamic> json) => ResetPasswordResultPending(
    pendingResetDate: json['pending_reset_date'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "pending_reset_date": pendingResetDate,
    };
  }
  
  @override
  ResetPasswordResultPending copyWith({
    int? pendingResetDate,
    dynamic extra,
    int? clientId,
  }) => ResetPasswordResultPending(
    pendingResetDate: pendingResetDate ?? this.pendingResetDate,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'resetPasswordResultPending';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ResetPasswordResultDeclined extends ResetPasswordResult {

  /// The password reset request was declined
  const ResetPasswordResultDeclined({
    required this.retryDate,
    this.extra,
    this.clientId,
  });
  
  /// [retryDate] Point in time (Unix timestamp) when the password reset can be retried
  final int retryDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ResetPasswordResultDeclined.fromJson(Map<String, dynamic> json) => ResetPasswordResultDeclined(
    retryDate: json['retry_date'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "retry_date": retryDate,
    };
  }
  
  @override
  ResetPasswordResultDeclined copyWith({
    int? retryDate,
    dynamic extra,
    int? clientId,
  }) => ResetPasswordResultDeclined(
    retryDate: retryDate ?? this.retryDate,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'resetPasswordResultDeclined';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
