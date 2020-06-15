part of '../tdapi.dart';

class DateRange extends TdObject {
  int startDate;
  int endDate;

  /// Represents a date range. 
  /// [startDate] Point in time (Unix timestamp) at which the date range begins . 
  /// [endDate] Point in time (Unix timestamp) at which the date range ends
  DateRange({this.startDate,
    this.endDate});

  /// Parse from a json
  DateRange.fromJson(Map<String, dynamic> json)  {
    this.startDate = json['start_date'];
    this.endDate = json['end_date'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "start_date": this.startDate,
      "end_date": this.endDate,
    };
  }

  static const CONSTRUCTOR = 'dateRange';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}