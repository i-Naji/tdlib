part of '../tdapi.dart';

class FilePart implements TdObject {
  String data;
  dynamic extra;

  /// Contains a part of a file.
  ///[data] File bytes
  FilePart({this.data});

  /// Parse from a json
  FilePart.fromJson(Map<String, dynamic> json) {
    this.data = json['data'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "data": this.data};
  }

  static const String CONSTRUCTOR = "filePart";

  @override
  String getConstructor() => CONSTRUCTOR;
}
