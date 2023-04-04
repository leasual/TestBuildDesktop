// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_All _$$_AllFromJson(Map<String, dynamic> json) => _$_All(
      alarmsystems: json['alarmsystems'] == null
          ? null
          : AlarmSystem.fromJson(json['alarmsystems'] as Map<String, dynamic>),
      config: json['config'] == null
          ? null
          : Configuration.fromJson(json['config'] as Map<String, dynamic>),
      groups: (json['groups'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Group.fromJson(e as Map<String, dynamic>)),
      ),
      lights: (json['lights'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Light.fromJson(e as Map<String, dynamic>)),
      ),
      rules: (json['rules'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Rule.fromJson(e as Map<String, dynamic>)),
      ),
      scenes: (json['scenes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Scene.fromJson(e as Map<String, dynamic>)),
      ),
      schedules: (json['schedules'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Schedule.fromJson(e as Map<String, dynamic>)),
      ),
      sensors: (json['sensors'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Sensor.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_AllToJson(_$_All instance) => <String, dynamic>{
      'alarmsystems': instance.alarmsystems,
      'config': instance.config,
      'groups': instance.groups,
      'lights': instance.lights,
      'rules': instance.rules,
      'scenes': instance.scenes,
      'schedules': instance.schedules,
      'sensors': instance.sensors,
    };
