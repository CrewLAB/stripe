part of '../../../messages.dart';

/// https://stripe.com/docs/api/payment_intents/list
@JsonSerializable()
class ListPaymentIntentsRequest {
  /// Only return payment intents for the customer specified by this customer ID.
  final String? customer;

  ListPaymentIntentsRequest({
    this.customer,
  });

  factory ListPaymentIntentsRequest.fromJson(Map<String, dynamic> json) =>
      _$ListPaymentIntentsRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ListPaymentIntentsRequestToJson(this);
}
