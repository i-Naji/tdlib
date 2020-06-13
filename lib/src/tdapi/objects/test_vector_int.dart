part of '../tdapi.dart';

class TestVectorInt extends TdObject {
  List<List<int>> value;
  dynamic extra;

  /// A simple object containing a vector of numbers; for testing only. 
  /// [value] Vector of numbers
  TestVectorInt({this.value});

  /// Parse from a json
  TestVectorInt.fromJson(Map<String, dynamic> json)  {
    this.value = List<List<int>>.from((json['value'] ?? []).map((item) => List<int>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value.map((i) => i.map((ii) => ii).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'testVectorInt';
}