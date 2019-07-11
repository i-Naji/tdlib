part of '../tdapi.dart';

class JsonValue implements TLObject {
  /// Represents a JSON value
  JsonValue();

  /// a JsonValue return type can be :
  /// * JsonValueNull
  /// * JsonValueBoolean
  /// * JsonValueNumber
  /// * JsonValueString
  /// * JsonValueArray
  /// * JsonValueObject
  factory JsonValue.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
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
    return {};
  }

  static const String CONSTRUCTOR = "jsonValue";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueNull implements JsonValue {
  dynamic extra;

  /// Represents a null JSON value.
  ///
  JsonValueNull();

  /// Parse from a json
  JsonValueNull.fromJson(Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "jsonValueNull";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueBoolean implements JsonValue {
  bool value;
  dynamic extra;

  /// Represents a boolean JSON value.
  ///[value] The value
  JsonValueBoolean({this.value});

  /// Parse from a json
  JsonValueBoolean.fromJson(Map<String, dynamic> json) {
    this.value = json['value'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "value": this.value};
  }

  static const String CONSTRUCTOR = "jsonValueBoolean";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueNumber implements JsonValue {
  double value;
  dynamic extra;

  /// Represents a numeric JSON value.
  ///[value] The value
  JsonValueNumber({this.value});

  /// Parse from a json
  JsonValueNumber.fromJson(Map<String, dynamic> json) {
    this.value = json['value'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "value": this.value};
  }

  static const String CONSTRUCTOR = "jsonValueNumber";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueString implements JsonValue {
  String value;
  dynamic extra;

  /// Represents a string JSON value.
  ///[value] The value
  JsonValueString({this.value});

  /// Parse from a json
  JsonValueString.fromJson(Map<String, dynamic> json) {
    this.value = json['value'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "value": this.value};
  }

  static const String CONSTRUCTOR = "jsonValueString";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueArray implements JsonValue {
  List values;
  dynamic extra;

  /// Represents a JSON array.
  ///[values] The list of array elements
  JsonValueArray({this.values});

  /// Parse from a json
  JsonValueArray.fromJson(Map<String, dynamic> json) {
    this.values = (json['values'] ?? [])
        .map((listValue) => JsonValue.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "values": this.values.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "jsonValueArray";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueObject implements JsonValue {
  List<JsonObjectMember> members;
  dynamic extra;

  /// Represents a JSON object.
  ///[members] The list of object members
  JsonValueObject({this.members});

  /// Parse from a json
  JsonValueObject.fromJson(Map<String, dynamic> json) {
    this.members = List<JsonObjectMember>.from((json['members'] ?? [])
        .map((listValue) => JsonObjectMember.fromJson(listValue))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "members": this.members.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "jsonValueObject";

  @override
  String getConstructor() => CONSTRUCTOR;
}
