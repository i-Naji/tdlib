part of '../tdapi.dart';

class CanTransferOwnership extends TdFunction {
  /// Checks whether the current session can be used to transfer a chat ownership to another user
  CanTransferOwnership();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CanTransferOwnership.fromJson(Map<String, dynamic> json);

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
