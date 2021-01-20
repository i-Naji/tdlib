part of '../tdapi.dart';

class GroupCallPayload extends TdObject {
  /// Describes a payload for interaction with tgcalls
  GroupCallPayload({this.ufrag, this.pwd, this.fingerprints});

  /// [ufrag] Value of the field ufrag
  String ufrag;

  /// [pwd] Value of the field pwd
  String pwd;

  /// [fingerprints] The list of fingerprints
  List<GroupCallPayloadFingerprint> fingerprints;

  /// Parse from a json
  GroupCallPayload.fromJson(Map<String, dynamic> json) {
    this.ufrag = json['ufrag'];
    this.pwd = json['pwd'];
    this.fingerprints = List<GroupCallPayloadFingerprint>.from(
        (json['fingerprints'] ?? [])
            .map((item) => GroupCallPayloadFingerprint.fromJson(
                item ?? <String, dynamic>{}))
            .toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "ufrag": this.ufrag,
      "pwd": this.pwd,
      "fingerprints": this.fingerprints.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'groupCallPayload';

  @override
  String getConstructor() => CONSTRUCTOR;
}
