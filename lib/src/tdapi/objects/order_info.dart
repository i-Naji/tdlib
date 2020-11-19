part of '../tdapi.dart';

class OrderInfo extends TdObject {
  /// Order information
  OrderInfo(
      {this.name, this.phoneNumber, this.emailAddress, this.shippingAddress});

  /// [name] Name of the user
  String name;

  /// [phoneNumber] Phone number of the user
  String phoneNumber;

  /// [emailAddress] Email address of the user
  String emailAddress;

  /// [shippingAddress] Shipping address for this order; may be null
  Address shippingAddress;

  /// callback sign
  dynamic extra;

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
      "shipping_address":
          this.shippingAddress == null ? null : this.shippingAddress.toJson(),
    };
  }

  static const CONSTRUCTOR = 'orderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
