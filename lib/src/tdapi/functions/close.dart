part of '../tdapi.dart';

class Close extends TdFunction {
  /// Closes the TDLib instance. All databases will be flushed to disk and properly closed. After the close completes, updateAuthorizationState with authorizationStateClosed will be sent. Can be called before initialization
  Close();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  Close.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'close';

  @override
  String getConstructor() => CONSTRUCTOR;
}
