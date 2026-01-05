part of '../../messages.dart';

enum _ProductObject { product }

/// https://stripe.com/docs/api/products/object
@JsonSerializable()
class Product extends Message {
  final _ProductObject object;

  /// Unique identifier for the object.
  final String id;

  /// Whether the product is currently available for purchase.
  final bool active;

  /// Time at which the object was created. Measured in seconds since the Unix epoch.
  final int created;

  /// The ID of the Price object that is the default price for this product.
  final String? defaultPrice;

  /// The product's description, meant to be displayable to the customer. Use
  /// this field to optionally store a long form explanation of the product
  /// being sold for your own rendering purposes.
  final String? description;

  /// The product's name, meant to be displayable to the customer. Whenever this
  /// product is sold via a subscription, name will show up on associated
  /// invoice line item descriptions.
  final String name;

  /// Time at which the object was last updated. Measured in seconds since the Unix epoch.
  final int updated;

  Product({
    required this.object,
    required this.id,
    required this.active,
    required this.created,
    this.defaultPrice,
    this.description,
    required this.name,
    required this.updated,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
