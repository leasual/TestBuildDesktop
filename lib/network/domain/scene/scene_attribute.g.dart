// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scene_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SceneAttribute _$$_SceneAttributeFromJson(Map<String, dynamic> json) =>
    _$_SceneAttribute(
      lights: (json['lights'] as List<dynamic>?)
          ?.map((e) => Light.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      state: json['state'] as int?,
    );

Map<String, dynamic> _$$_SceneAttributeToJson(_$_SceneAttribute instance) =>
    <String, dynamic>{
      'lights': instance.lights,
      'name': instance.name,
      'state': instance.state,
    };

_$_Light _$$_LightFromJson(Map<String, dynamic> json) => _$_Light(
      bri: json['bri'] as int?,
      id: json['id'] as String?,
      on: json['on'] as bool?,
      transitiontime: json['transitiontime'] as int?,
      x: json['x'] as int?,
      y: json['y'] as int?,
    );

Map<String, dynamic> _$$_LightToJson(_$_Light instance) => <String, dynamic>{
      'bri': instance.bri,
      'id': instance.id,
      'on': instance.on,
      'transitiontime': instance.transitiontime,
      'x': instance.x,
      'y': instance.y,
    };
