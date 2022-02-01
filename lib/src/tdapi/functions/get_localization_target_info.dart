part of '../tdapi.dart';

class GetLocalizationTargetInfo extends TdFunction {

  /// Returns information about the current localization target. This is an offline request if only_local is true. Can be called before authorization
  const GetLocalizationTargetInfo({
    required this.onlyLocal,
  });
  
  /// [onlyLocal] If true, returns only locally available information without sending network requests
  final bool onlyLocal;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "only_local": onlyLocal,
      "@extra": extra,
    };
  }
  
  GetLocalizationTargetInfo copyWith({
    bool? onlyLocal,
  }) => GetLocalizationTargetInfo(
    onlyLocal: onlyLocal ?? this.onlyLocal,
  );

  static const CONSTRUCTOR = 'getLocalizationTargetInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
