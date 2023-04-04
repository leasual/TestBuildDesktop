// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scene.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Scene _$$_SceneFromJson(Map<String, dynamic> json) => _$_Scene(
      lights:
          (json['lights'] as List<dynamic>?)?.map((e) => e as String).toList(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_SceneToJson(_$_Scene instance) => <String, dynamic>{
      'lights': instance.lights,
      'name': instance.name,
    };
