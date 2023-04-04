// To parse this JSON data, do
//
//     final rule = ruleFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'rule.freezed.dart';
part 'rule.g.dart';

Map<String, Rule> ruleFromJson(String str) => Map.from(json.decode(str)).map((k, v) => MapEntry<String, Rule>(k, Rule.fromJson(v)));

String ruleToJson(Map<String, Rule> data) => json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

@freezed
class Rule with _$Rule {
  const factory Rule({
    List<Action>? actions,
    List<Condition>? conditions,
    DateTime? created,
    String? etag,
    String? lasttriggered,
    String? name,
    String? owner,
    int? periodic,
    String? status,
    int? timestriggered,
  }) = _Rule;

  factory Rule.fromJson(Map<String, dynamic> json) => _$RuleFromJson(json);
}

@freezed
class Action with _$Action {
  const factory Action({
    String? address,
    Body? body,
    String? method,
  }) = _Action;

  factory Action.fromJson(Map<String, dynamic> json) => _$ActionFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    bool? on,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class Condition with _$Condition {
  const factory Condition({
    String? address,
    String? conditionOperator,
    String? value,
  }) = _Condition;

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
}
