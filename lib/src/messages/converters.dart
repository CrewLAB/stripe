part of '../../messages.dart';

/// Converts a [DateTime] to a timestamp int and vice versa.
class TimestampConverter implements JsonConverter<DateTime, int> {
  const TimestampConverter();

  @override
  DateTime fromJson(int value) =>
      DateTime.fromMillisecondsSinceEpoch(value * 1000);

  @override
  int toJson(DateTime type) => type.millisecondsSinceEpoch ~/ 1000;
}

/// Handles Stripe's expandable invoice field, which is either a string ID
/// (not expanded) or a full Invoice object (expanded via expand[]).
/// The [id] is always preserved regardless of expansion state.
class ExpandableInvoiceConverter
    implements JsonConverter<Expandable<Invoice>?, dynamic> {
  const ExpandableInvoiceConverter();

  @override
  Expandable<Invoice>? fromJson(dynamic json) {
    if (json == null) return null;
    if (json is String) return Expandable(json);
    if (json is Map<String, dynamic>) {
      final invoice = Invoice.fromJson(json);
      return Expandable(invoice.id, invoice);
    }
    return null;
  }

  @override
  dynamic toJson(Expandable<Invoice>? value) => value?.id;
}

/// Handles Stripe's expandable payment_intent field, which is either a string ID
/// (not expanded) or a full PaymentIntent object (expanded via expand[]).
/// The [id] is always preserved regardless of expansion state.
class ExpandablePaymentIntentConverter
    implements JsonConverter<Expandable<PaymentIntent>?, dynamic> {
  const ExpandablePaymentIntentConverter();

  @override
  Expandable<PaymentIntent>? fromJson(dynamic json) {
    if (json == null) return null;
    if (json is String) return Expandable(json);
    if (json is Map<String, dynamic>) {
      final pi = PaymentIntent.fromJson(json);
      return Expandable(pi.id, pi);
    }
    return null;
  }

  @override
  dynamic toJson(Expandable<PaymentIntent>? value) => value?.id;
}
