part of '../tdapi.dart';

class OrderInfo extends TdObject {

  /// Order information
  const OrderInfo({
    required this.name,
    required this.phoneNumber,
    required this.emailAddress,
    this.shippingAddress,
    this.extra,
    this.clientId,
  });
  
  /// [name] Name of the user 
  final String name;

  /// [phoneNumber] Phone number of the user 
  final String phoneNumber;

  /// [emailAddress] Email address of the user 
  final String emailAddress;

  /// [shippingAddress] Shipping address for this order; may be null
  final Address? shippingAddress;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory OrderInfo.fromJson(Map<String, dynamic> json) => OrderInfo(
    name: json['name'],
    phoneNumber: json['phone_number'],
    emailAddress: json['email_address'],
    shippingAddress: json['shipping_address'] == null ? null : Address.fromJson(json['shipping_address']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "phone_number": phoneNumber,
      "email_address": emailAddress,
      "shipping_address": shippingAddress?.toJson(),
    };
  }
  
  OrderInfo copyWith({
    String? name,
    String? phoneNumber,
    String? emailAddress,
    Address? shippingAddress,
    dynamic extra,
    int? clientId,
  }) => OrderInfo(
    name: name ?? this.name,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    emailAddress: emailAddress ?? this.emailAddress,
    shippingAddress: shippingAddress ?? this.shippingAddress,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'orderInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
