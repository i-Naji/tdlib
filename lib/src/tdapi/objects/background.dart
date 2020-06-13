part of '../tdapi.dart';

class Background extends TdObject {
  int id;
  bool isDefault;
  bool isDark;
  String name;
  Document document;
  BackgroundType type;
  dynamic extra;

  /// Describes a chat background. 
  /// [id] Unique background identifier. 
  /// [isDefault] True, if this is one of default backgrounds. 
  /// [isDark] True, if the background is dark and is recommended to be used with dark theme. 
  /// [name] Unique background name. 
  /// [document] Document with the background; may be null. Null only for filled backgrounds. 
  /// [type] Type of the background
  Background({this.id,
    this.isDefault,
    this.isDark,
    this.name,
    this.document,
    this.type});

  /// Parse from a json
  Background.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.isDefault = json['is_default'];
    this.isDark = json['is_dark'];
    this.name = json['name'];
    this.document = Document.fromJson(json['document'] ?? <String, dynamic>{});
    this.type = BackgroundType.fromJson(json['type'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "is_default": this.isDefault,
      "is_dark": this.isDark,
      "name": this.name,
      "document": this.document.toJson(),
      "type": this.type.toJson(),
    };
  }

  static const CONSTRUCTOR = 'background';
}