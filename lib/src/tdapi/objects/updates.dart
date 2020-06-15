part of '../tdapi.dart';

class Updates extends TdObject {
  List<Update> updates;
  dynamic extra;

  /// Contains a list of updates. 
  /// [updates] List of updates
  Updates({this.updates});

  /// Parse from a json
  Updates.fromJson(Map<String, dynamic> json)  {
    this.updates = List<Update>.from((json['updates'] ?? []).map((item) => Update.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "updates": this.updates.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updates';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}