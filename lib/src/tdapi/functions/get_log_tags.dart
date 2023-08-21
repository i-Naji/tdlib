part of '../tdapi.dart';

class GetLogTags extends TdFunction {
  /// Returns list of available TDLib internal log tags, for example, ["actor", "binlog", "connections", "notifications", "proxy"]. Can be called synchronously
  const GetLogTags();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetLogTags copyWith() => const GetLogTags();

  static const CONSTRUCTOR = 'getLogTags';

  @override
  String getConstructor() => CONSTRUCTOR;
}
