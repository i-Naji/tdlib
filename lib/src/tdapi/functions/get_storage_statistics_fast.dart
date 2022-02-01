part of '../tdapi.dart';

class GetStorageStatisticsFast extends TdFunction {

  /// Quickly returns approximate storage usage statistics. Can be called before authorization
  const GetStorageStatisticsFast();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetStorageStatisticsFast copyWith() => const GetStorageStatisticsFast();

  static const CONSTRUCTOR = 'getStorageStatisticsFast';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
