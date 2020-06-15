part of '../tdapi.dart';

class LanguagePackStringValue extends TdObject {
  

  /// Represents the value of a string in a language pack
  LanguagePackStringValue();

  /// a LanguagePackStringValue return type can be :
  /// * LanguagePackStringValueOrdinary
  /// * LanguagePackStringValuePluralized
  /// * LanguagePackStringValueDeleted
  factory LanguagePackStringValue.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case LanguagePackStringValueOrdinary.CONSTRUCTOR:
        return LanguagePackStringValueOrdinary.fromJson(json);
      case LanguagePackStringValuePluralized.CONSTRUCTOR:
        return LanguagePackStringValuePluralized.fromJson(json);
      case LanguagePackStringValueDeleted.CONSTRUCTOR:
        return LanguagePackStringValueDeleted.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'languagePackStringValue';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class LanguagePackStringValueOrdinary extends LanguagePackStringValue {
  String value;
  dynamic extra;

  /// An ordinary language pack string. 
  /// [value] String value
  LanguagePackStringValueOrdinary({this.value});

  /// Parse from a json
  LanguagePackStringValueOrdinary.fromJson(Map<String, dynamic> json)  {
    this.value = json['value'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value,
    };
  }

  static const CONSTRUCTOR = 'languagePackStringValueOrdinary';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class LanguagePackStringValuePluralized extends LanguagePackStringValue {
  String zeroValue;
  String oneValue;
  String twoValue;
  String fewValue;
  String manyValue;
  String otherValue;
  dynamic extra;

  /// A language pack string which has different forms based on the number of some object it mentions. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more info. 
  /// [zeroValue] Value for zero objects. 
  /// [oneValue] Value for one object . 
  /// [twoValue] Value for two objects. 
  /// [fewValue] Value for few objects. 
  /// [manyValue] Value for many objects . 
  /// [otherValue] Default value
  LanguagePackStringValuePluralized({this.zeroValue,
    this.oneValue,
    this.twoValue,
    this.fewValue,
    this.manyValue,
    this.otherValue});

  /// Parse from a json
  LanguagePackStringValuePluralized.fromJson(Map<String, dynamic> json)  {
    this.zeroValue = json['zero_value'];
    this.oneValue = json['one_value'];
    this.twoValue = json['two_value'];
    this.fewValue = json['few_value'];
    this.manyValue = json['many_value'];
    this.otherValue = json['other_value'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "zero_value": this.zeroValue,
      "one_value": this.oneValue,
      "two_value": this.twoValue,
      "few_value": this.fewValue,
      "many_value": this.manyValue,
      "other_value": this.otherValue,
    };
  }

  static const CONSTRUCTOR = 'languagePackStringValuePluralized';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class LanguagePackStringValueDeleted extends LanguagePackStringValue {
  dynamic extra;

  /// A deleted language pack string, the value should be taken from the built-in english language pack
  LanguagePackStringValueDeleted();

  /// Parse from a json
  LanguagePackStringValueDeleted.fromJson(Map<String, dynamic> json)  {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'languagePackStringValueDeleted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}