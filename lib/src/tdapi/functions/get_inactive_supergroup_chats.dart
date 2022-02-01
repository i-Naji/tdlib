part of '../tdapi.dart';

class GetInactiveSupergroupChats extends TdFunction {

  /// Returns a list of recently inactive supergroups and channels. Can be used when user reaches limit on the number of joined supergroups and channels and receives CHANNELS_TOO_MUCH error
  const GetInactiveSupergroupChats();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetInactiveSupergroupChats copyWith() => const GetInactiveSupergroupChats();

  static const CONSTRUCTOR = 'getInactiveSupergroupChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
