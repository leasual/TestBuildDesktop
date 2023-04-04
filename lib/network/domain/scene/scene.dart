// To parse this JSON data, do
//
//     final scene = sceneFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'scene.freezed.dart';
part 'scene.g.dart';

Map<String, Scene> sceneFromJson(String str) => Map.from(json.decode(str)).map((k, v) => MapEntry<String, Scene>(k, Scene.fromJson(v)));

String sceneToJson(Map<String, Scene> data) => json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

@freezed
class Scene with _$Scene {
  const factory Scene({
    List<String>? lights,
    String? name,
  }) = _Scene;

  factory Scene.fromJson(Map<String, dynamic> json) => _$SceneFromJson(json);
}
