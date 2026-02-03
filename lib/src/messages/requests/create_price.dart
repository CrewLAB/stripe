part of '../../../messages.dart';

/// https://stripe.com/docs/api/prices/create
@JsonSerializable()
class CreatePriceRequest {
  /// The ID of the product this price will be associated with.
  final String product;

  /// The unit amount in cents to be charged.
  final int unitAmount;

  /// Three-letter ISO currency code, in lowercase.
  final String currency;

  /// The recurring components of a price such as interval and usage_type.
  /// Required for recurring prices, omit for one-time prices.
  final PriceRecurring? recurring;

  /// A brief description of the price, hidden from customers.
  final String? nickname;

  CreatePriceRequest({
    required this.product,
    required this.unitAmount,
    required this.currency,
    this.recurring,
    this.nickname,
  });

  factory CreatePriceRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePriceRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CreatePriceRequestToJson(this);
}
