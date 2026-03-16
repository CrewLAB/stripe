part of '../../../messages.dart';

/// https://stripe.com/docs/api/payment_intents/list
@JsonSerializable()
class ListPaymentIntentsRequest {
  /// Only return payment intents for the customer specified by this customer ID.
  final String? customer;

  /// Fields to expand in the response (e.g. ['invoice']).
  /// Serialized as repeated `expand[]` keys in the query string.
  final List<String>? expand;

  /// A limit on the number of objects to be returned. Between 1 and 100, default is 10.
  final int? limit;

  /// A cursor for pagination. Returns objects after this payment intent ID.
  final String? startingAfter;

  /// A cursor for pagination. Returns objects before this payment intent ID.
  final String? endingBefore;

  ListPaymentIntentsRequest({
    this.customer,
    this.expand,
    this.limit,
    this.startingAfter,
    this.endingBefore,
  });

  factory ListPaymentIntentsRequest.fromJson(Map<String, dynamic> json) =>
      _$ListPaymentIntentsRequestFromJson(json);

  Map<String, dynamic> toJson() => {
        if (customer != null) 'customer': customer,
        if (expand != null) 'expand[]': expand,
        if (limit != null) 'limit': limit,
        if (startingAfter != null) 'starting_after': startingAfter,
        if (endingBefore != null) 'ending_before': endingBefore,
      };
}
