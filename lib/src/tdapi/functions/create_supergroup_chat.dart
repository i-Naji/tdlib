part of '../tdapi.dart';

class CreateSupergroupChat extends TLFunction {
  int supergroupId;
  bool force;
  dynamic extra;

  /// Returns an existing chat corresponding to a known supergroup or channel.
  ///[supergroupId] Supergroup or channel identifier .
  /// [force] If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
  CreateSupergroupChat({this.supergroupId, this.force});

  /// Parse from a json
  CreateSupergroupChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "force": this.force,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "createSupergroupChat";

  @override
  String getConstructor() => CONSTRUCTOR;
}
