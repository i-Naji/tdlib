part of '../tdapi.dart';

class JsonValue extends TdObject {
  

  /// Represents a JSON value
  JsonValue();

  /// a JsonValue return type can be :
  /// * JsonValueNull
  /// * JsonValueBoolean
  /// * JsonValueNumber
  /// * JsonValueString
  /// * JsonValueArray
  /// * JsonValueObject
  factory JsonValue.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case JsonValueNull.CONSTRUCTOR:
        return JsonValueNull.fromJson(json);
      case JsonValueBoolean.CONSTRUCTOR:
        return JsonValueBoolean.fromJson(json);
      case JsonValueNumber.CONSTRUCTOR:
        return JsonValueNumber.fromJson(json);
      case JsonValueString.CONSTRUCTOR:
        return JsonValueString.fromJson(json);
      case JsonValueArray.CONSTRUCTOR:
        return JsonValueArray.fromJson(json);
      case JsonValueObject.CONSTRUCTOR:
        return JsonValueObject.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'jsonValue';
}

class JsonValueNull extends JsonValue {
  dynamic extra;

  /// Represents a null JSON value
  JsonValueNull();

  /// Parse from a json
  JsonValueNull.fromJson(Map<String, dynamic> json)  {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'jsonValueNull';
}

class JsonValueBoolean extends JsonValue {
  bool value;
  dynamic extra;

  /// Represents a boolean JSON value. 
  /// [value] The value
  JsonValueBoolean({this.value});

  /// Parse from a json
  JsonValueBoolean.fromJson(Map<String, dynamic> json)  {
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

  static const CONSTRUCTOR = 'jsonValueBoolean';
}

class JsonValueNumber extends JsonValue {
  double value;
  dynamic extra;

  /// Represents a numeric JSON value. 
  /// [value] The value
  JsonValueNumber({this.value});

  /// Parse from a json
  JsonValueNumber.fromJson(Map<String, dynamic> json)  {
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

  static const CONSTRUCTOR = 'jsonValueNumber';
}

class JsonValueString extends JsonValue {
  String value;
  dynamic extra;

  /// Represents a string JSON value. 
  /// [value] The value
  JsonValueString({this.value});

  /// Parse from a json
  JsonValueString.fromJson(Map<String, dynamic> json)  {
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

  static const CONSTRUCTOR = 'jsonValueString';
}

class JsonValueArray extends JsonValue {
  List<List<JsonValue>> values;
  dynamic extra;

  /// Represents a JSON array. 
  /// [values] The list of array elements
  JsonValueArray({this.values});

  /// Parse from a json
  JsonValueArray.fromJson(Map<String, dynamic> json)  {
    this.values = List<List<JsonValue>>.from((json['values'] ?? []).map((item) => List<JsonValue>.from((item ?? []).map((innerItem) => JsonValue.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "values": this.values.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'jsonValueArray';
}

class JsonValueObject extends JsonValue {
  List<List<JsonObjectMember>> members;
  dynamic extra;

  /// Represents a JSON object. 
  /// [members] The list of object members
  JsonValueObject({this.members});

  /// Parse from a json
  JsonValueObject.fromJson(Map<String, dynamic> json)  {
    this.members = List<List<JsonObjectMember>>.from((json['members'] ?? []).map((item) => List<JsonObjectMember>.from((item ?? []).map((innerItem) => JsonObjectMember.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "members": this.members.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'jsonValueObject';
}