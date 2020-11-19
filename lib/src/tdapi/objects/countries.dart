part of '../tdapi.dart';

class Countries extends TdObject {
  /// Contains information about countries
  Countries({this.countries});

  /// [countries] The list of countries
  List<CountryInfo> countries;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  Countries.fromJson(Map<String, dynamic> json) {
    this.countries = List<CountryInfo>.from((json['countries'] ?? [])
        .map((item) => CountryInfo.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "countries": this.countries.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'countries';

  @override
  String getConstructor() => CONSTRUCTOR;
}
