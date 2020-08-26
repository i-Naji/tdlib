part of '../tdapi.dart';

class Session extends TdObject {
  String id;
  bool isCurrent;
  bool isPasswordPending;
  int apiId;
  String applicationName;
  String applicationVersion;
  bool isOfficialApplication;
  String deviceModel;
  String platform;
  String systemVersion;
  int logInDate;
  int lastActiveDate;
  String ip;
  String country;
  String region;
  dynamic extra;

  /// Contains information about one session in a Telegram application used by the current user. Sessions should be shown to the user in the returned order. 
  /// [id] Session identifier. 
  /// [isCurrent] True, if this session is the current session. 
  /// [isPasswordPending] True, if a password is needed to complete authorization of the session. 
  /// [apiId] Telegram API identifier, as provided by the application. 
  /// [applicationName] Name of the application, as provided by the application. 
  /// [applicationVersion] The version of the application, as provided by the application. 
  /// [isOfficialApplication] True, if the application is an official application or uses the api_id of an official application. 
  /// [deviceModel] Model of the device the application has been run or is running on, as provided by the application. 
  /// [platform] Operating system the application has been run or is running on, as provided by the application. 
  /// [systemVersion] Version of the operating system the application has been run or is running on, as provided by the application. 
  /// [logInDate] Point in time (Unix timestamp) when the user has logged in. 
  /// [lastActiveDate] Point in time (Unix timestamp) when the session was last used. 
  /// [ip] IP address from which the session was created, in human-readable format. 
  /// [country] A two-letter country code for the country from which the session was created, based on the IP address. 
  /// [region] Region code from which the session was created, based on the IP address
  Session({this.id,
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

  /// Parse from a json
  Session.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
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