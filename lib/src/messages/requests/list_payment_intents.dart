part of '../../../messages.dart';

/// https://stripe.com/docs/api/payment_intents/list
@JsonSerializable()
class ListPaymentIntentsRequest {
  /// Only return payment intents for the customer specified by this customer ID.
  final String? customer;

  /// Fields to expand in the response (e.g. ['invoice']).
  /// Serialized as repeated `expand[]` keys in the query string.
  final List<String>? expand;

  ListPaymentIntentsRequest({
    this.customer,
    this.expand,
  });

  factory ListPaymentIntentsRequest.fromJson(Map<String, dynamic> json) =>
      _$ListPaymentIntentsRequestFromJson(json);

  Map<String, dynamic> toJson() => {
        if (customer != null) 'customer': customer,
        if (expand != null) 'expand[]': expand,
      };
}
