part of 'tdapi.dart';

abstract class TdObject {
  TdObject.fromJson();
  static const String CONSTRUCTOR = 'object';
  Map<String, dynamic> toJson();
  String getConstructor();
}
