// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Group _$$_GroupFromJson(Map<String, dynamic> json) => _$_Group(
      action: json['action'] == null
          ? null
          : Action.fromJson(json['action'] as Map<String, dynamic>),
      devicemembership: json['devicemembership'] as List<dynamic>?,
      etag: json['etag'] as String?,
      hidden: json['hidden'] as bool?,
      id: json['id'] as String?,
      lights: json['lights'] as List<dynamic>?,
      lightsequence: json['lightsequence'] as List<dynamic>?,
      multideviceids: json['multideviceids'] as List<dynamic>?,
      name: json['name'] as String?,
      scenes: json['scenes'] as List<dynamic>?,
      state: json['state'] == null
          ? null
          : The1.fromJson(json['state'] as Map<String, dynamic>),
      type: json['type'] as String?,
      selected: json['selected'] as bool?,
    );

Map<String, dynamic> _$$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'action': instance.action,
      'devicemembership': instance.devicemembership,
      'etag': instance.etag,
      'hidden': instance.hidden,
      'id': instance.id,
      'lights': instance.lights,
      'lightsequence': instance.lightsequence,
      'multideviceids': instance.multideviceids,
      'name': instance.name,
      'scenes': instance.scenes,
      'state': instance.state,
      'type': instance.type,
      'selected': instance.selected,
    };

_$_Action _$$_ActionFromJson(Map<String, dynamic> json) => _$_Action(
      alert: json['alert'] as String?,
      bri: json['bri'] as int?,
      colormode: json['colormode'] as String?,
      ct: json['ct'] as int?,
      effect: json['effect'] as String?,
      hue: json['hue'] as int?,
      on: json['on'] as bool?,
      sat: json['sat'] as int?,
      scene: json['scene'],
      xy: (json['xy'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_ActionToJson(_$_Action instance) => <String, dynamic>{
      'alert': instance.alert,
      'bri': instance.bri,
      'colormode': instance.colormode,
      'ct': instance.ct,
      'effect': instance.effect,
      'hue': instance.hue,
      'on': instance.on,
      'sat': instance.sat,
      'scene': instance.scene,
      'xy': instance.xy,
    };

_$_The1 _$$_The1FromJson(Map<String, dynamic> json) => _$_The1(
      all_on: json['all_on'] as bool?,
      any_on: json['any_on'] as bool?,
    );

Map<String, dynamic> _$$_The1ToJson(_$_The1 instance) => <String, dynamic>{
      'all_on': instance.all_on,
      'any_on': instance.any_on,
    };
