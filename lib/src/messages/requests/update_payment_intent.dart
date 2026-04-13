part of '../../../messages.dart';

/// https://stripe.com/docs/api/payment_intents/update
@JsonSerializable()
class UpdatePaymentIntentRequest {
  /// Unique identifier for the object.
  final String id;

  /// Amount intended to be collected by this PaymentIntent.
  final int? amount;

  /// Three-letter ISO currency code, in lowercase.
  final String? currency;

  /// ID of the Customer this PaymentIntent belongs to, if one exists.
  final String? customer;

  /// An arbitrary string attached to the object. Often useful for displaying to users.
  final String? description;

  /// Set of key-value pairs that you can attach to an object.
  final Map<String, String>? metadata;

  /// ID of the payment method to attach to this PaymentIntent.
  final String? paymentMethod;

  /// The list of payment method types that this PaymentIntent is allowed to use.
  final Set<PaymentMethodType>? paymentMethodTypes;

  /// Email address that the receipt for the resulting payment will be sent to.
  final String? receiptEmail;

  /// Indicates that you intend to make future payments with this PaymentIntent's
  /// payment method.
  final SetupFutureUsage? setupFutureUsage;

  /// Shipping information for this PaymentIntent.
  final ShippingSpecification? shipping;

  /// For non-card charges, you can use this value as the complete description
  /// that appears on your customers' statements.
  final String? statementDescriptor;

  /// Provides information about a card payment that customers see on their statements.
  final String? statementDescriptorSuffix;

  UpdatePaymentIntentRequest({
    required this.id,
    this.amount,
    this.currency,
    this.customer,
    this.description,
    this.metadata,
    this.paymentMethod,
    this.paymentMethodTypes,
    this.receiptEmail,
    this.setupFutureUsage,
    this.shipping,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
  });

  factory UpdatePaymentIntentRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePaymentIntentRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdatePaymentIntentRequestToJson(this)..remove('id');
}