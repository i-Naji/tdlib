part of 'tdapi.dart';

abstract class TdObject {
  static const String CONSTRUCTOR = 'object';
  Map<String, dynamic> toJson();
  String getConstructor();
}
