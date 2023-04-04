// To parse this JSON data, do
//
//     final light = lightFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'light.freezed.dart';
part 'light.g.dart';

Map<String, Light> lightFromJson(Map<String, dynamic> data) => data.map((k, v) => MapEntry<String, Light>(k, Light.fromJson(v)));

String lightToJson(Map<String, Light> data) => json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

@freezed
class Light with _$Light {
  const factory Light({
    String? etag,
    bool? hascolor,
    String? manufacturer,
    String? modelid,
    String? name,
    Pointsymbol? pointsymbol,
    @JsonKey(name: 'state') LightState? state,
    String? swversion,
    String? type,
    String? uniqueid,
    bool? selected,
  }) = _Light;

  factory Light.fromJson(Map<String, dynamic> json) => _$LightFromJson(json);
}

@freezed
class Pointsymbol with _$Pointsymbol {
  const factory Pointsymbol() = _Pointsymbol;

  factory Pointsymbol.fromJson(Map<String, dynamic> json) => _$PointsymbolFromJson(json);
}

@freezed
class LightState with _$LightState {
  const factory LightState({
    String? alert,
    int? bri,
    String? colormode,
    int? ct,
    String? effect,
    int? hue,
    bool? on,
    bool? reachable,
    int? sat,
    List<double>? xy,
  }) = _LightState;

  factory LightState.fromJson(Map<String, dynamic> json) => _$LightStateFromJson(json);
}
