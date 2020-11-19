part of '../tdapi.dart';

class Session extends TdObject {
  /// Contains information about one session in a Telegram application used by the current user. Sessions should be shown to the user in the returned order
  Session(
      {this.id,
      this.isCurrent,
      this.isPasswordPending,
      this.apiId,
      this.applicationName,
      this.applicationVersion,
      this.isOfficialApplication,
      this.deviceModel,
      this.platform,
      this.systemVersion,
      this.logInDate,
      this.lastActiveDate,
      this.ip,
      this.country,
      this.region});

  /// [id] Session identifier
  int id;

  /// [isCurrent] True, if this session is the current session
  bool isCurrent;

  /// [isPasswordPending] True, if a password is needed to complete authorization of the session
  bool isPasswordPending;

  /// [apiId] Telegram API identifier, as provided by the application
  int apiId;

  /// [applicationName] Name of the application, as provided by the application
  String applicationName;

  /// [applicationVersion] The version of the application, as provided by the application
  String applicationVersion;

  /// [isOfficialApplication] True, if the application is an official application or uses the api_id of an official application
  bool isOfficialApplication;

  /// [deviceModel] Model of the device the application has been run or is running on, as provided by the application
  String deviceModel;

  /// [platform] Operating system the application has been run or is running on, as provided by the application
  String platform;

  /// [systemVersion] Version of the operating system the application has been run or is running on, as provided by the application
  String systemVersion;

  /// [logInDate] Point in time (Unix timestamp) when the user has logged in
  int logInDate;

  /// [lastActiveDate] Point in time (Unix timestamp) when the session was last used
  int lastActiveDate;

  /// [ip] IP address from which the session was created, in human-readable format
  String ip;

  /// [country] A two-letter country code for the country from which the session was created, based on the IP address
  String country;

  /// [region] Region code from which the session was created, based on the IP address
  String region;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  Session.fromJson(Map<String, dynamic> json) {
    this.id = int.tryParse(json['id'] ?? "");
    this.isCurrent = json['is_current'];
    this.isPasswordPending = json['is_password_pending'];
    this.apiId = json['api_id'];
    this.applicationName = json['application_name'];
    this.applicationVersion = json['application_version'];
    this.isOfficialApplication = json['is_official_application'];
    this.deviceModel = json['device_model'];
    this.platform = json['platform'];
    this.systemVersion = json['system_version'];
    this.logInDate = json['log_in_date'];
    this.lastActiveDate = json['last_active_date'];
    this.ip = json['ip'];
    this.country = json['country'];
    this.region = json['region'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "is_current": this.isCurrent,
      "is_password_pending": this.isPasswordPending,
      "api_id": this.apiId,
      "application_name": this.applicationName,
      "application_version": this.applicationVersion,
      "is_official_application": this.isOfficialApplication,
      "device_model": this.deviceModel,
      "platform": this.platform,
      "system_version": this.systemVersion,
      "log_in_date": this.logInDate,
      "last_active_date": this.lastActiveDate,
      "ip": this.ip,
      "country": this.country,
      "region": this.region,
    };
  }

  static const CONSTRUCTOR = 'session';

  @override
  String getConstructor() => CONSTRUCTOR;
}
