part of '../tdapi.dart';

class PaymentForm extends TdObject {

  /// Contains information about an invoice payment form
  const PaymentForm({
    required this.id,
    required this.invoice,
    required this.url,
    required this.sellerBotUserId,
    required this.paymentsProviderUserId,
    this.paymentsProvider,
    this.savedOrderInfo,
    this.savedCredentials,
    required this.canSaveCredentials,
    required this.needPassword,
    this.extra,
    this.clientId,
  });
  
  /// [id] The payment form identifier
  final int id;

  /// [invoice] Full information of the invoice
  final Invoice invoice;

  /// [url] Payment form URL
  final String url;

  /// [sellerBotUserId] User identifier of the seller bot
  final int sellerBotUserId;

  /// [paymentsProviderUserId] User identifier of the payment provider bot
  final int paymentsProviderUserId;

  /// [paymentsProvider] Information about the payment provider, if available, to support it natively without the need for opening the URL; may be null
  final PaymentsProviderStripe? paymentsProvider;

  /// [savedOrderInfo] Saved server-side order information; may be null
  final OrderInfo? savedOrderInfo;

  /// [savedCredentials] Information about saved card credentials; may be null
  final SavedCredentials? savedCredentials;

  /// [canSaveCredentials] True, if the user can choose to save credentials
  final bool canSaveCredentials;

  /// [needPassword] True, if the user will be able to save credentials protected by a password they set up
  final bool needPassword;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PaymentForm.fromJson(Map<String, dynamic> json) => PaymentForm(
    id: int.parse(json['id']),
    invoice: Invoice.fromJson(json['invoice']),
    url: json['url'],
    sellerBotUserId: json['seller_bot_user_id'],
    paymentsProviderUserId: json['payments_provider_user_id'],
    paymentsProvider: json['payments_provider'] == null ? null : PaymentsProviderStripe.fromJson(json['payments_provider']),
    savedOrderInfo: json['saved_order_info'] == null ? null : OrderInfo.fromJson(json['saved_order_info']),
    savedCredentials: json['saved_credentials'] == null ? null : SavedCredentials.fromJson(json['saved_credentials']),
    canSaveCredentials: json['can_save_credentials'],
    needPassword: json['need_password'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "invoice": invoice.toJson(),
      "url": url,
      "seller_bot_user_id": sellerBotUserId,
      "payments_provider_user_id": paymentsProviderUserId,
      "payments_provider": paymentsProvider?.toJson(),
      "saved_order_info": savedOrderInfo?.toJson(),
      "saved_credentials": savedCredentials?.toJson(),
      "can_save_credentials": canSaveCredentials,
      "need_password": needPassword,
    };
  }
  
  PaymentForm copyWith({
    int? id,
    Invoice? invoice,
    String? url,
    int? sellerBotUserId,
    int? paymentsProviderUserId,
    PaymentsProviderStripe? paymentsProvider,
    OrderInfo? savedOrderInfo,
    SavedCredentials? savedCredentials,
    bool? canSaveCredentials,
    bool? needPassword,
    dynamic extra,
    int? clientId,
  }) => PaymentForm(
    id: id ?? this.id,
    invoice: invoice ?? this.invoice,
    url: url ?? this.url,
    sellerBotUserId: sellerBotUserId ?? this.sellerBotUserId,
    paymentsProviderUserId: paymentsProviderUserId ?? this.paymentsProviderUserId,
    paymentsProvider: paymentsProvider ?? this.paymentsProvider,
    savedOrderInfo: savedOrderInfo ?? this.savedOrderInfo,
    savedCredentials: savedCredentials ?? this.savedCredentials,
    canSaveCredentials: canSaveCredentials ?? this.canSaveCredentials,
    needPassword: needPassword ?? this.needPassword,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'paymentForm';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
