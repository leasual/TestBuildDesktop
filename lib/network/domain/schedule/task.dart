// To parse this JSON data, do
//
//     final task = taskFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'task.freezed.dart';
part 'task.g.dart';

List<Task> taskFromJson(String str) => List<Task>.from(json.decode(str).map((x) => Task.fromJson(x)));

String taskToJson(List<Task> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Task with _$Task {
  const factory Task({
    String? name,
    String? groupId,
    String? taskId,
    int? progress,
    int? total,
    bool? start,
    bool? onOff,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
