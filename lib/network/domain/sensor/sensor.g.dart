// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sensor _$$_SensorFromJson(Map<String, dynamic> json) => _$_Sensor(
      config: json['config'] == null
          ? null
          : Config.fromJson(json['config'] as Map<String, dynamic>),
      ep: json['ep'] as int?,
      etag: json['etag'] as String?,
      lastseen: json['lastseen'] as String?,
      manufacturername: json['manufacturername'] as String?,
      modelid: json['modelid'] as String?,
      name: json['name'] as String?,
      state: json['state'],
      swversion: json['swversion'] as String?,
      type: json['type'] as String?,
      uniqueid: json['uniqueid'] as String?,
    );

Map<String, dynamic> _$$_SensorToJson(_$_Sensor instance) => <String, dynamic>{
      'config': instance.config,
      'ep': instance.ep,
      'etag': instance.etag,
      'lastseen': instance.lastseen,
      'manufacturername': instance.manufacturername,
      'modelid': instance.modelid,
      'name': instance.name,
      'state': instance.state,
      'swversion': instance.swversion,
      'type': instance.type,
      'uniqueid': instance.uniqueid,
    };

_$_Config _$$_ConfigFromJson(Map<String, dynamic> json) => _$_Config(
      on: json['on'] as bool?,
      reachable: json['reachable'] as bool?,
    );

Map<String, dynamic> _$$_ConfigToJson(_$_Config instance) => <String, dynamic>{
      'on': instance.on,
      'reachable': instance.reachable,
    };
