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
class ExpandableInvoiceConverter implements JsonConverter<Invoice?, dynamic> {
  const ExpandableInvoiceConverter();

  @override
  Invoice? fromJson(dynamic json) {
    if (json is Map<String, dynamic>) {
      return Invoice.fromJson(json);
    }
    return null; // It's a string ID — not expanded, ignore
  }

  @override
  dynamic toJson(Invoice? invoice) => invoice?.id;
}
