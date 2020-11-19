part of '../tdapi.dart';

class FilePart extends TdObject {
  /// Contains a part of a file
  FilePart({this.data});

  /// [data] File bytes
  String data;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  FilePart.fromJson(Map<String, dynamic> json) {
    this.data = json['data'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "data": this.data,
    };
  }

  static const CONSTRUCTOR = 'filePart';

  @override
  String getConstructor() => CONSTRUCTOR;
}
