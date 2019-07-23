part of '../tdapi.dart';

class OrderInfo implements TdObject {
  String name;
  String phoneNumber;
  String emailAddress;
  Address shippingAddress;
  dynamic extra;

  /// Order information.
  ///[name] Name of the user .
  /// [phoneNumber] Phone number of the user .
  /// [emailAddress] Email address of the user .
  /// [shippingAddress] Shipping address for this order; may be null
  OrderInfo(
      {this.name, this.phoneNumber, this.emailAddress, this.shippingAddress});

  /// Parse from a json
  OrderInfo.fromJson(Map<String, dynamic> json) {
    this.name = json['name'];
    this.phoneNumber = json['phone_number'];
    this.emailAddress = json['email_address'];
    this.shippingAddress =
        Address.fromJson(json['shipping_address'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
      "phone_number": this.phoneNumber,
      "email_address": this.emailAddress,
      "shipping_address": this.shippingAddress.toJson()
    };
  }

  static const String CONSTRUCTOR = "orderInfo";

  @override
  String getConstructor() => CONSTRUCTOR;
}
