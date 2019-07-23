part of '../tdapi.dart';

class PaymentReceipt implements TdObject {
  int date;
  int paymentsProviderUserId;
  Invoice invoice;
  OrderInfo orderInfo;
  ShippingOption shippingOption;
  String credentialsTitle;
  dynamic extra;

  /// Contains information about a successful payment.
  ///[date] Point in time (Unix timestamp) when the payment was made .
  /// [paymentsProviderUserId] User identifier of the payment provider bot .
  /// [invoice] Contains information about the invoice.
  /// [orderInfo] Contains order information; may be null .
  /// [shippingOption] Chosen shipping option; may be null .
  /// [credentialsTitle] Title of the saved credentials
  PaymentReceipt(
      {this.date,
      this.paymentsProviderUserId,
      this.invoice,
      this.orderInfo,
      this.shippingOption,
      this.credentialsTitle});

  /// Parse from a json
  PaymentReceipt.fromJson(Map<String, dynamic> json) {
    this.date = json['date'];
    this.paymentsProviderUserId = json['payments_provider_user_id'];
    this.invoice = Invoice.fromJson(json['invoice'] ?? <String, dynamic>{});
    this.orderInfo =
        OrderInfo.fromJson(json['order_info'] ?? <String, dynamic>{});
    this.shippingOption =
        ShippingOption.fromJson(json['shipping_option'] ?? <String, dynamic>{});
    this.credentialsTitle = json['credentials_title'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "date": this.date,
      "payments_provider_user_id": this.paymentsProviderUserId,
      "invoice": this.invoice.toJson(),
      "order_info": this.orderInfo.toJson(),
      "shipping_option": this.shippingOption.toJson(),
      "credentials_title": this.credentialsTitle
    };
  }

  static const String CONSTRUCTOR = "paymentReceipt";

  @override
  String getConstructor() => CONSTRUCTOR;
}
