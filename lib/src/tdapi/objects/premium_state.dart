part of '../tdapi.dart';

class PremiumState extends TdObject {
  /// Contains state of Telegram Premium subscription and promotion videos for Premium features
  const PremiumState({
    required this.state,
    required this.paymentOptions,
    required this.animations,
    this.extra,
    this.clientId,
  });

  /// [state] Text description of the state of the current Premium subscription; may be empty if the current user has no Telegram Premium subscription
  final FormattedText state;

  /// [paymentOptions] The list of available options for buying Telegram Premium
  final List<PremiumStatePaymentOption> paymentOptions;

  /// [animations] The list of available promotion animations for Premium features
  final List<PremiumFeaturePromotionAnimation> animations;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory PremiumState.fromJson(Map<String, dynamic> json) => PremiumState(
        state: FormattedText.fromJson(json['state']),
        paymentOptions: List<PremiumStatePaymentOption>.from(
            (json['payment_options'] ?? [])
                .map((item) => PremiumStatePaymentOption.fromJson(item))
                .toList()),
        animations: List<PremiumFeaturePromotionAnimation>.from(
            (json['animations'] ?? [])
                .map((item) => PremiumFeaturePromotionAnimation.fromJson(item))
                .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "state": state.toJson(),
      "payment_options": paymentOptions.map((i) => i.toJson()).toList(),
      "animations": animations.map((i) => i.toJson()).toList(),
    };
  }

  PremiumState copyWith({
    FormattedText? state,
    List<PremiumStatePaymentOption>? paymentOptions,
    List<PremiumFeaturePromotionAnimation>? animations,
    dynamic extra,
    int? clientId,
  }) =>
      PremiumState(
        state: state ?? this.state,
        paymentOptions: paymentOptions ?? this.paymentOptions,
        animations: animations ?? this.animations,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'premiumState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
