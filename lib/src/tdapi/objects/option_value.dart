part of '../tdapi.dart';

class OptionValue extends TdObject {

  /// Represents the value of an option
  const OptionValue();
  
  /// a OptionValue return type can be :
  /// * [OptionValueBoolean]
  /// * [OptionValueEmpty]
  /// * [OptionValueInteger]
  /// * [OptionValueString]
  factory OptionValue.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case OptionValueBoolean.CONSTRUCTOR:
        return OptionValueBoolean.fromJson(json);
      case OptionValueEmpty.CONSTRUCTOR:
        return OptionValueEmpty.fromJson(json);
      case OptionValueInteger.CONSTRUCTOR:
        return OptionValueInteger.fromJson(json);
      case OptionValueString.CONSTRUCTOR:
        return OptionValueString.fromJson(json);
      default:
        return const OptionValue();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  OptionValue copyWith() => const OptionValue();

  static const CONSTRUCTOR = 'optionValue';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class OptionValueBoolean extends OptionValue {

  /// Represents a boolean option
  const OptionValueBoolean({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// [value] The value of the option
  final bool value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory OptionValueBoolean.fromJson(Map<String, dynamic> json) => OptionValueBoolean(
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
  OptionValueBoolean copyWith({
    bool? value,
    dynamic extra,
    int? clientId,
  }) => OptionValueBoolean(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'optionValueBoolean';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class OptionValueEmpty extends OptionValue {

  /// Represents an unknown option or an option which has a default value
  const OptionValueEmpty({
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
  factory OptionValueEmpty.fromJson(Map<String, dynamic> json) => OptionValueEmpty(
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
  OptionValueEmpty copyWith({
    dynamic extra,
    int? clientId,
  }) => OptionValueEmpty(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'optionValueEmpty';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class OptionValueInteger extends OptionValue {

  /// Represents an integer option
  const OptionValueInteger({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// [value] The value of the option
  final int value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory OptionValueInteger.fromJson(Map<String, dynamic> json) => OptionValueInteger(
    value: int.parse(json['value']),
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
  OptionValueInteger copyWith({
    int? value,
    dynamic extra,
    int? clientId,
  }) => OptionValueInteger(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'optionValueInteger';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class OptionValueString extends OptionValue {

  /// Represents a string option
  const OptionValueString({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// [value] The value of the option
  final String value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory OptionValueString.fromJson(Map<String, dynamic> json) => OptionValueString(
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
  OptionValueString copyWith({
    String? value,
    dynamic extra,
    int? clientId,
  }) => OptionValueString(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'optionValueString';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
