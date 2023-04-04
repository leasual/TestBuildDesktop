// To parse this JSON data, do
//
//     final groups = groupsFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'group.freezed.dart';
part 'group.g.dart';

Map<String, Group> groupsFromJson(Map<String, dynamic> data) => data.map((k, v) => MapEntry<String, Group>(k, Group.fromJson(v)));

String groupsToJson(Map<String, Group> data) => json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

@freezed
class Group with _$Group {
  const factory Group({
    Action? action,
    List<dynamic>? devicemembership,
    String? etag,
    bool? hidden,
    String? id,
    List<dynamic>? lights,
    List<dynamic>? lightsequence,
    List<dynamic>? multideviceids,
    String? name,
    List<dynamic>? scenes,
    @JsonKey(name: 'state') The1? state,
    String? type,
    bool? selected,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}

@freezed
class Action with _$Action {
  const factory Action({
    String? alert,
    int? bri,
    String? colormode,
    int? ct,
    String? effect,
    int? hue,
    bool? on,
    int? sat,
    dynamic? scene,
    List<int>? xy,
  }) = _Action;

  factory Action.fromJson(Map<String, dynamic> json) => _$ActionFromJson(json);
}

@freezed
class The1 with _$The1 {
  const factory The1({
    bool? all_on,
    bool? any_on,
  }) = _The1;

  factory The1.fromJson(Map<String, dynamic> json) => _$The1FromJson(json);
}
