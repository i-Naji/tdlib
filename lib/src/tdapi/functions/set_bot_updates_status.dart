part of '../tdapi.dart';

class SetBotUpdatesStatus extends TdFunction {
  /// Informs the server about the number of pending bot updates if they haven't been processed for a long time; for bots only
  SetBotUpdatesStatus({this.pendingUpdateCount, this.errorMessage});

  /// [pendingUpdateCount] The number of pending updates
  int pendingUpdateCount;

  /// [errorMessage] The last error message
  String errorMessage;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetBotUpdatesStatus.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "pending_update_count": this.pendingUpdateCount,
      "error_message": this.errorMessage,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setBotUpdatesStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}
