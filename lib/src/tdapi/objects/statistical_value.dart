part of '../tdapi.dart';

class StatisticalValue extends TdObject {

  /// A value with information about its recent changes
  const StatisticalValue({
    required this.value,
    required this.previousValue,
    required this.growthRatePercentage,
  });
  
  /// [value] The current value 
  final double value;

  /// [previousValue] The value for the previous day 
  final double previousValue;

  /// [growthRatePercentage] The growth rate of the value, as a percentage
  final double growthRatePercentage;
  
  /// Parse from a json
  factory StatisticalValue.fromJson(Map<String, dynamic> json) => StatisticalValue(
    value: json['value'],
    previousValue: json['previous_value'],
    growthRatePercentage: json['growth_rate_percentage'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "value": value,
      "previous_value": previousValue,
      "growth_rate_percentage": growthRatePercentage,
    };
  }
  
  StatisticalValue copyWith({
    double? value,
    double? previousValue,
    double? growthRatePercentage,
  }) => StatisticalValue(
    value: value ?? this.value,
    previousValue: previousValue ?? this.previousValue,
    growthRatePercentage: growthRatePercentage ?? this.growthRatePercentage,
  );

  static const CONSTRUCTOR = 'statisticalValue';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
