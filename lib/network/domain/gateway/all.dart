import 'dart:ui';

import 'package:deconz_app/network/domain/alarm/alarm_systems.dart';
import 'package:deconz_app/network/domain/group/group.dart';
import 'package:deconz_app/network/domain/schedule/schedule.dart';
import 'package:deconz_app/network/domain/scene/scene.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../configuration/configuration.dart';
import '../light/light.dart';
import '../rule/rule.dart';
import '../sensor/sensor.dart';

part 'all.freezed.dart';
part 'all.g.dart';

@freezed
class All with _$All {
  factory All({
    required AlarmSystem? alarmsystems,
    required Configuration? config,
    required Map<String, Group>? groups,
    required Map<String, Light>? lights,
    required Map<String, Rule>? rules,
    required Map<String, Scene>? scenes,
    required Map<String, Schedule>? schedules,
    required Map<String, Sensor>? sensors
  }) = _All;

  factory All.fromJson(Map<String, dynamic> json) => _$AllFromJson(json);
}