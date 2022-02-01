part of '../tdapi.dart';

class PassportElementsWithErrors extends TdObject {

  /// Contains information about a Telegram Passport elements and corresponding errors
  const PassportElementsWithErrors({
    required this.elements,
    required this.errors,
    this.extra,
    this.clientId,
  });
  
  /// [elements] Telegram Passport elements 
  final List<PassportElement> elements;

  /// [errors] Errors in the elements that are already available
  final List<PassportElementError> errors;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementsWithErrors.fromJson(Map<String, dynamic> json) => PassportElementsWithErrors(
    elements: List<PassportElement>.from((json['elements'] ?? []).map((item) => PassportElement.fromJson(item)).toList()),
    errors: List<PassportElementError>.from((json['errors'] ?? []).map((item) => PassportElementError.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "elements": elements.map((i) => i.toJson()).toList(),
      "errors": errors.map((i) => i.toJson()).toList(),
    };
  }
  
  PassportElementsWithErrors copyWith({
    List<PassportElement>? elements,
    List<PassportElementError>? errors,
    dynamic extra,
    int? clientId,
  }) => PassportElementsWithErrors(
    elements: elements ?? this.elements,
    errors: errors ?? this.errors,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportElementsWithErrors';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
