part of 'tdapi.dart';

abstract class TdObject {
  static const CONSTRUCTOR = 'object';
  TdObject();
  TdObject.fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();
  String getConstructor() => CONSTRUCTOR;
}
