// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'light_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LightState _$$_LightStateFromJson(Map<String, dynamic> json) =>
    _$_LightState(
      etag: json['etag'] as String?,
      hascolor: json['hascolor'] as bool?,
      manufacturer: json['manufacturer'] as String?,
      modelid: json['modelid'] as String?,
      name: json['name'] as String?,
      pointsymbol: json['pointsymbol'] == null
          ? null
          : Pointsymbol.fromJson(json['pointsymbol'] as Map<String, dynamic>),
      state: json['state'] == null
          ? null
          : State.fromJson(json['state'] as Map<String, dynamic>),
      swversion: json['swversion'] as String?,
      type: json['type'] as String?,
      uniqueid: json['uniqueid'] as String?,
    );

Map<String, dynamic> _$$_LightStateToJson(_$_LightState instance) =>
    <String, dynamic>{
      'etag': instance.etag,
      'hascolor': instance.hascolor,
      'manufacturer': instance.manufacturer,
      'modelid': instance.modelid,
      'name': instance.name,
      'pointsymbol': instance.pointsymbol,
      'state': instance.state,
      'swversion': instance.swversion,
      'type': instance.type,
      'uniqueid': instance.uniqueid,
    };

_$_Pointsymbol _$$_PointsymbolFromJson(Map<String, dynamic> json) =>
    _$_Pointsymbol();

Map<String, dynamic> _$$_PointsymbolToJson(_$_Pointsymbol instance) =>
    <String, dynamic>{};

_$_State _$$_StateFromJson(Map<String, dynamic> json) => _$_State(
      alert: json['alert'] as String?,
      bri: json['bri'] as int?,
      colormode: json['colormode'] as String?,
      ct: json['ct'] as int?,
      effect: json['effect'] as String?,
      hue: json['hue'] as int?,
      on: json['on'] as bool?,
      reachable: json['reachable'] as bool?,
      sat: json['sat'] as int?,
      xy: (json['xy'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_StateToJson(_$_State instance) => <String, dynamic>{
      'alert': instance.alert,
      'bri': instance.bri,
      'colormode': instance.colormode,
      'ct': instance.ct,
      'effect': instance.effect,
      'hue': instance.hue,
      'on': instance.on,
      'reachable': instance.reachable,
      'sat': instance.sat,
      'xy': instance.xy,
    };
