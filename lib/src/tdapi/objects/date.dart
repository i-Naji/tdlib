part of '../tdapi.dart';

class Date extends TdObject {

  /// Represents a date according to the Gregorian calendar
  const Date({
    required this.day,
    required this.month,
    required this.year,
  });
  
  /// [day] Day of the month; 1-31 
  final int day;

  /// [month] Month; 1-12 
  final int month;

  /// [year] Year; 1-9999
  final int year;
  
  /// Parse from a json
  factory Date.fromJson(Map<String, dynamic> json) => Date(
    day: json['day'],
    month: json['month'],
    year: json['year'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "day": day,
      "month": month,
      "year": year,
    };
  }
  
  Date copyWith({
    int? day,
    int? month,
    int? year,
  }) => Date(
    day: day ?? this.day,
    month: month ?? this.month,
    year: year ?? this.year,
  );

  static const CONSTRUCTOR = 'date';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
