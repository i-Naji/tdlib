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
  
  @override
  String getConstructor() => CONSTRUCTOR;
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
  
  @override
  String getConstructor() => CONSTRUCTOR;
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
  
  @override
  String getConstructor() => CONSTRUCTOR;
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
  
  @override
  String getConstructor() => CONSTRUCTOR;
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
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueArray extends JsonValue {
  List<JsonValue> values;
  dynamic extra;

  /// Represents a JSON array. 
  /// [values] The list of array elements
  JsonValueArray({this.values});

  /// Parse from a json
  JsonValueArray.fromJson(Map<String, dynamic> json)  {
    this.values = List<JsonValue>.from((json['values'] ?? []).map((item) => JsonValue.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "values": this.values.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'jsonValueArray';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueObject extends JsonValue {
  List<JsonObjectMember> members;
  dynamic extra;

  /// Represents a JSON object. 
  /// [members] The list of object members
  JsonValueObject({this.members});

  /// Parse from a json
  JsonValueObject.fromJson(Map<String, dynamic> json)  {
    this.members = List<JsonObjectMember>.from((json['members'] ?? []).map((item) => JsonObjectMember.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "members": this.members.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'jsonValueObject';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}