part of '../../../messages.dart';

/// https://stripe.com/docs/api/payment_intents/search
@JsonSerializable()
class SearchPaymentIntentsRequest {
  /// The search query string using Stripe's query language.
  /// See https://stripe.com/docs/search#query-fields-for-payment-intents
  final String query;

  /// A limit on the number of objects to be returned. Between 1 and 100,
  /// default is 10.
  final int? limit;

  /// A cursor for pagination, obtained from the `nextPage` field of a previous
  /// search response.
  final String? page;

  SearchPaymentIntentsRequest({
    required this.query,
    this.limit,
    this.page,
  });

  factory SearchPaymentIntentsRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchPaymentIntentsRequestFromJson(json);

  Map<String, dynamic> toJson() => {
        'query': query,
        if (limit != null) 'limit': limit,
        if (page != null) 'page': page,
      };
}
