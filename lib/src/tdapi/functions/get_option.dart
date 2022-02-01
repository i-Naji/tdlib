part of '../tdapi.dart';

class GetOption extends TdFunction {

  /// Returns the value of an option by its name. (Check the list of available options on https://core.telegram.org/tdlib/options.) Can be called before authorization
  const GetOption({
    required this.name,
  });
  
  /// [name] The name of the option
  final String name;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "@extra": extra,
    };
  }
  
  GetOption copyWith({
    String? name,
  }) => GetOption(
    name: name ?? this.name,
  );

  static const CONSTRUCTOR = 'getOption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
