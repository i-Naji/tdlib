part of '../tdapi.dart';

class SetOption extends TdFunction {

  /// Sets the value of an option. (Check the list of available options on https://core.telegram.org/tdlib/options.) Only writable options can be set. Can be called before authorization
  const SetOption({
    required this.name,
    this.value,
  });
  
  /// [name] The name of the option
  final String name;

  /// [value] The new value of the option; pass null to reset option value to a default value
  final OptionValue? value;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "value": value?.toJson(),
      "@extra": extra,
    };
  }
  
  SetOption copyWith({
    String? name,
    OptionValue? value,
  }) => SetOption(
    name: name ?? this.name,
    value: value ?? this.value,
  );

  static const CONSTRUCTOR = 'setOption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
