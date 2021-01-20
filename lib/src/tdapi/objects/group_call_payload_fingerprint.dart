part of '../tdapi.dart';

class GroupCallPayloadFingerprint extends TdObject {
  /// Describes a payload fingerprint for interaction with tgcalls
  GroupCallPayloadFingerprint({this.hash, this.setup, this.fingerprint});

  /// [hash] Value of the field hash
  String hash;

  /// [setup] Value of the field setup
  String setup;

  /// [fingerprint] Value of the field fingerprint
  String fingerprint;

  /// Parse from a json
  GroupCallPayloadFingerprint.fromJson(Map<String, dynamic> json) {
    this.hash = json['hash'];
    this.setup = json['setup'];
    this.fingerprint = json['fingerprint'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "hash": this.hash,
      "setup": this.setup,
      "fingerprint": this.fingerprint,
    };
  }

  static const CONSTRUCTOR = 'groupCallPayloadFingerprint';

  @override
  String getConstructor() => CONSTRUCTOR;
}
