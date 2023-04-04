import 'dart:ffi';

import 'package:deconz_app/features/group/group_repository.dart';
import 'package:deconz_app/features/schedule/schedule_repository.dart';
import 'package:deconz_app/network/domain/schedule/task.dart';
import 'package:deconz_app/utils/logger.dart';
import 'package:deconz_app/utils/shared_preferences.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_schedule_viewmodel.g.dart';

@riverpod
class AddScheduleViewModel extends _$AddScheduleViewModel {
  @override
  FutureOr<dynamic> build() async {
    return null;
  }

  Future<void> addSchedule(
      String scheduleName, String count, String groupId) async {
    final repository = ref.read(scheduleRepositoryProvider);
    state = await AsyncValue.guard(() => repository.addSchedule(scheduleName, count, groupId));
  }

  Future<void> getAllGroups() async {
    final repository = ref.read(groupRepositoryProvider);
    final cancelToken = CancelToken();
    state = await AsyncValue.guard(() => repository.getGroups(cancelToken));
  }
}
