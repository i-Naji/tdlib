part of 'tdapi.dart';

class TdObject {
  static const CONSTRUCTOR = 'object';
  TdObject();
  TdObject.fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson() {
    return {};
  }

  String getConstructor() => CONSTRUCTOR;
}
