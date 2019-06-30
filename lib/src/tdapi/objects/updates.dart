part of '../tdapi.dart';

class Updates implements TLObject {
  List updates;
  dynamic extra;

  /// Contains a list of updates.
  ///[updates] List of updates
  Updates({this.updates});

  /// Parse from a json
  Updates.fromJson(Map<String, dynamic> json) {
    this.updates = (json['updates'] ?? [])
        .map((listValue) => Update.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'updates': this.updates.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'updates';

  @override
  String getConstructor() => CONSTRUCTOR;
}
