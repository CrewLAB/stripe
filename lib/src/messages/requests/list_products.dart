part of '../../../messages.dart';

/// https://stripe.com/docs/api/products/list
@JsonSerializable()
class ListProductsRequest {
  /// Only return products that are active or inactive (e.g., pass false to list
  /// all inactive products).
  final bool? active;

  /// A limit on the number of objects to be returned. Limit can range between
  /// 1 and 100, and the default is 10.
  final int? limit;

  /// A cursor for use in pagination. `starting_after` is an object ID that
  /// defines your place in the list.
  @JsonKey(name: 'starting_after')
  final String? startingAfter;

  ListProductsRequest({
    this.active,
    this.limit,
    this.startingAfter,
  });

  factory ListProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$ListProductsRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ListProductsRequestToJson(this);
}
