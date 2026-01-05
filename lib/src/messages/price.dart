part of '../../messages.dart';

enum _PriceObject { price }

// ignore: constant_identifier_names
enum PriceType { one_time, recurring }

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

enum UsageType {
  @JsonValue('licensed')
  licensed,
  @JsonValue('metered')
  metered;
}

/// https://stripe.com/docs/api/prices/object#price_object-recurring
@JsonSerializable()
class PriceRecurring {
  /// Specifies billing frequency. Either day, week, month or year.
  final RecurringInterval interval;

  /// The number of intervals (specified in the interval attribute) between
  /// subscription billings. For example, interval=month and interval_count=3
  /// bills every 3 months.
  @JsonKey(name: 'interval_count')
  final int intervalCount;

  /// Default number of trial days when subscribing a customer to this price using trial_from_plan=true.
  @JsonKey(name: 'trial_period_days')
  final int? trialPeriodDays;

  /// Configures how the quantity per period should be determined. One of licensed or metered.
  @JsonKey(name: 'usage_type')
  final UsageType usageType;

  PriceRecurring({
    required this.interval,
    required this.intervalCount,
    this.trialPeriodDays,
    required this.usageType,
  });

  factory PriceRecurring.fromJson(Map<String, dynamic> json) =>
      _$PriceRecurringFromJson(json);
  Map<String, dynamic> toJson() => _$PriceRecurringToJson(this);
}

/// https://stripe.com/docs/api/prices/object
@JsonSerializable()
class Price extends Message {
  final _PriceObject object;

  /// Unique identifier for the object.
  final String id;

  /// Whether the price can be used for new purchases.
  final bool active;

  /// Three-letter ISO currency code, in lowercase. Must be a supported
  /// currency.
  final String currency;

  /// The ID of the product this price is associated with.
  final String product;

  /// One of one_time or recurring depending on whether the price is for a
  /// one-time purchase or a recurring (subscription) purchase.
  final PriceType type;

  /// The unit amount in cents to be charged, represented as a whole integer if
  /// possible. Only set if billing_scheme=per_unit.
  final int unitAmount;

  /// A brief description of the price, hidden from customers.
  final String? nickname;

  /// The recurring components of a price such as interval and usage_type.
  final PriceRecurring? recurring;

  Price({
    required this.object,
    required this.id,
    required this.active,
    required this.currency,
    required this.product,
    required this.type,
    required this.unitAmount,
    this.nickname,
    this.recurring,
  });

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PriceToJson(this);
}
