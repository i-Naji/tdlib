part of '../tdapi.dart';

class ToggleSupergroupIsAllHistoryAvailable extends TdFunction {

  /// Toggles whether the message history of a supergroup is available to new members; requires can_change_info administrator right
  const ToggleSupergroupIsAllHistoryAvailable({
    required this.supergroupId,
    required this.isAllHistoryAvailable,
  });
  
  /// [supergroupId] The identifier of the supergroup 
  final int supergroupId;

  /// [isAllHistoryAvailable] The new value of is_all_history_available
  final bool isAllHistoryAvailable;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "is_all_history_available": isAllHistoryAvailable,
      "@extra": extra,
    };
  }
  
  ToggleSupergroupIsAllHistoryAvailable copyWith({
    int? supergroupId,
    bool? isAllHistoryAvailable,
  }) => ToggleSupergroupIsAllHistoryAvailable(
    supergroupId: supergroupId ?? this.supergroupId,
    isAllHistoryAvailable: isAllHistoryAvailable ?? this.isAllHistoryAvailable,
  );

  static const CONSTRUCTOR = 'toggleSupergroupIsAllHistoryAvailable';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
