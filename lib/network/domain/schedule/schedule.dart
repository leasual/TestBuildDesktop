// To parse this JSON data, do
//
//     final schedules = schedulesFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'schedule.freezed.dart';
part 'schedule.g.dart';

Map<String, Schedule> schedulesFromJson(String str) => Map.from(json.decode(str)).map((k, v) => MapEntry<String, Schedule>(k, Schedule.fromJson(v)));

String schedulesToJson(Map<String, Schedule> data) => json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    bool? autodelete,
    Command? command,
    String? description,
    String? etag,
    String? name,
    String? status,
    String? time,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);
}

@freezed
class Command with _$Command {
  const factory Command({
    String? address,
    String? method,
    Body? body,
  }) = _Command;

  factory Command.fromJson(Map<String, dynamic> json) => _$CommandFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    bool? on,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}
