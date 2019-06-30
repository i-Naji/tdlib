part of '../tdapi.dart';

class SetTdlibParameters extends TLFunction {
  TdlibParameters parameters;
  dynamic extra;

  /// Sets the parameters for TDLib initialization. Works only when the current authorization state is authorizationStateWaitTdlibParameters.
  ///[parameters] Parameters
  SetTdlibParameters({this.parameters});

  /// Parse from a json
  SetTdlibParameters.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'parameters': this.parameters.toJson(),
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'setTdlibParameters';

  @override
  String getConstructor() => CONSTRUCTOR;
}
