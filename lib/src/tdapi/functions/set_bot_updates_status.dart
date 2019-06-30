part of '../tdapi.dart';

class SetBotUpdatesStatus extends TLFunction {
  int pendingUpdateCount;
  String errorMessage;
  dynamic extra;

  /// Informs the server about the number of pending bot updates if they haven't been processed for a long time; for bots only.
  ///[pendingUpdateCount] The number of pending updates .
  /// [errorMessage] The last error message
  SetBotUpdatesStatus({this.pendingUpdateCount, this.errorMessage});

  /// Parse from a json
  SetBotUpdatesStatus.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'pending_update_count': this.pendingUpdateCount,
      'error_message': this.errorMessage,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'setBotUpdatesStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}
