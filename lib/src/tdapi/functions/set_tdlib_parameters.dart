part of '../tdapi.dart';

class SetTdlibParameters extends TdFunction {
  TdlibParameters parameters;
  dynamic extra;

  /// Sets the parameters for TDLib initialization. Works only when the current authorization state is authorizationStateWaitTdlibParameters. 
  /// [parameters] Parameters
  SetTdlibParameters({this.parameters});

  /// Parse from a json
  SetTdlibParameters.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "parameters": this.parameters == null ? null : this.parameters.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setTdlibParameters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}