// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_systems.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlarmSystem _$$_AlarmSystemFromJson(Map<String, dynamic> json) =>
    _$_AlarmSystem(
      the1: json['1'] == null
          ? null
          : The1.fromJson(json['1'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AlarmSystemToJson(_$_AlarmSystem instance) =>
    <String, dynamic>{
      '1': instance.the1,
    };

_$_The1 _$$_The1FromJson(Map<String, dynamic> json) => _$_The1(
      name: json['name'] as String?,
      config: json['config'] == null
          ? null
          : Config.fromJson(json['config'] as Map<String, dynamic>),
      state: json['state'] == null
          ? null
          : State.fromJson(json['state'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_The1ToJson(_$_The1 instance) => <String, dynamic>{
      'name': instance.name,
      'config': instance.config,
      'state': instance.state,
    };

_$_Config _$$_ConfigFromJson(Map<String, dynamic> json) => _$_Config(
      armmode: json['armmode'] as String?,
      configured: json['configured'] as bool?,
      disarmedEntryDelay: json['disarmed_entry_delay'] as int?,
      disarmedExitDelay: json['disarmed_exit_delay'] as int?,
      armedAwayEntryDelay: json['armed_away_entry_delay'] as int?,
      armedAwayExitDelay: json['armed_away_exit_delay'] as int?,
      armedAwayTriggerDuration: json['armed_away_trigger_duration'] as int?,
      armedStayEntryDelay: json['armed_stay_entry_delay'] as int?,
      armedStayExitDelay: json['armed_stay_exit_delay'] as int?,
      armedStayTriggerDuration: json['armed_stay_trigger_duration'] as int?,
      armedNightEntryDelay: json['armed_night_entry_delay'] as int?,
      armedNightExitDelay: json['armed_night_exit_delay'] as int?,
      armedNightTriggerDuration: json['armed_night_trigger_duration'] as int?,
    );

Map<String, dynamic> _$$_ConfigToJson(_$_Config instance) => <String, dynamic>{
      'armmode': instance.armmode,
      'configured': instance.configured,
      'disarmed_entry_delay': instance.disarmedEntryDelay,
      'disarmed_exit_delay': instance.disarmedExitDelay,
      'armed_away_entry_delay': instance.armedAwayEntryDelay,
      'armed_away_exit_delay': instance.armedAwayExitDelay,
      'armed_away_trigger_duration': instance.armedAwayTriggerDuration,
      'armed_stay_entry_delay': instance.armedStayEntryDelay,
      'armed_stay_exit_delay': instance.armedStayExitDelay,
      'armed_stay_trigger_duration': instance.armedStayTriggerDuration,
      'armed_night_entry_delay': instance.armedNightEntryDelay,
      'armed_night_exit_delay': instance.armedNightExitDelay,
      'armed_night_trigger_duration': instance.armedNightTriggerDuration,
    };

_$_Devices _$$_DevicesFromJson(Map<String, dynamic> json) => _$_Devices(
      ec1BBdFfFe6FC34D010501: json['ec1BBdFfFe6FC34D010501'] == null
          ? null
          : Ec1BBdFfFe6FC34D010501.fromJson(
              json['ec1BBdFfFe6FC34D010501'] as Map<String, dynamic>),
      the00158D0002Af95F9010101: json['the00158D0002Af95F9010101'] == null
          ? null
          : The00158D0002Af95F9010101.fromJson(
              json['the00158D0002Af95F9010101'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DevicesToJson(_$_Devices instance) =>
    <String, dynamic>{
      'ec1BBdFfFe6FC34D010501': instance.ec1BBdFfFe6FC34D010501,
      'the00158D0002Af95F9010101': instance.the00158D0002Af95F9010101,
    };

_$_Ec1BBdFfFe6FC34D010501 _$$_Ec1BBdFfFe6FC34D010501FromJson(
        Map<String, dynamic> json) =>
    _$_Ec1BBdFfFe6FC34D010501(
      armmask: json['armmask'] as String?,
    );

Map<String, dynamic> _$$_Ec1BBdFfFe6FC34D010501ToJson(
        _$_Ec1BBdFfFe6FC34D010501 instance) =>
    <String, dynamic>{
      'armmask': instance.armmask,
    };

_$_The00158D0002Af95F9010101 _$$_The00158D0002Af95F9010101FromJson(
        Map<String, dynamic> json) =>
    _$_The00158D0002Af95F9010101(
      armmask: json['armmask'] as String?,
      trigger: json['trigger'] as String?,
    );

Map<String, dynamic> _$$_The00158D0002Af95F9010101ToJson(
        _$_The00158D0002Af95F9010101 instance) =>
    <String, dynamic>{
      'armmask': instance.armmask,
      'trigger': instance.trigger,
    };

_$_State _$$_StateFromJson(Map<String, dynamic> json) => _$_State(
      armstate: json['armstate'] as String?,
      secondsRemaining: json['seconds_remaining'] as int?,
    );

Map<String, dynamic> _$$_StateToJson(_$_State instance) => <String, dynamic>{
      'armstate': instance.armstate,
      'seconds_remaining': instance.secondsRemaining,
    };
