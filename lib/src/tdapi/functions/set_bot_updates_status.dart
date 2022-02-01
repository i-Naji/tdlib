part of '../tdapi.dart';

class SetBotUpdatesStatus extends TdFunction {

  /// Informs the server about the number of pending bot updates if they haven't been processed for a long time; for bots only
  const SetBotUpdatesStatus({
    required this.pendingUpdateCount,
    required this.errorMessage,
  });
  
  /// [pendingUpdateCount] The number of pending updates 
  final int pendingUpdateCount;

  /// [errorMessage] The last error message
  final String errorMessage;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "pending_update_count": pendingUpdateCount,
      "error_message": errorMessage,
      "@extra": extra,
    };
  }
  
  SetBotUpdatesStatus copyWith({
    int? pendingUpdateCount,
    String? errorMessage,
  }) => SetBotUpdatesStatus(
    pendingUpdateCount: pendingUpdateCount ?? this.pendingUpdateCount,
    errorMessage: errorMessage ?? this.errorMessage,
  );

  static const CONSTRUCTOR = 'setBotUpdatesStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
