part of '../../messages.dart';

// ignore: constant_identifier_names
enum _PaymentIntentObject { payment_intent }

/// Metadata for PaymentIntent containing product and price references
@JsonSerializable()
class PaymentIntentMetadata {
  /// The product ID associated with this payment
  final String product;

  /// The price ID associated with this payment
  final String price;

  PaymentIntentMetadata({
    required this.product,
    required this.price,
  });

  factory PaymentIntentMetadata.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentIntentMetadataToJson(this);
}

/// https://stripe.com/docs/api/payment_intents/object
@JsonSerializable()
class PaymentIntent extends Message {
  final _PaymentIntentObject object;

  final String id;
  final int amount;
  final int amountReceived;
  final AutomaticPaymentMethods automaticPaymentMethods;
  final String clientSecret;
  final String currency;
  final String status;
  @TimestampConverter()
  final DateTime? canceledAt;
  @TimestampConverter()
  final DateTime? created;
  final String? customer;
  final String? description;
  final String? latestCharge;
  final PaymentIntentMetadata? metadata;
  final String? paymentMethod;
  final Set<PaymentMethodType>? paymentMethodTypes;
  final String? receiptEmail;
  final SetupFutureUsage? setupFutureUsage;
  final ShippingSpecification? shipping;
  final String? statementDescriptor;
  final String? statementDescriptorSuffix;

  PaymentIntent({
    required this.object,
    required this.id,
    required this.amount,
    required this.amountReceived,
    required this.clientSecret,
    required this.currency,
    required this.status,
    this.automaticPaymentMethods = const AutomaticPaymentMethods(),
    this.canceledAt,
    this.created,
    this.customer,
    this.description,
    this.latestCharge,
    this.metadata,
    this.paymentMethod,
    this.paymentMethodTypes,
    this.receiptEmail,
    this.setupFutureUsage,
    this.shipping,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
  });

  factory PaymentIntent.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaymentIntentToJson(this);
}

@JsonSerializable()
class AutomaticPaymentMethods {
  final bool enabled;

  const AutomaticPaymentMethods({this.enabled = false});

  factory AutomaticPaymentMethods.fromJson(Map<String, dynamic> json) =>
      _$AutomaticPaymentMethodsFromJson(json);

  Map<String, dynamic> toJson() => _$AutomaticPaymentMethodsToJson(this);
}
