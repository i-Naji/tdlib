part of '../tdapi.dart';

class Date implements TdObject {
  int day;
  int month;
  int year;

  /// Represents a date according to the Gregorian calendar.
  ///[day] Day of the month, 1-31 .
  /// [month] Month, 1-12 .
  /// [year] Year, 1-9999
  Date({this.day, this.month, this.year});

  /// Parse from a json
  Date.fromJson(Map<String, dynamic> json) {
    this.day = json['day'];
    this.month = json['month'];
    this.year = json['year'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "day": this.day,
      "month": this.month,
      "year": this.year
    };
  }

  static const String CONSTRUCTOR = "date";

  @override
  String getConstructor() => CONSTRUCTOR;
}
