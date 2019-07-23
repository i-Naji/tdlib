part of 'tdapi.dart';

abstract class TdFunction {
  String constructor;
  Map<String, dynamic> toJson();
  String getConstructor();
}
