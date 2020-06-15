part of '../tdapi.dart';

class CanTransferOwnership extends TdFunction {
  dynamic extra;

  /// Checks whether the current session can be used to transfer a chat ownership to another user
  CanTransferOwnership();

  /// Parse from a json
  CanTransferOwnership.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'canTransferOwnership';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}