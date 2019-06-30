part of 'tdapi.dart';

abstract class TLFunction {
  String constructor;
  Map<String, dynamic> toJson();
  String getConstructor();
}
