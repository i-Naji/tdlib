part of '../tdapi.dart';

class GetOption extends TdFunction {
  String name;
  dynamic extra;

  /// Returns the value of an option by its name. (Check the list of available options on https://core.telegram.org/tdlib/options.) Can be called before authorization. 
  /// [name] The name of the option
  GetOption({this.name});

  /// Parse from a json
  GetOption.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getOption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}