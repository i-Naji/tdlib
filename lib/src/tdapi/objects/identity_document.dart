part of '../tdapi.dart';

class IdentityDocument extends TdObject {
  /// An identity document
  IdentityDocument(
      {this.number,
      this.expiryDate,
      this.frontSide,
      this.reverseSide,
      this.selfie,
      this.translation});

  /// [number] Document number; 1-24 characters
  String number;

  /// [expiryDate] Document expiry date; may be null
  Date expiryDate;

  /// [frontSide] Front side of the document
  DatedFile frontSide;

  /// [reverseSide] Reverse side of the document; only for driver license and identity card
  DatedFile reverseSide;

  /// [selfie] Selfie with the document; may be null
  DatedFile selfie;

  /// [translation] List of files containing a certified English translation of the document
  List<DatedFile> translation;

  /// Parse from a json
  IdentityDocument.fromJson(Map<String, dynamic> json) {
    this.number = json['number'];
    this.expiryDate = Date.fromJson(json['expiry_date'] ?? <String, dynamic>{});
    this.frontSide =
        DatedFile.fromJson(json['front_side'] ?? <String, dynamic>{});
    this.reverseSide =
        DatedFile.fromJson(json['reverse_side'] ?? <String, dynamic>{});
    this.selfie = DatedFile.fromJson(json['selfie'] ?? <String, dynamic>{});
    this.translation = List<DatedFile>.from((json['translation'] ?? [])
        .map((item) => DatedFile.fromJson(item ?? <String, dynamic>{}))
        .toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "number": this.number,
      "expiry_date": this.expiryDate == null ? null : this.expiryDate.toJson(),
      "front_side": this.frontSide == null ? null : this.frontSide.toJson(),
      "reverse_side":
          this.reverseSide == null ? null : this.reverseSide.toJson(),
      "selfie": this.selfie == null ? null : this.selfie.toJson(),
      "translation": this.translation.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'identityDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}
