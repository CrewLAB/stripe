part of '../../../messages.dart';

/// https://stripe.com/docs/api/prices/update
@JsonSerializable()
class UpdatePriceRequest {
  /// Unique identifier for the object.
  final String id;

  /// Whether the price can be used for new purchases.
  final bool? active;

  /// Set of key-value pairs that you can attach to an object.
  final Map<String, dynamic>? metadata;

  /// A brief description of the price, hidden from customers.
  final String? nickname;

  UpdatePriceRequest({
    required this.id,
    this.active,
    this.metadata,
    this.nickname,
  });

  factory UpdatePriceRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePriceRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdatePriceRequestToJson(this)..remove('id');
}
