part of '../tdapi.dart';

class Updates extends TdObject {
  List<List<Update>> updates;
  dynamic extra;

  /// Contains a list of updates. 
  /// [updates] List of updates
  Updates({this.updates});

  /// Parse from a json
  Updates.fromJson(Map<String, dynamic> json)  {
    this.updates = List<List<Update>>.from((json['updates'] ?? []).map((item) => List<Update>.from((item ?? []).map((innerItem) => Update.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "updates": this.updates.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updates';
}