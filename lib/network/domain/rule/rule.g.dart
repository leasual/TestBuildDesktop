// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rule _$$_RuleFromJson(Map<String, dynamic> json) => _$_Rule(
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => Action.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => Condition.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      etag: json['etag'] as String?,
      lasttriggered: json['lasttriggered'] as String?,
      name: json['name'] as String?,
      owner: json['owner'] as String?,
      periodic: json['periodic'] as int?,
      status: json['status'] as String?,
      timestriggered: json['timestriggered'] as int?,
    );

Map<String, dynamic> _$$_RuleToJson(_$_Rule instance) => <String, dynamic>{
      'actions': instance.actions,
      'conditions': instance.conditions,
      'created': instance.created?.toIso8601String(),
      'etag': instance.etag,
      'lasttriggered': instance.lasttriggered,
      'name': instance.name,
      'owner': instance.owner,
      'periodic': instance.periodic,
      'status': instance.status,
      'timestriggered': instance.timestriggered,
    };

_$_Action _$$_ActionFromJson(Map<String, dynamic> json) => _$_Action(
      address: json['address'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
      method: json['method'] as String?,
    );

Map<String, dynamic> _$$_ActionToJson(_$_Action instance) => <String, dynamic>{
      'address': instance.address,
      'body': instance.body,
      'method': instance.method,
    };

_$_Body _$$_BodyFromJson(Map<String, dynamic> json) => _$_Body(
      on: json['on'] as bool?,
    );

Map<String, dynamic> _$$_BodyToJson(_$_Body instance) => <String, dynamic>{
      'on': instance.on,
    };

_$_Condition _$$_ConditionFromJson(Map<String, dynamic> json) => _$_Condition(
      address: json['address'] as String?,
      conditionOperator: json['conditionOperator'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_ConditionToJson(_$_Condition instance) =>
    <String, dynamic>{
      'address': instance.address,
      'conditionOperator': instance.conditionOperator,
      'value': instance.value,
    };
