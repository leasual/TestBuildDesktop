
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../base/base_repository.dart';
import '../../network/dio_provider.dart';
import '../../network/domain/schedule/task.dart';
import '../../utils/logger.dart';
import '../../utils/shared_preferences.dart';

part 'schedule_repository.g.dart';

class ScheduleRepository extends BaseRepository {
  ScheduleRepository({required super.service, required this.sharedPreferences});
  final SharedPreferences sharedPreferences;

  Future<Map<String, Task>> getAllSchedules() async {
    final task = sharedPreferences.getString('task');
    logger.d('get task= $task');
    final taskMap = <String, Task>{};
    if(task != null && task.isNotEmpty) {
      taskFromJson(task).forEach((element) {
        if(element.taskId != null && element.taskId!.isNotEmpty) {
          // logger.d('get task add= $element');
          taskMap[element.taskId!] = element;
        }
      });
      logger.d('get task taskMap= $taskMap');
    }
    return taskMap;
  }

  Future<String> deleteSchedule(String taskId) async {
    final task = sharedPreferences.getString('task');
    String? taskName = '';
    if(task != null && task.isNotEmpty) {
      final taskMap = <String, Task>{};
      taskFromJson(task).forEach((element) {
        if(element.taskId != null && element.taskId!.isNotEmpty && element.taskId != taskId) {
          taskMap[element.taskId!] = element;
        } else {
          taskName = element.name;
          logger.d('delete task= $element');
        }
      });
      final taskJson = taskToJson(taskMap.values.toList());
      logger.d('after delete taskJson= $taskJson');
      sharedPreferences.setString('task', taskJson);
    }
    return 'Delete schedule [$taskName] success';
  }

  Future<String> addSchedule(String scheduleName, String count, String groupId) async {
    final task = sharedPreferences.getString('task');
    logger.d('tasks= $task');
    final taskMap = <String, Task>{};
    if (task != null && task.isNotEmpty) {
      taskFromJson(task).forEach((element) {
        if (element.taskId != null && element.taskId!.isNotEmpty) {
          taskMap[element.taskId!] = element;
        }
      });
    }
    int total = 0;
    try {
      total = int.parse(count);
    } catch (e) {
      logger.e('e= $e');
    }
    final newTask = Task(
        name: scheduleName,
        groupId: groupId,
        taskId: DateTime.now().microsecondsSinceEpoch.toString(),
        progress: 0,
        total: total,
        start: false,
        onOff: false);
    taskMap[groupId] = newTask;
    final taskJson = taskToJson(taskMap.values.toList());
    logger.d('add taskJson= $taskJson');
    sharedPreferences.setString('task', taskJson);
    return 'Add schedule [$scheduleName] success';
  }
}

@riverpod
ScheduleRepository scheduleRepository(ScheduleRepositoryRef ref) =>
    ScheduleRepository(service: ref.watch(dioProvider), sharedPreferences: ref.watch(sharedPreferencesProvider));