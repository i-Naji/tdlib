part of 'tdapi.dart';

abstract class TLObject {
  TLObject.fromJson();
  static const String CONSTRUCTOR = 'object';
  Map<String, dynamic> toJson();
  String getConstructor();
}
