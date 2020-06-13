part of '../tdapi.dart';

class TextEntities extends TdObject {
  List<List<TextEntity>> entities;
  dynamic extra;

  /// Contains a list of text entities. 
  /// [entities] List of text entities
  TextEntities({this.entities});

  /// Parse from a json
  TextEntities.fromJson(Map<String, dynamic> json)  {
    this.entities = List<List<TextEntity>>.from((json['entities'] ?? []).map((item) => List<TextEntity>.from((item ?? []).map((innerItem) => TextEntity.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "entities": this.entities.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'textEntities';
}