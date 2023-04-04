// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupAttribute _$$_GroupAttributeFromJson(Map<String, dynamic> json) =>
    _$_GroupAttribute(
      action: json['action'] == null
          ? null
          : Action.fromJson(json['action'] as Map<String, dynamic>),
      devicemembership: json['devicemembership'] as List<dynamic>?,
      etag: json['etag'] as String?,
      hidden: json['hidden'] as bool?,
      id: json['id'] as String?,
      lights:
          (json['lights'] as List<dynamic>?)?.map((e) => e as String).toList(),
      lightsequence: (json['lightsequence'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      multideviceids: (json['multideviceids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      name: json['name'] as String?,
      scenes: (json['scenes'] as List<dynamic>?)
          ?.map((e) => Scene.fromJson(e as Map<String, dynamic>))
          .toList(),
      state: json['state'] as int?,
    );

Map<String, dynamic> _$$_GroupAttributeToJson(_$_GroupAttribute instance) =>
    <String, dynamic>{
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
    };

_$_Action _$$_ActionFromJson(Map<String, dynamic> json) => _$_Action(
      bri: json['bri'] as int?,
      ct: json['ct'] as int?,
      effect: json['effect'] as String?,
      hue: json['hue'] as int?,
      on: json['on'] as bool?,
      sat: json['sat'] as int?,
      xy: (json['xy'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_ActionToJson(_$_Action instance) => <String, dynamic>{
      'bri': instance.bri,
      'ct': instance.ct,
      'effect': instance.effect,
      'hue': instance.hue,
      'on': instance.on,
      'sat': instance.sat,
      'xy': instance.xy,
    };

_$_Scene _$$_SceneFromJson(Map<String, dynamic> json) => _$_Scene(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_SceneToJson(_$_Scene instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
