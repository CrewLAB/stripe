part of '../../../messages.dart';

/// https://stripe.com/docs/api/prices/list
@JsonSerializable()
class ListPricesRequest {
  /// Only return products that are active or inactive (e.g., pass false to list
  /// all inactive products).
  final bool? active;

  /// Only return prices for the given currency.
  final String? currency;

  /// Only return prices for the given product.
  final String? product;

  /// A limit on the number of objects to be returned. Limit can range between
  /// 1 and 100, and the default is 10.
  final int? limit;

  /// A cursor for use in pagination. `starting_after` is an object ID that
  /// defines your place in the list.
  @JsonKey(name: 'starting_after')
  final String? startingAfter;

  ListPricesRequest({
    this.active,
    this.currency,
    this.product,
    this.limit,
    this.startingAfter,
  });

  factory ListPricesRequest.fromJson(Map<String, dynamic> json) =>
      _$ListPricesRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ListPricesRequestToJson(this);
}
