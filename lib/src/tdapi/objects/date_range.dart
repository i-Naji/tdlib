part of '../tdapi.dart';

class DateRange extends TdObject {
  /// Represents a date range
  DateRange({this.startDate, this.endDate});

  /// [startDate] Point in time (Unix timestamp) at which the date range begins
  int startDate;

  /// [endDate] Point in time (Unix timestamp) at which the date range ends
  int endDate;

  /// Parse from a json
  DateRange.fromJson(Map<String, dynamic> json) {
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
