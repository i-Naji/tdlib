part of '../tdapi.dart';

class LanguagePackStringValue extends TdObject {

  /// Represents the value of a string in a language pack
  const LanguagePackStringValue();
  
  /// a LanguagePackStringValue return type can be :
  /// * [LanguagePackStringValueOrdinary]
  /// * [LanguagePackStringValuePluralized]
  /// * [LanguagePackStringValueDeleted]
  factory LanguagePackStringValue.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case LanguagePackStringValueOrdinary.CONSTRUCTOR:
        return LanguagePackStringValueOrdinary.fromJson(json);
      case LanguagePackStringValuePluralized.CONSTRUCTOR:
        return LanguagePackStringValuePluralized.fromJson(json);
      case LanguagePackStringValueDeleted.CONSTRUCTOR:
        return LanguagePackStringValueDeleted.fromJson(json);
      default:
        return const LanguagePackStringValue();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  LanguagePackStringValue copyWith() => const LanguagePackStringValue();

  static const CONSTRUCTOR = 'languagePackStringValue';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LanguagePackStringValueOrdinary extends LanguagePackStringValue {

  /// An ordinary language pack string
  const LanguagePackStringValueOrdinary({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// [value] String value
  final String value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory LanguagePackStringValueOrdinary.fromJson(Map<String, dynamic> json) => LanguagePackStringValueOrdinary(
    value: json['value'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "value": value,
    };
  }
  
  @override
  LanguagePackStringValueOrdinary copyWith({
    String? value,
    dynamic extra,
    int? clientId,
  }) => LanguagePackStringValueOrdinary(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'languagePackStringValueOrdinary';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LanguagePackStringValuePluralized extends LanguagePackStringValue {

  /// A language pack string which has different forms based on the number of some object it mentions. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more info
  const LanguagePackStringValuePluralized({
    required this.zeroValue,
    required this.oneValue,
    required this.twoValue,
    required this.fewValue,
    required this.manyValue,
    required this.otherValue,
    this.extra,
    this.clientId,
  });
  
  /// [zeroValue] Value for zero objects
  final String zeroValue;

  /// [oneValue] Value for one object 
  final String oneValue;

  /// [twoValue] Value for two objects
  final String twoValue;

  /// [fewValue] Value for few objects
  final String fewValue;

  /// [manyValue] Value for many objects 
  final String manyValue;

  /// [otherValue] Default value
  final String otherValue;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory LanguagePackStringValuePluralized.fromJson(Map<String, dynamic> json) => LanguagePackStringValuePluralized(
    zeroValue: json['zero_value'],
    oneValue: json['one_value'],
    twoValue: json['two_value'],
    fewValue: json['few_value'],
    manyValue: json['many_value'],
    otherValue: json['other_value'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "zero_value": zeroValue,
      "one_value": oneValue,
      "two_value": twoValue,
      "few_value": fewValue,
      "many_value": manyValue,
      "other_value": otherValue,
    };
  }
  
  @override
  LanguagePackStringValuePluralized copyWith({
    String? zeroValue,
    String? oneValue,
    String? twoValue,
    String? fewValue,
    String? manyValue,
    String? otherValue,
    dynamic extra,
    int? clientId,
  }) => LanguagePackStringValuePluralized(
    zeroValue: zeroValue ?? this.zeroValue,
    oneValue: oneValue ?? this.oneValue,
    twoValue: twoValue ?? this.twoValue,
    fewValue: fewValue ?? this.fewValue,
    manyValue: manyValue ?? this.manyValue,
    otherValue: otherValue ?? this.otherValue,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'languagePackStringValuePluralized';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LanguagePackStringValueDeleted extends LanguagePackStringValue {

  /// A deleted language pack string, the value must be taken from the built-in English language pack
  const LanguagePackStringValueDeleted({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory LanguagePackStringValueDeleted.fromJson(Map<String, dynamic> json) => LanguagePackStringValueDeleted(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  LanguagePackStringValueDeleted copyWith({
    dynamic extra,
    int? clientId,
  }) => LanguagePackStringValueDeleted(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'languagePackStringValueDeleted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
