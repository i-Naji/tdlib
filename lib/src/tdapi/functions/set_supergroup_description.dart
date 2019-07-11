part of '../tdapi.dart';

class SetSupergroupDescription extends TLFunction {
  int supergroupId;
  String description;
  dynamic extra;

  /// Changes information about a supergroup or channel; requires appropriate administrator rights.
  ///[supergroupId] Identifier of the supergroup or channel .
  /// [paramDescription] New supergroup or channel description; 0-255 characters
  SetSupergroupDescription({this.supergroupId, this.description});

  /// Parse from a json
  SetSupergroupDescription.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "description": this.description,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "setSupergroupDescription";

  @override
  String getConstructor() => CONSTRUCTOR;
}
