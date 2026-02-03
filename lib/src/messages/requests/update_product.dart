part of '../../../messages.dart';

/// https://stripe.com/docs/api/products/update
@JsonSerializable()
class UpdateProductRequest {
  /// Unique identifier for the object.
  final String id;

  /// The product's name, meant to be displayable to the customer.
  final String? name;

  /// Whether the product is available for purchase.
  final bool? active;

  /// The ID of the Price object that is the default price for this product.
  final String? defaultPrice;

  /// The product's description, meant to be displayable to the customer.
  final String? description;

  /// Set of key-value pairs that you can attach to an object.
  final Map<String, dynamic>? metadata;

  UpdateProductRequest({
    required this.id,
    this.name,
    this.active,
    this.defaultPrice,
    this.description,
    this.metadata,
  });

  factory UpdateProductRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdateProductRequestToJson(this)..remove('id');
}
