// To parse this JSON data, do
//
//     final lightState = lightStateFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'light_state.freezed.dart';
part 'light_state.g.dart';

LightState lightStateFromJson(String str) => LightState.fromJson(json.decode(str));

String lightStateToJson(LightState data) => json.encode(data.toJson());

@freezed
class LightState with _$LightState {
  const factory LightState({
    String? etag,
    bool? hascolor,
    String? manufacturer,
    String? modelid,
    String? name,
    Pointsymbol? pointsymbol,
    State? state,
    String? swversion,
    String? type,
    String? uniqueid,
  }) = _LightState;

  factory LightState.fromJson(Map<String, dynamic> json) => _$LightStateFromJson(json);
}

@freezed
class Pointsymbol with _$Pointsymbol {
  const factory Pointsymbol() = _Pointsymbol;

  factory Pointsymbol.fromJson(Map<String, dynamic> json) => _$PointsymbolFromJson(json);
}

@freezed
class State with _$State {
  const factory State({
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
  }) = _State;

  factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);
}
