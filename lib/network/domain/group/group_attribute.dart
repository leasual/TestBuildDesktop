// To parse this JSON data, do
//
//     final groupAttribute = groupAttributeFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'group_attribute.freezed.dart';
part 'group_attribute.g.dart';

GroupAttribute groupAttributeFromJson(String str) => GroupAttribute.fromJson(json.decode(str));

String groupAttributeToJson(GroupAttribute data) => json.encode(data.toJson());

@freezed
class GroupAttribute with _$GroupAttribute {
  const factory GroupAttribute({
    Action? action,
    List<dynamic>? devicemembership,
    String? etag,
    bool? hidden,
    String? id,
    List<String>? lights,
    List<String>? lightsequence,
    List<String>? multideviceids,
    String? name,
    List<Scene>? scenes,
    int? state,
  }) = _GroupAttribute;

  factory GroupAttribute.fromJson(Map<String, dynamic> json) => _$GroupAttributeFromJson(json);
}

@freezed
class Action with _$Action {
  const factory Action({
    int? bri,
    int? ct,
    String? effect,
    int? hue,
    bool? on,
    int? sat,
    List<int>? xy,
  }) = _Action;

  factory Action.fromJson(Map<String, dynamic> json) => _$ActionFromJson(json);
}

@freezed
class Scene with _$Scene {
  const factory Scene({
    String? id,
    String? name,
  }) = _Scene;

  factory Scene.fromJson(Map<String, dynamic> json) => _$SceneFromJson(json);
}
