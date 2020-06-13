part of '../tdapi.dart';

class LogTags extends TdObject {
  List<List<String>> tags;
  dynamic extra;

  /// Contains a list of available TDLib internal log tags. 
  /// [tags] List of log tags
  LogTags({this.tags});

  /// Parse from a json
  LogTags.fromJson(Map<String, dynamic> json)  {
    this.tags = List<List<String>>.from((json['tags'] ?? []).map((item) => List<String>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "tags": this.tags.map((i) => i.map((ii) => ii).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'logTags';
}