part of '../../../messages.dart';

/// https://stripe.com/docs/api/products/list
@JsonSerializable()
class CreateProductRequest {
  /// Only return products that are active or inactive (e.g., pass false to list
  /// all inactive products).
  final String? name;
  final bool? active;
  final String? description;
  final Map<String, dynamic>? metadata;

  CreateProductRequest({
    this.name,
    this.active,
    this.description,
    this.metadata,
  });

  factory CreateProductRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateProductRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CreateProductRequestToJson(this);
}
