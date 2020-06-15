part of '../tdapi.dart';

class PaymentForm extends TdObject {
  Invoice invoice;
  String url;
  PaymentsProviderStripe paymentsProvider;
  OrderInfo savedOrderInfo;
  SavedCredentials savedCredentials;
  bool canSaveCredentials;
  bool needPassword;
  dynamic extra;

  /// Contains information about an invoice payment form. 
  /// [invoice] Full information of the invoice . 
  /// [url] Payment form URL . 
  /// [paymentsProvider] Contains information about the payment provider, if available, to support it natively without the need for opening the URL; may be null. 
  /// [savedOrderInfo] Saved server-side order information; may be null. 
  /// [savedCredentials] Contains information about saved card credentials; may be null . 
  /// [canSaveCredentials] True, if the user can choose to save credentials . 
  /// [needPassword] True, if the user will be able to save credentials protected by a password they set up
  PaymentForm({this.invoice,
    this.url,
    this.paymentsProvider,
    this.savedOrderInfo,
    this.savedCredentials,
    this.canSaveCredentials,
    this.needPassword});

  /// Parse from a json
  PaymentForm.fromJson(Map<String, dynamic> json)  {
    this.invoice = Invoice.fromJson(json['invoice'] ?? <String, dynamic>{});
    this.url = json['url'];
    this.paymentsProvider = PaymentsProviderStripe.fromJson(json['payments_provider'] ?? <String, dynamic>{});
    this.savedOrderInfo = OrderInfo.fromJson(json['saved_order_info'] ?? <String, dynamic>{});
    this.savedCredentials = SavedCredentials.fromJson(json['saved_credentials'] ?? <String, dynamic>{});
    this.canSaveCredentials = json['can_save_credentials'];
    this.needPassword = json['need_password'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invoice": this.invoice.toJson(),
      "url": this.url,
      "payments_provider": this.paymentsProvider.toJson(),
      "saved_order_info": this.savedOrderInfo.toJson(),
      "saved_credentials": this.savedCredentials.toJson(),
      "can_save_credentials": this.canSaveCredentials,
      "need_password": this.needPassword,
    };
  }

  static const CONSTRUCTOR = 'paymentForm';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}