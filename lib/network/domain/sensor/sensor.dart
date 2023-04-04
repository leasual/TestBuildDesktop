// To parse this JSON data, do
//
//     final sensors = sensorsFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'sensor.freezed.dart';
part 'sensor.g.dart';

Map<String, Sensor> sensorsFromJson(Map<String, dynamic> data) => data.map((k, v) => MapEntry<String, Sensor>(k, Sensor.fromJson(v)));

String sensorsToJson(Map<String, Sensor> data) => json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

@freezed
class Sensor with _$Sensor {
  const factory Sensor({
    Config? config,
    int? ep,
    String? etag,
    String? lastseen,
    String? manufacturername,
    String? modelid,
    String? name,
    Object? state,
    String? swversion,
    String? type,
    String? uniqueid,
  }) = _Sensor;

  factory Sensor.fromJson(Map<String, dynamic> json) => _$SensorFromJson(json);
}

@freezed
class Config with _$Config {
  const factory Config({
    bool? on,
    bool? reachable,
  }) = _Config;

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
}

// @freezed
// class State with _$State {
//   const factory State({
//     DateTime? lastupdated,
//   }) = _State;
//
//   factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);
// }
