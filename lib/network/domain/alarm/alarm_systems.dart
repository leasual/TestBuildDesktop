// To parse this JSON data, do
//
//     final alarmSystem = alarmSystemFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'alarm_systems.freezed.dart';
part 'alarm_systems.g.dart';

AlarmSystem alarmSystemFromJson(String str) => AlarmSystem.fromJson(json.decode(str));

String alarmSystemToJson(AlarmSystem data) => json.encode(data.toJson());

@freezed
class AlarmSystem with _$AlarmSystem {
  const factory AlarmSystem({
    @JsonKey(name: '1') The1? the1,
  }) = _AlarmSystem;

  factory AlarmSystem.fromJson(Map<String, dynamic> json) => _$AlarmSystemFromJson(json);
}

@freezed
class The1 with _$The1 {
  const factory The1({
    String? name,
    Config? config,
    State? state,
    // Devices? devices,
  }) = _The1;

  factory The1.fromJson(Map<String, dynamic> json) => _$The1FromJson(json);
}

@freezed
class Config with _$Config {
  const factory Config({
    String? armmode,
    bool? configured,
    @JsonKey(name: 'disarmed_entry_delay') int? disarmedEntryDelay,
    @JsonKey(name: 'disarmed_exit_delay') int? disarmedExitDelay,
    @JsonKey(name: 'armed_away_entry_delay') int? armedAwayEntryDelay,
    @JsonKey(name: 'armed_away_exit_delay') int? armedAwayExitDelay,
    @JsonKey(name: 'armed_away_trigger_duration') int? armedAwayTriggerDuration,
    @JsonKey(name: 'armed_stay_entry_delay') int? armedStayEntryDelay,
    @JsonKey(name: 'armed_stay_exit_delay') int? armedStayExitDelay,
    @JsonKey(name: 'armed_stay_trigger_duration') int? armedStayTriggerDuration,
    @JsonKey(name: 'armed_night_entry_delay') int? armedNightEntryDelay,
    @JsonKey(name: 'armed_night_exit_delay') int? armedNightExitDelay,
    @JsonKey(name: 'armed_night_trigger_duration') int? armedNightTriggerDuration,
  }) = _Config;

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
}

@freezed
class Devices with _$Devices {
  const factory Devices({
    Ec1BBdFfFe6FC34D010501? ec1BBdFfFe6FC34D010501,
    The00158D0002Af95F9010101? the00158D0002Af95F9010101,
  }) = _Devices;

  factory Devices.fromJson(Map<String, dynamic> json) => _$DevicesFromJson(json);
}

@freezed
class Ec1BBdFfFe6FC34D010501 with _$Ec1BBdFfFe6FC34D010501 {
  const factory Ec1BBdFfFe6FC34D010501({
    String? armmask,
  }) = _Ec1BBdFfFe6FC34D010501;

  factory Ec1BBdFfFe6FC34D010501.fromJson(Map<String, dynamic> json) => _$Ec1BBdFfFe6FC34D010501FromJson(json);
}

@freezed
class The00158D0002Af95F9010101 with _$The00158D0002Af95F9010101 {
  const factory The00158D0002Af95F9010101({
    String? armmask,
    String? trigger,
  }) = _The00158D0002Af95F9010101;

  factory The00158D0002Af95F9010101.fromJson(Map<String, dynamic> json) => _$The00158D0002Af95F9010101FromJson(json);
}

@freezed
class State with _$State {
  const factory State({
    @JsonKey(name: 'armstate') String? armstate,
    @JsonKey(name: 'seconds_remaining') int? secondsRemaining,
  }) = _State;

  factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);
}
