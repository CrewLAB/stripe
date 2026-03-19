part of '../../../messages.dart';

/// https://stripe.com/docs/api/subscriptions/list
@JsonSerializable()
class ListSubscriptionsRequest {
  /// The ID of the customer whose subscriptions will be retrieved.
  final String? customer;

  /// Filter for subscriptions that contain this recurring price ID.
  final String? price;

  /// The status of the subscriptions to retrieve. Passing in a value of
  /// canceled will return all canceled subscriptions, including those belonging
  /// to deleted customers. Pass ended to find subscriptions that are canceled
  /// and subscriptions that are expired due to incomplete payment. Passing in a
  /// value of all will return subscriptions of all statuses.
  final SubscriptionStatus? status;

  /// A limit on the number of objects to be returned. Limit can range between
  /// 1 and 100, and the default is 10.
  final int? limit;

  /// A cursor for use in pagination. `starting_after` is an object ID that
  /// defines your place in the list.
  @JsonKey(name: 'starting_after')
  final String? startingAfter;

  ListSubscriptionsRequest({
    this.customer,
    this.price,
    this.status,
    this.limit,
    this.startingAfter,
  });

  factory ListSubscriptionsRequest.fromJson(Map<String, dynamic> json) =>
      _$ListSubscriptionsRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ListSubscriptionsRequestToJson(this);
}
