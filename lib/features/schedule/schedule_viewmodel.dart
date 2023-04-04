import 'package:deconz_app/features/group/group_repository.dart';
import 'package:deconz_app/features/schedule/schedule_repository.dart';
import 'package:deconz_app/utils/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../network/domain/schedule/task.dart';
import '../../utils/shared_preferences.dart';

part 'schedule_viewmodel.g.dart';

@riverpod
class ScheduleViewModel extends _$ScheduleViewModel {
  @override
  FutureOr<dynamic> build() async {
    return null;
  }

  Future<void> startTaskSchedule(Map<String, Task> taskList, Task? task) async {
    logger.d('start task= $task');
    if(task?.start == false) {
      return;
    }
    if(task != null && taskList.isNotEmpty && task.progress! < task.total!) {
      final on = await ref.read(groupRepositoryProvider).setGroupState(id: task.groupId!, on: task.onOff!);
      logger.d('on= $on');
      final off = await ref.read(groupRepositoryProvider).setGroupState(id: task.groupId!, on: !task.onOff!);
      logger.d('off= $off');

      final progress = task.progress! + 1;
      Task current = task.copyWith(progress: progress);
      taskList[task.taskId!] = current;
      if(task.progress! == task.total! - 1) {
        current = current.copyWith(start: false);
      }
      ref.read(sharedPreferencesProvider).setString('task', taskToJson(taskList.values.toList()));
      await ref.read(scheduleViewModelProvider.notifier).getAllSchedules();
      await Future.delayed(const Duration(seconds: 2));
      await startTaskSchedule(taskList, current);
    }
  }

  Future<void> getAllSchedules() async {
      final repository = ref.read(scheduleRepositoryProvider);
      final tasks = await repository.getAllSchedules();
      logger.d('get task= $tasks');
      state = AsyncValue.data(tasks);
  }

  Future<void> deleteSchedule(String taskId) async {
    final repository = ref.read(scheduleRepositoryProvider);
      state = await AsyncValue.guard(() => repository.deleteSchedule(taskId));
      state = await AsyncValue.guard(() => repository.getAllSchedules());
  }

  Future<dynamic> setGroupState(String id, bool onOff) async {
    final repository = ref.read(groupRepositoryProvider);
    return repository.setGroupState(id: id, on: onOff);
  }
}
