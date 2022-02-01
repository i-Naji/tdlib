part of '../tdapi.dart';

class SetInactiveSessionTtl extends TdFunction {

  /// Changes the period of inactivity after which sessions will automatically be terminated
  const SetInactiveSessionTtl({
    required this.inactiveSessionTtlDays,
  });
  
  /// [inactiveSessionTtlDays] New number of days of inactivity before sessions will be automatically terminated; 1-366 days
  final int inactiveSessionTtlDays;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "inactive_session_ttl_days": inactiveSessionTtlDays,
      "@extra": extra,
    };
  }
  
  SetInactiveSessionTtl copyWith({
    int? inactiveSessionTtlDays,
  }) => SetInactiveSessionTtl(
    inactiveSessionTtlDays: inactiveSessionTtlDays ?? this.inactiveSessionTtlDays,
  );

  static const CONSTRUCTOR = 'setInactiveSessionTtl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
