// To parse this JSON data, do
//
//     final sceneAttribute = sceneAttributeFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'scene_attribute.freezed.dart';
part 'scene_attribute.g.dart';

SceneAttribute sceneAttributeFromJson(String str) => SceneAttribute.fromJson(json.decode(str));

String sceneAttributeToJson(SceneAttribute data) => json.encode(data.toJson());

@freezed
class SceneAttribute with _$SceneAttribute {
  const factory SceneAttribute({
    List<Light>? lights,
    String? name,
    int? state,
  }) = _SceneAttribute;

  factory SceneAttribute.fromJson(Map<String, dynamic> json) => _$SceneAttributeFromJson(json);
}

@freezed
class Light with _$Light {
  const factory Light({
    int? bri,
    String? id,
    bool? on,
    int? transitiontime,
    int? x,
    int? y,
  }) = _Light;

  factory Light.fromJson(Map<String, dynamic> json) => _$LightFromJson(json);
}
