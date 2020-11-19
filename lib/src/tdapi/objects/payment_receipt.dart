part of '../tdapi.dart';

class PaymentReceipt extends TdObject {
  /// Contains information about a successful payment
  PaymentReceipt(
      {this.date,
      this.paymentsProviderUserId,
      this.invoice,
      this.orderInfo,
      this.shippingOption,
      this.credentialsTitle});

  /// [date] Point in time (Unix timestamp) when the payment was made
  int date;

  /// [paymentsProviderUserId] User identifier of the payment provider bot
  int paymentsProviderUserId;

  /// [invoice] Contains information about the invoice
  Invoice invoice;

  /// [orderInfo] Contains order information; may be null
  OrderInfo orderInfo;

  /// [shippingOption] Chosen shipping option; may be null
  ShippingOption shippingOption;

  /// [credentialsTitle] Title of the saved credentials
  String credentialsTitle;

  /// callback sign
  dynamic extra;

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
      "invoice": this.invoice == null ? null : this.invoice.toJson(),
      "order_info": this.orderInfo == null ? null : this.orderInfo.toJson(),
      "shipping_option":
          this.shippingOption == null ? null : this.shippingOption.toJson(),
      "credentials_title": this.credentialsTitle,
    };
  }

  static const CONSTRUCTOR = 'paymentReceipt';

  @override
  String getConstructor() => CONSTRUCTOR;
}
