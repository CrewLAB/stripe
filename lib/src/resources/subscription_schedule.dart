import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class SubscriptionScheduleResource extends Resource<SubscriptionSchedule> {
  SubscriptionScheduleResource(Client client) : super(client);

  Future<SubscriptionSchedule> retrieve(String id) async {
    final response = await get('subscription_schedules/$id');
    return SubscriptionSchedule.fromJson(response);
  }

  Future<DataList<SubscriptionSchedule>> list(
      [ListSubscriptionSchedulesRequest? request]) async {
    final map = await get('subscription_schedules',
        queryParameters: request?.toJson());
    return DataList<SubscriptionSchedule>.fromJson(map,
        (value) => SubscriptionSchedule.fromJson(value as Map<String, dynamic>));
  }

  Future<SubscriptionSchedule> create(
      CreateSubscriptionScheduleRequest request) async {
    final response =
        await post('subscription_schedules', data: request.toJson());
    return SubscriptionSchedule.fromJson(response);
  }

  Future<SubscriptionSchedule> cancel(String id) async {
    final response = await post('subscription_schedules/$id/cancel');
    return SubscriptionSchedule.fromJson(response);
  }

  Future<SubscriptionSchedule> release(String id) async {
    final response = await post('subscription_schedules/$id/release');
    return SubscriptionSchedule.fromJson(response);
  }
}
