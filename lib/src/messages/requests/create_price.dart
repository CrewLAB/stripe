part of '../../../messages.dart';

/// https://stripe.com/docs/api/prices/create
@JsonSerializable()
class CreatePriceRequest {
  /// Only return Prices that are active or inactive (e.g., pass false to list
  /// all inactive Prices).
  final String product;
  final int unitAmount;
  final String currency;
  final PriceRecurring recurring;

  CreatePriceRequest({
    required this.product,
    required this.unitAmount,
    required this.currency,
    required this.recurring,
  });

  factory CreatePriceRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePriceRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CreatePriceRequestToJson(this);
}

enum RecurringInterval {
  @JsonValue('day')
  day,
  @JsonValue('week')
  week,
  @JsonValue('month')
  month,
  @JsonValue('year')
  year;

  String get displayName {
    return switch (this) {
      day => 'Daily',
      week => 'Weekly',
      month => 'Monthly',
      year => 'Annual',
    };
  }
}

@JsonSerializable()
class PriceRecurring {
  /// Specifies billing frequency. Either day, week, month or year.
  final RecurringInterval interval;

  /// The number of intervals (specified in the interval attribute) between
  /// subscription billings. For example, interval=month and interval_count=3
  /// bills every 3 months.
  @JsonKey(name: 'interval_count')
  final int intervalCount;

  PriceRecurring({
    required this.interval,
    required this.intervalCount,
  });

  factory PriceRecurring.fromJson(Map<String, dynamic> json) =>
      _$PriceRecurringFromJson(json);
  Map<String, dynamic> toJson() => _$PriceRecurringToJson(this);
}
