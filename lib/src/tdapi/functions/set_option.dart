part of '../tdapi.dart';

class SetOption extends TdFunction {
  String name;
  var value;
  dynamic extra;

  /// Sets the value of an option. (Check the list of available options on https.
  ///[name] The name of the option .
  /// [value] The new value of the option
  SetOption({this.name, this.value});

  /// Parse from a json
  SetOption.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
      "value": this.value.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "setOption";

  @override
  String getConstructor() => CONSTRUCTOR;
}
