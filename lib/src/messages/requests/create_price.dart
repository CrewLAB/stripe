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
  final PriceRecurring recurring;

  CreatePriceRequest({
    required this.product,
    required this.unitAmount,
    required this.currency,
    required this.recurring,
  });

  factory CreatePriceRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePriceRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CreatePriceRequestToJson(this);
}
