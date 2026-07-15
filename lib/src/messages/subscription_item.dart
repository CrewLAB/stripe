part of '../../messages.dart';

// ignore: constant_identifier_names
enum _SubscriptionItemObject { subscription_item }

/// https://stripe.com/docs/api/subscription_items/object
@JsonSerializable()
class SubscriptionItem {
  final _SubscriptionItemObject object;

  /// Unique identifier for the object.
  final String id;

  /// The price the customer is subscribed to.
  final Price price;

  /// The subscription this subscription_item belongs to.
  final String subscription;

  /// Start of the current period that the subscription item has been invoiced for.
  @TimestampConverter()
  @JsonKey(name: 'current_period_start')
  final DateTime currentPeriodStart;

  /// End of the current period that the subscription item has been invoiced for.
  @TimestampConverter()
  @JsonKey(name: 'current_period_end')
  final DateTime currentPeriodEnd;

  /// The quantity of the plan to which the customer should be subscribed.
  final int? quantity;

  SubscriptionItem({
    required this.object,
    required this.id,
    required this.price,
    required this.subscription,
    required this.currentPeriodStart,
    required this.currentPeriodEnd,
    this.quantity,
  });

  factory SubscriptionItem.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionItemFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionItemToJson(this);
}
