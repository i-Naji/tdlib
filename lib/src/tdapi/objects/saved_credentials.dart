part of '../tdapi.dart';

class SavedCredentials implements TLObject {
  String id;
  String title;

  /// Contains information about saved card credentials.
  ///[id] Unique identifier of the saved credentials .
  /// [title] Title of the saved credentials
  SavedCredentials({this.id, this.title});

  /// Parse from a json
  SavedCredentials.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.title = json['title'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "id": this.id, "title": this.title};
  }

  static const String CONSTRUCTOR = "savedCredentials";

  @override
  String getConstructor() => CONSTRUCTOR;
}
