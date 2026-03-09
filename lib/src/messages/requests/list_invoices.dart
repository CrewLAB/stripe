part of '../../../messages.dart';

/// https://stripe.com/docs/api/invoices/list
@JsonSerializable()
class ListInvoicesRequest {
  /// The ID of the customer whose invoices will be retrieved.
  final String? customer;

  /// The status of the invoices to retrieve.
  final InvoiceStatus? status;

  /// Only return invoices for the subscription specified by this subscription ID.
  final String? subscription;

  ListInvoicesRequest({
    this.customer,
    this.status,
    this.subscription,
  });

  factory ListInvoicesRequest.fromJson(Map<String, dynamic> json) =>
      _$ListInvoicesRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ListInvoicesRequestToJson(this);
}
