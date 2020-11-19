part of '../tdapi.dart';

class Background extends TdObject {
  /// Describes a chat background
  Background(
      {this.id,
      this.isDefault,
      this.isDark,
      this.name,
      this.document,
      this.type});

  /// [id] Unique background identifier
  int id;

  /// [isDefault] True, if this is one of default backgrounds
  bool isDefault;

  /// [isDark] True, if the background is dark and is recommended to be used with dark theme
  bool isDark;

  /// [name] Unique background name
  String name;

  /// [document] Document with the background; may be null. Null only for filled backgrounds
  Document document;

  /// [type] Type of the background
  BackgroundType type;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  Background.fromJson(Map<String, dynamic> json) {
    this.id = int.tryParse(json['id'] ?? "");
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
      "document": this.document == null ? null : this.document.toJson(),
      "type": this.type == null ? null : this.type.toJson(),
    };
  }

  static const CONSTRUCTOR = 'background';

  @override
  String getConstructor() => CONSTRUCTOR;
}
