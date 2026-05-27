part of '../../../messages.dart';

/// The duration of a subscription schedule phase. This is an input-only field —
/// Stripe converts it to materialized start_date/end_date on the response object.
@JsonSerializable()
class CreateSubscriptionScheduleRequestPhaseDuration {
  /// Specifies billing frequency. Either day, week, month or year.
  final RecurringInterval interval;

  /// The number of intervals for this phase duration.
  @JsonKey(name: 'interval_count')
  final int intervalCount;

  CreateSubscriptionScheduleRequestPhaseDuration({
    required this.interval,
    required this.intervalCount,
  });

  factory CreateSubscriptionScheduleRequestPhaseDuration.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSubscriptionScheduleRequestPhaseDurationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$CreateSubscriptionScheduleRequestPhaseDurationToJson(this);
}

@JsonSerializable()
class CreateSubscriptionScheduleRequestPhaseItem {
  final String? price;
  final int? quantity;

  CreateSubscriptionScheduleRequestPhaseItem({
    this.price,
    this.quantity,
  });

  factory CreateSubscriptionScheduleRequestPhaseItem.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSubscriptionScheduleRequestPhaseItemFromJson(json);
  Map<String, dynamic> toJson() =>
      _$CreateSubscriptionScheduleRequestPhaseItemToJson(this);
}

@JsonSerializable()
class CreateSubscriptionScheduleRequestPhase {
  final List<CreateSubscriptionScheduleRequestPhaseItem> items;

  /// How long the phase lasts. Incompatible with end_date.
  final CreateSubscriptionScheduleRequestPhaseDuration? duration;

  @JsonKey(name: 'end_date')
  @TimestampConverter()
  final DateTime? endDate;

  @JsonKey(name: 'trial_end')
  @TimestampConverter()
  final DateTime? trialEnd;

  final bool? trial;

  final String? currency;

  @JsonKey(name: 'collection_method')
  final SubscriptionScheduleCollectionMethod? collectionMethod;

  @JsonKey(name: 'default_payment_method')
  final String? defaultPaymentMethod;

  final String? description;

  final Map<String, dynamic>? metadata;

  @JsonKey(name: 'billing_cycle_anchor')
  final SubscriptionScheduleBillingCycleAnchor? billingCycleAnchor;

  @JsonKey(name: 'proration_behavior')
  final SubscriptionScheduleProrationBehavior? prorationBehavior;

  @JsonKey(name: 'application_fee_percent')
  final double? applicationFeePercent;

  @JsonKey(name: 'on_behalf_of')
  final String? onBehalfOf;

  CreateSubscriptionScheduleRequestPhase({
    required this.items,
    this.duration,
    this.endDate,
    this.trialEnd,
    this.trial,
    this.currency,
    this.collectionMethod,
    this.defaultPaymentMethod,
    this.description,
    this.metadata,
    this.billingCycleAnchor,
    this.prorationBehavior,
    this.applicationFeePercent,
    this.onBehalfOf,
  });

  factory CreateSubscriptionScheduleRequestPhase.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSubscriptionScheduleRequestPhaseFromJson(json);
  Map<String, dynamic> toJson() =>
      _$CreateSubscriptionScheduleRequestPhaseToJson(this);
}

@JsonSerializable()
class CreateSubscriptionScheduleRequest {
  final String? customer;

  @JsonKey(name: 'from_subscription')
  final String? fromSubscription;

  @JsonKey(name: 'start_date')
  @TimestampConverter()
  final DateTime? startDate;

  @JsonKey(name: 'end_behavior')
  final SubscriptionScheduleEndBehavior? endBehavior;

  final List<CreateSubscriptionScheduleRequestPhase>? phases;

  final Map<String, dynamic>? metadata;

  CreateSubscriptionScheduleRequest({
    this.customer,
    this.fromSubscription,
    this.startDate,
    this.endBehavior,
    this.phases,
    this.metadata,
  });

  factory CreateSubscriptionScheduleRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSubscriptionScheduleRequestFromJson(json);
  Map<String, dynamic> toJson() =>
      _$CreateSubscriptionScheduleRequestToJson(this);
}
