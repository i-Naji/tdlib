part of '../tdapi.dart';

class InputIdentityDocument extends TdObject {

  /// An identity document to be saved to Telegram Passport
  const InputIdentityDocument({
    required this.number,
    this.expiryDate,
    required this.frontSide,
    this.reverseSide,
    this.selfie,
    required this.translation,
  });
  
  /// [number] Document number; 1-24 characters 
  final String number;

  /// [expiryDate] Document expiry date; pass null if not applicable 
  final Date? expiryDate;

  /// [frontSide] Front side of the document
  final InputFile frontSide;

  /// [reverseSide] Reverse side of the document; only for driver license and identity card; pass null otherwise
  final InputFile? reverseSide;

  /// [selfie] Selfie with the document; pass null if unavailable 
  final InputFile? selfie;

  /// [translation] List of files containing a certified English translation of the document
  final List<InputFile> translation;
  
  /// Parse from a json
  factory InputIdentityDocument.fromJson(Map<String, dynamic> json) => InputIdentityDocument(
    number: json['number'],
    expiryDate: json['expiry_date'] == null ? null : Date.fromJson(json['expiry_date']),
    frontSide: InputFile.fromJson(json['front_side']),
    reverseSide: json['reverse_side'] == null ? null : InputFile.fromJson(json['reverse_side']),
    selfie: json['selfie'] == null ? null : InputFile.fromJson(json['selfie']),
    translation: List<InputFile>.from((json['translation'] ?? []).map((item) => InputFile.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "number": number,
      "expiry_date": expiryDate?.toJson(),
      "front_side": frontSide.toJson(),
      "reverse_side": reverseSide?.toJson(),
      "selfie": selfie?.toJson(),
      "translation": translation.map((i) => i.toJson()).toList(),
    };
  }
  
  InputIdentityDocument copyWith({
    String? number,
    Date? expiryDate,
    InputFile? frontSide,
    InputFile? reverseSide,
    InputFile? selfie,
    List<InputFile>? translation,
  }) => InputIdentityDocument(
    number: number ?? this.number,
    expiryDate: expiryDate ?? this.expiryDate,
    frontSide: frontSide ?? this.frontSide,
    reverseSide: reverseSide ?? this.reverseSide,
    selfie: selfie ?? this.selfie,
    translation: translation ?? this.translation,
  );

  static const CONSTRUCTOR = 'inputIdentityDocument';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
