// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Schedule _$$_ScheduleFromJson(Map<String, dynamic> json) => _$_Schedule(
      autodelete: json['autodelete'] as bool?,
      command: json['command'] == null
          ? null
          : Command.fromJson(json['command'] as Map<String, dynamic>),
      description: json['description'] as String?,
      etag: json['etag'] as String?,
      name: json['name'] as String?,
      status: json['status'] as String?,
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$_ScheduleToJson(_$_Schedule instance) =>
    <String, dynamic>{
      'autodelete': instance.autodelete,
      'command': instance.command,
      'description': instance.description,
      'etag': instance.etag,
      'name': instance.name,
      'status': instance.status,
      'time': instance.time,
    };

_$_Command _$$_CommandFromJson(Map<String, dynamic> json) => _$_Command(
      address: json['address'] as String?,
      method: json['method'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CommandToJson(_$_Command instance) =>
    <String, dynamic>{
      'address': instance.address,
      'method': instance.method,
      'body': instance.body,
    };

_$_Body _$$_BodyFromJson(Map<String, dynamic> json) => _$_Body(
      on: json['on'] as bool?,
    );

Map<String, dynamic> _$$_BodyToJson(_$_Body instance) => <String, dynamic>{
      'on': instance.on,
    };
