part of '../tdapi.dart';

class TextEntities implements TdObject {
  List<TextEntity> entities;
  dynamic extra;

  /// Contains a list of text entities.
  ///[entities] List of text entities
  TextEntities({this.entities});

  /// Parse from a json
  TextEntities.fromJson(Map<String, dynamic> json) {
    this.entities = List<TextEntity>.from((json['entities'] ?? [])
        .map((listValue) => TextEntity.fromJson(listValue))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "entities": this.entities.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "textEntities";

  @override
  String getConstructor() => CONSTRUCTOR;
}
