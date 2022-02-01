part of '../tdapi.dart';

class PaymentReceipt extends TdObject {

  /// Contains information about a successful payment
  const PaymentReceipt({
    required this.title,
    required this.description,
    this.photo,
    required this.date,
    required this.sellerBotUserId,
    required this.paymentsProviderUserId,
    required this.invoice,
    this.orderInfo,
    this.shippingOption,
    required this.credentialsTitle,
    required this.tipAmount,
    this.extra,
    this.clientId,
  });
  
  /// [title] Product title
  final String title;

  /// [description] Product description
  final String description;

  /// [photo] Product photo; may be null
  final Photo? photo;

  /// [date] Point in time (Unix timestamp) when the payment was made
  final int date;

  /// [sellerBotUserId] User identifier of the seller bot
  final int sellerBotUserId;

  /// [paymentsProviderUserId] User identifier of the payment provider bot
  final int paymentsProviderUserId;

  /// [invoice] Information about the invoice
  final Invoice invoice;

  /// [orderInfo] Order information; may be null
  final OrderInfo? orderInfo;

  /// [shippingOption] Chosen shipping option; may be null
  final ShippingOption? shippingOption;

  /// [credentialsTitle] Title of the saved credentials chosen by the buyer
  final String credentialsTitle;

  /// [tipAmount] The amount of tip chosen by the buyer in the smallest units of the currency
  final int tipAmount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PaymentReceipt.fromJson(Map<String, dynamic> json) => PaymentReceipt(
    title: json['title'],
    description: json['description'],
    photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
    date: json['date'],
    sellerBotUserId: json['seller_bot_user_id'],
    paymentsProviderUserId: json['payments_provider_user_id'],
    invoice: Invoice.fromJson(json['invoice']),
    orderInfo: json['order_info'] == null ? null : OrderInfo.fromJson(json['order_info']),
    shippingOption: json['shipping_option'] == null ? null : ShippingOption.fromJson(json['shipping_option']),
    credentialsTitle: json['credentials_title'],
    tipAmount: json['tip_amount'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "description": description,
      "photo": photo?.toJson(),
      "date": date,
      "seller_bot_user_id": sellerBotUserId,
      "payments_provider_user_id": paymentsProviderUserId,
      "invoice": invoice.toJson(),
      "order_info": orderInfo?.toJson(),
      "shipping_option": shippingOption?.toJson(),
      "credentials_title": credentialsTitle,
      "tip_amount": tipAmount,
    };
  }
  
  PaymentReceipt copyWith({
    String? title,
    String? description,
    Photo? photo,
    int? date,
    int? sellerBotUserId,
    int? paymentsProviderUserId,
    Invoice? invoice,
    OrderInfo? orderInfo,
    ShippingOption? shippingOption,
    String? credentialsTitle,
    int? tipAmount,
    dynamic extra,
    int? clientId,
  }) => PaymentReceipt(
    title: title ?? this.title,
    description: description ?? this.description,
    photo: photo ?? this.photo,
    date: date ?? this.date,
    sellerBotUserId: sellerBotUserId ?? this.sellerBotUserId,
    paymentsProviderUserId: paymentsProviderUserId ?? this.paymentsProviderUserId,
    invoice: invoice ?? this.invoice,
    orderInfo: orderInfo ?? this.orderInfo,
    shippingOption: shippingOption ?? this.shippingOption,
    credentialsTitle: credentialsTitle ?? this.credentialsTitle,
    tipAmount: tipAmount ?? this.tipAmount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'paymentReceipt';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
