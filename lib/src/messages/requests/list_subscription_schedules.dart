part of '../../../messages.dart';

@JsonSerializable()
class ListSubscriptionSchedulesRequest {
  final String? customer;
  final int? limit;

  @JsonKey(name: 'starting_after')
  final String? startingAfter;

  @JsonKey(name: 'ending_before')
  final String? endingBefore;

  ListSubscriptionSchedulesRequest({
    this.customer,
    this.limit,
    this.startingAfter,
    this.endingBefore,
  });

  factory ListSubscriptionSchedulesRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ListSubscriptionSchedulesRequestFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ListSubscriptionSchedulesRequestToJson(this);
}
