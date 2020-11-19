part of '../tdapi.dart';

class DatedFile extends TdObject {
  /// File with the date it was uploaded
  DatedFile({this.file, this.date});

  /// [file] The file
  File file;

  /// [date] Point in time (Unix timestamp) when the file was uploaded
  int date;

  /// Parse from a json
  DatedFile.fromJson(Map<String, dynamic> json) {
    this.file = File.fromJson(json['file'] ?? <String, dynamic>{});
    this.date = json['date'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file": this.file == null ? null : this.file.toJson(),
      "date": this.date,
    };
  }

  static const CONSTRUCTOR = 'datedFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
