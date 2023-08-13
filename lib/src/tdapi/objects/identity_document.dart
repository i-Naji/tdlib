part of '../tdapi.dart';

class IdentityDocument extends TdObject {
  /// An identity document
  const IdentityDocument({
    required this.number,
    this.expirationDate,
    required this.frontSide,
    this.reverseSide,
    this.selfie,
    required this.translation,
  });

  /// [number] Document number; 1-24 characters
  final String number;

  /// [expirationDate] Document expiration date; may be null if not applicable
  final Date? expirationDate;

  /// [frontSide] Front side of the document
  final DatedFile frontSide;

  /// [reverseSide] Reverse side of the document; only for driver license and identity card; may be null
  final DatedFile? reverseSide;

  /// [selfie] Selfie with the document; may be null
  final DatedFile? selfie;

  /// [translation] List of files containing a certified English translation of the document
  final List<DatedFile> translation;

  /// Parse from a json
  factory IdentityDocument.fromJson(Map<String, dynamic> json) =>
      IdentityDocument(
        number: json['number'],
        expirationDate: json['expiration_date'] == null
            ? null
            : Date.fromJson(json['expiration_date']),
        frontSide: DatedFile.fromJson(json['front_side']),
        reverseSide: json['reverse_side'] == null
            ? null
            : DatedFile.fromJson(json['reverse_side']),
        selfie:
            json['selfie'] == null ? null : DatedFile.fromJson(json['selfie']),
        translation: List<DatedFile>.from((json['translation'] ?? [])
            .map((item) => DatedFile.fromJson(item))
            .toList()),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "number": number,
      "expiration_date": expirationDate?.toJson(),
      "front_side": frontSide.toJson(),
      "reverse_side": reverseSide?.toJson(),
      "selfie": selfie?.toJson(),
      "translation": translation.map((i) => i.toJson()).toList(),
    };
  }

  IdentityDocument copyWith({
    String? number,
    Date? expirationDate,
    DatedFile? frontSide,
    DatedFile? reverseSide,
    DatedFile? selfie,
    List<DatedFile>? translation,
  }) =>
      IdentityDocument(
        number: number ?? this.number,
        expirationDate: expirationDate ?? this.expirationDate,
        frontSide: frontSide ?? this.frontSide,
        reverseSide: reverseSide ?? this.reverseSide,
        selfie: selfie ?? this.selfie,
        translation: translation ?? this.translation,
      );

  static const CONSTRUCTOR = 'identityDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}
