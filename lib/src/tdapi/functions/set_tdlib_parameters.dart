part of '../tdapi.dart';

class SetTdlibParameters extends TdFunction {

  /// Sets the parameters for TDLib initialization. Works only when the current authorization state is authorizationStateWaitTdlibParameters
  const SetTdlibParameters({
    required this.parameters,
  });
  
  /// [parameters] Parameters for TDLib initialization
  final TdlibParameters parameters;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "parameters": parameters.toJson(),
      "@extra": extra,
    };
  }
  
  SetTdlibParameters copyWith({
    TdlibParameters? parameters,
  }) => SetTdlibParameters(
    parameters: parameters ?? this.parameters,
  );

  static const CONSTRUCTOR = 'setTdlibParameters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
