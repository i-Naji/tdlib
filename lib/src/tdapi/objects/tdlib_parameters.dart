part of '../tdapi.dart';

class TdlibParameters extends TdObject {

  /// Contains parameters for TDLib initialization
  const TdlibParameters({
    required this.useTestDc,
    required this.databaseDirectory,
    required this.filesDirectory,
    required this.useFileDatabase,
    required this.useChatInfoDatabase,
    required this.useMessageDatabase,
    required this.useSecretChats,
    required this.apiId,
    required this.apiHash,
    required this.systemLanguageCode,
    required this.deviceModel,
    required this.systemVersion,
    required this.applicationVersion,
    required this.enableStorageOptimizer,
    required this.ignoreFileNames,
  });
  
  /// [useTestDc] If set to true, the Telegram test environment will be used instead of the production environment
  final bool useTestDc;

  /// [databaseDirectory] The path to the directory for the persistent database; if empty, the current working directory will be used
  final String databaseDirectory;

  /// [filesDirectory] The path to the directory for storing files; if empty, database_directory will be used
  final String filesDirectory;

  /// [useFileDatabase] If set to true, information about downloaded and uploaded files will be saved between application restarts
  final bool useFileDatabase;

  /// [useChatInfoDatabase] If set to true, the library will maintain a cache of users, basic groups, supergroups, channels and secret chats. Implies use_file_database
  final bool useChatInfoDatabase;

  /// [useMessageDatabase] If set to true, the library will maintain a cache of chats and messages. Implies use_chat_info_database
  final bool useMessageDatabase;

  /// [useSecretChats] If set to true, support for secret chats will be enabled
  final bool useSecretChats;

  /// [apiId] Application identifier for Telegram API access, which can be obtained at https://my.telegram.org
  final int apiId;

  /// [apiHash] Application identifier hash for Telegram API access, which can be obtained at https://my.telegram.org
  final String apiHash;

  /// [systemLanguageCode] IETF language tag of the user's operating system language; must be non-empty
  final String systemLanguageCode;

  /// [deviceModel] Model of the device the application is being run on; must be non-empty
  final String deviceModel;

  /// [systemVersion] Version of the operating system the application is being run on. If empty, the version is automatically detected by TDLib
  final String systemVersion;

  /// [applicationVersion] Application version; must be non-empty
  final String applicationVersion;

  /// [enableStorageOptimizer] If set to true, old files will automatically be deleted
  final bool enableStorageOptimizer;

  /// [ignoreFileNames] If set to true, original file names will be ignored. Otherwise, downloaded files will be saved under names as close as possible to the original name
  final bool ignoreFileNames;
  
  /// Parse from a json
  factory TdlibParameters.fromJson(Map<String, dynamic> json) => TdlibParameters(
    useTestDc: json['use_test_dc'],
    databaseDirectory: json['database_directory'],
    filesDirectory: json['files_directory'],
    useFileDatabase: json['use_file_database'],
    useChatInfoDatabase: json['use_chat_info_database'],
    useMessageDatabase: json['use_message_database'],
    useSecretChats: json['use_secret_chats'],
    apiId: json['api_id'],
    apiHash: json['api_hash'],
    systemLanguageCode: json['system_language_code'],
    deviceModel: json['device_model'],
    systemVersion: json['system_version'],
    applicationVersion: json['application_version'],
    enableStorageOptimizer: json['enable_storage_optimizer'],
    ignoreFileNames: json['ignore_file_names'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "use_test_dc": useTestDc,
      "database_directory": databaseDirectory,
      "files_directory": filesDirectory,
      "use_file_database": useFileDatabase,
      "use_chat_info_database": useChatInfoDatabase,
      "use_message_database": useMessageDatabase,
      "use_secret_chats": useSecretChats,
      "api_id": apiId,
      "api_hash": apiHash,
      "system_language_code": systemLanguageCode,
      "device_model": deviceModel,
      "system_version": systemVersion,
      "application_version": applicationVersion,
      "enable_storage_optimizer": enableStorageOptimizer,
      "ignore_file_names": ignoreFileNames,
    };
  }
  
  TdlibParameters copyWith({
    bool? useTestDc,
    String? databaseDirectory,
    String? filesDirectory,
    bool? useFileDatabase,
    bool? useChatInfoDatabase,
    bool? useMessageDatabase,
    bool? useSecretChats,
    int? apiId,
    String? apiHash,
    String? systemLanguageCode,
    String? deviceModel,
    String? systemVersion,
    String? applicationVersion,
    bool? enableStorageOptimizer,
    bool? ignoreFileNames,
  }) => TdlibParameters(
    useTestDc: useTestDc ?? this.useTestDc,
    databaseDirectory: databaseDirectory ?? this.databaseDirectory,
    filesDirectory: filesDirectory ?? this.filesDirectory,
    useFileDatabase: useFileDatabase ?? this.useFileDatabase,
    useChatInfoDatabase: useChatInfoDatabase ?? this.useChatInfoDatabase,
    useMessageDatabase: useMessageDatabase ?? this.useMessageDatabase,
    useSecretChats: useSecretChats ?? this.useSecretChats,
    apiId: apiId ?? this.apiId,
    apiHash: apiHash ?? this.apiHash,
    systemLanguageCode: systemLanguageCode ?? this.systemLanguageCode,
    deviceModel: deviceModel ?? this.deviceModel,
    systemVersion: systemVersion ?? this.systemVersion,
    applicationVersion: applicationVersion ?? this.applicationVersion,
    enableStorageOptimizer: enableStorageOptimizer ?? this.enableStorageOptimizer,
    ignoreFileNames: ignoreFileNames ?? this.ignoreFileNames,
  );

  static const CONSTRUCTOR = 'tdlibParameters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
