part of '../tdapi.dart';

class GroupCallJoinResponse extends TdObject {
  /// Describes a join response for interaction with tgcalls
  GroupCallJoinResponse({this.payload, this.candidates});

  /// [payload] Join response payload to pass to tgcalls
  GroupCallPayload payload;

  /// [candidates] Join response candidates to pass to tgcalls
  List<GroupCallJoinResponseCandidate> candidates;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GroupCallJoinResponse.fromJson(Map<String, dynamic> json) {
    this.payload =
        GroupCallPayload.fromJson(json['payload'] ?? <String, dynamic>{});
    this.candidates = List<GroupCallJoinResponseCandidate>.from(
        (json['candidates'] ?? [])
            .map((item) => GroupCallJoinResponseCandidate.fromJson(
                item ?? <String, dynamic>{}))
            .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "payload": this.payload == null ? null : this.payload.toJson(),
      "candidates": this.candidates.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'groupCallJoinResponse';

  @override
  String getConstructor() => CONSTRUCTOR;
}
