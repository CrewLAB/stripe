part of '../../messages.dart';

// ignore: constant_identifier_names
enum _SubscriptionScheduleObject { subscription_schedule }

enum SubscriptionScheduleStatus {
  // ignore: constant_identifier_names
  not_started,
  active,
  completed,
  released,
  canceled,
}

enum SubscriptionScheduleEndBehavior {
  release,
  cancel,
}

enum SubscriptionScheduleProrationBehavior {
  // ignore: constant_identifier_names
  create_prorations,
  // ignore: constant_identifier_names
  always_invoice,
  none,
}

enum SubscriptionScheduleBillingCycleAnchor {
  automatic,
  // ignore: constant_identifier_names
  phase_start,
}

enum SubscriptionScheduleCollectionMethod {
  // ignore: constant_identifier_names
  charge_automatically,
  // ignore: constant_identifier_names
  send_invoice,
}

/// https://stripe.com/docs/api/subscription_schedules/object#subscription_schedule_object-current_phase
@JsonSerializable()
class SubscriptionScheduleCurrentPhase {
  @JsonKey(name: 'start_date')
  @TimestampConverter()
  final DateTime startDate;

  @JsonKey(name: 'end_date')
  @TimestampConverter()
  final DateTime endDate;

  SubscriptionScheduleCurrentPhase({
    required this.startDate,
    required this.endDate,
  });

  factory SubscriptionScheduleCurrentPhase.fromJson(
          Map<String, dynamic> json) =>
      _$SubscriptionScheduleCurrentPhaseFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubscriptionScheduleCurrentPhaseToJson(this);
}

/// https://stripe.com/docs/api/subscription_schedules/object#subscription_schedule_object-phases-items
@JsonSerializable()
class SubscriptionSchedulePhaseItem {
  final String? price;
  final int? quantity;
  final Map<String, dynamic>? metadata;

  SubscriptionSchedulePhaseItem({
    this.price,
    this.quantity,
    this.metadata,
  });

  factory SubscriptionSchedulePhaseItem.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionSchedulePhaseItemFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionSchedulePhaseItemToJson(this);
}

/// https://stripe.com/docs/api/subscription_schedules/object#subscription_schedule_object-phases
@JsonSerializable()
class SubscriptionSchedulePhase {
  final List<SubscriptionSchedulePhaseItem> items;

  @JsonKey(name: 'start_date')
  @TimestampConverter()
  final DateTime startDate;

  @JsonKey(name: 'end_date')
  @TimestampConverter()
  final DateTime endDate;

  @JsonKey(name: 'trial_end')
  @TimestampConverter()
  final DateTime? trialEnd;

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

  final bool? trial;

  SubscriptionSchedulePhase({
    required this.items,
    required this.startDate,
    required this.endDate,
    this.trialEnd,
    this.currency,
    this.collectionMethod,
    this.defaultPaymentMethod,
    this.description,
    this.metadata,
    this.billingCycleAnchor,
    this.prorationBehavior,
    this.applicationFeePercent,
    this.onBehalfOf,
    this.trial,
  });

  factory SubscriptionSchedulePhase.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionSchedulePhaseFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionSchedulePhaseToJson(this);
}

/// https://stripe.com/docs/api/subscription_schedules/object
@JsonSerializable()
class SubscriptionSchedule extends Message {
  final _SubscriptionScheduleObject object;

  final String id;

  final String customer;

  final SubscriptionScheduleStatus status;

  @JsonKey(name: 'end_behavior')
  final SubscriptionScheduleEndBehavior endBehavior;

  final List<SubscriptionSchedulePhase> phases;

  @TimestampConverter()
  final DateTime created;

  @JsonKey(name: 'current_phase')
  final SubscriptionScheduleCurrentPhase? currentPhase;

  final String? subscription;

  @JsonKey(name: 'released_subscription')
  final String? releasedSubscription;

  @JsonKey(name: 'canceled_at')
  @TimestampConverter()
  final DateTime? canceledAt;

  @JsonKey(name: 'completed_at')
  @TimestampConverter()
  final DateTime? completedAt;

  @JsonKey(name: 'released_at')
  @TimestampConverter()
  final DateTime? releasedAt;

  final bool livemode;

  final Map<String, dynamic>? metadata;

  @JsonKey(name: 'test_clock')
  final String? testClock;

  SubscriptionSchedule({
    required this.object,
    required this.id,
    required this.customer,
    required this.status,
    required this.endBehavior,
    required this.phases,
    required this.created,
    required this.livemode,
    this.currentPhase,
    this.subscription,
    this.releasedSubscription,
    this.canceledAt,
    this.completedAt,
    this.releasedAt,
    this.metadata,
    this.testClock,
  });

  factory SubscriptionSchedule.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionScheduleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionScheduleToJson(this);
}
