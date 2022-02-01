part of '../tdapi.dart';

class DateRange extends TdObject {

  /// Represents a date range
  const DateRange({
    required this.startDate,
    required this.endDate,
  });
  
  /// [startDate] Point in time (Unix timestamp) at which the date range begins 
  final int startDate;

  /// [endDate] Point in time (Unix timestamp) at which the date range ends
  final int endDate;
  
  /// Parse from a json
  factory DateRange.fromJson(Map<String, dynamic> json) => DateRange(
    startDate: json['start_date'],
    endDate: json['end_date'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "start_date": startDate,
      "end_date": endDate,
    };
  }
  
  DateRange copyWith({
    int? startDate,
    int? endDate,
  }) => DateRange(
    startDate: startDate ?? this.startDate,
    endDate: endDate ?? this.endDate,
  );

  static const CONSTRUCTOR = 'dateRange';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
