part of '../tdapi.dart';

class LogTags implements TLObject {
  List<String> tags;
  dynamic extra;

  /// Contains a list of available TDLib internal log tags.
  ///[tags] List of log tags
  LogTags({this.tags});

  /// Parse from a json
  LogTags.fromJson(Map<String, dynamic> json) {
    this.tags = List<String>.from(json['tags'] ?? []);
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "tags": this.tags};
  }

  static const String CONSTRUCTOR = "logTags";

  @override
  String getConstructor() => CONSTRUCTOR;
}
