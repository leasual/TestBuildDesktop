// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      name: json['name'] as String?,
      groupId: json['groupId'] as String?,
      taskId: json['taskId'] as String?,
      progress: json['progress'] as int?,
      total: json['total'] as int?,
      start: json['start'] as bool?,
      onOff: json['onOff'] as bool?,
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'name': instance.name,
      'groupId': instance.groupId,
      'taskId': instance.taskId,
      'progress': instance.progress,
      'total': instance.total,
      'start': instance.start,
      'onOff': instance.onOff,
    };
