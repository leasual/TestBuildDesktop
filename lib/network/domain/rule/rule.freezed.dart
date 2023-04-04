// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rule _$RuleFromJson(Map<String, dynamic> json) {
  return _Rule.fromJson(json);
}

/// @nodoc
mixin _$Rule {
  List<Action>? get actions => throw _privateConstructorUsedError;
  List<Condition>? get conditions => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  String? get etag => throw _privateConstructorUsedError;
  String? get lasttriggered => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get owner => throw _privateConstructorUsedError;
  int? get periodic => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get timestriggered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RuleCopyWith<Rule> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuleCopyWith<$Res> {
  factory $RuleCopyWith(Rule value, $Res Function(Rule) then) =
      _$RuleCopyWithImpl<$Res, Rule>;
  @useResult
  $Res call(
      {List<Action>? actions,
      List<Condition>? conditions,
      DateTime? created,
      String? etag,
      String? lasttriggered,
      String? name,
      String? owner,
      int? periodic,
      String? status,
      int? timestriggered});
}

/// @nodoc
class _$RuleCopyWithImpl<$Res, $Val extends Rule>
    implements $RuleCopyWith<$Res> {
  _$RuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actions = freezed,
    Object? conditions = freezed,
    Object? created = freezed,
    Object? etag = freezed,
    Object? lasttriggered = freezed,
    Object? name = freezed,
    Object? owner = freezed,
    Object? periodic = freezed,
    Object? status = freezed,
    Object? timestriggered = freezed,
  }) {
    return _then(_value.copyWith(
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Action>?,
      conditions: freezed == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<Condition>?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      lasttriggered: freezed == lasttriggered
          ? _value.lasttriggered
          : lasttriggered // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      periodic: freezed == periodic
          ? _value.periodic
          : periodic // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      timestriggered: freezed == timestriggered
          ? _value.timestriggered
          : timestriggered // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RuleCopyWith<$Res> implements $RuleCopyWith<$Res> {
  factory _$$_RuleCopyWith(_$_Rule value, $Res Function(_$_Rule) then) =
      __$$_RuleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Action>? actions,
      List<Condition>? conditions,
      DateTime? created,
      String? etag,
      String? lasttriggered,
      String? name,
      String? owner,
      int? periodic,
      String? status,
      int? timestriggered});
}

/// @nodoc
class __$$_RuleCopyWithImpl<$Res> extends _$RuleCopyWithImpl<$Res, _$_Rule>
    implements _$$_RuleCopyWith<$Res> {
  __$$_RuleCopyWithImpl(_$_Rule _value, $Res Function(_$_Rule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actions = freezed,
    Object? conditions = freezed,
    Object? created = freezed,
    Object? etag = freezed,
    Object? lasttriggered = freezed,
    Object? name = freezed,
    Object? owner = freezed,
    Object? periodic = freezed,
    Object? status = freezed,
    Object? timestriggered = freezed,
  }) {
    return _then(_$_Rule(
      actions: freezed == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Action>?,
      conditions: freezed == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<Condition>?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      lasttriggered: freezed == lasttriggered
          ? _value.lasttriggered
          : lasttriggered // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      periodic: freezed == periodic
          ? _value.periodic
          : periodic // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      timestriggered: freezed == timestriggered
          ? _value.timestriggered
          : timestriggered // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rule implements _Rule {
  const _$_Rule(
      {final List<Action>? actions,
      final List<Condition>? conditions,
      this.created,
      this.etag,
      this.lasttriggered,
      this.name,
      this.owner,
      this.periodic,
      this.status,
      this.timestriggered})
      : _actions = actions,
        _conditions = conditions;

  factory _$_Rule.fromJson(Map<String, dynamic> json) => _$$_RuleFromJson(json);

  final List<Action>? _actions;
  @override
  List<Action>? get actions {
    final value = _actions;
    if (value == null) return null;
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Condition>? _conditions;
  @override
  List<Condition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? created;
  @override
  final String? etag;
  @override
  final String? lasttriggered;
  @override
  final String? name;
  @override
  final String? owner;
  @override
  final int? periodic;
  @override
  final String? status;
  @override
  final int? timestriggered;

  @override
  String toString() {
    return 'Rule(actions: $actions, conditions: $conditions, created: $created, etag: $etag, lasttriggered: $lasttriggered, name: $name, owner: $owner, periodic: $periodic, status: $status, timestriggered: $timestriggered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rule &&
            const DeepCollectionEquality().equals(other._actions, _actions) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.lasttriggered, lasttriggered) ||
                other.lasttriggered == lasttriggered) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.periodic, periodic) ||
                other.periodic == periodic) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timestriggered, timestriggered) ||
                other.timestriggered == timestriggered));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_actions),
      const DeepCollectionEquality().hash(_conditions),
      created,
      etag,
      lasttriggered,
      name,
      owner,
      periodic,
      status,
      timestriggered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RuleCopyWith<_$_Rule> get copyWith =>
      __$$_RuleCopyWithImpl<_$_Rule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RuleToJson(
      this,
    );
  }
}

abstract class _Rule implements Rule {
  const factory _Rule(
      {final List<Action>? actions,
      final List<Condition>? conditions,
      final DateTime? created,
      final String? etag,
      final String? lasttriggered,
      final String? name,
      final String? owner,
      final int? periodic,
      final String? status,
      final int? timestriggered}) = _$_Rule;

  factory _Rule.fromJson(Map<String, dynamic> json) = _$_Rule.fromJson;

  @override
  List<Action>? get actions;
  @override
  List<Condition>? get conditions;
  @override
  DateTime? get created;
  @override
  String? get etag;
  @override
  String? get lasttriggered;
  @override
  String? get name;
  @override
  String? get owner;
  @override
  int? get periodic;
  @override
  String? get status;
  @override
  int? get timestriggered;
  @override
  @JsonKey(ignore: true)
  _$$_RuleCopyWith<_$_Rule> get copyWith => throw _privateConstructorUsedError;
}

Action _$ActionFromJson(Map<String, dynamic> json) {
  return _Action.fromJson(json);
}

/// @nodoc
mixin _$Action {
  String? get address => throw _privateConstructorUsedError;
  Body? get body => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionCopyWith<Action> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionCopyWith<$Res> {
  factory $ActionCopyWith(Action value, $Res Function(Action) then) =
      _$ActionCopyWithImpl<$Res, Action>;
  @useResult
  $Res call({String? address, Body? body, String? method});

  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class _$ActionCopyWithImpl<$Res, $Val extends Action>
    implements $ActionCopyWith<$Res> {
  _$ActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? body = freezed,
    Object? method = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BodyCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $BodyCopyWith<$Res>(_value.body!, (value) {
      return _then(_value.copyWith(body: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ActionCopyWith<$Res> implements $ActionCopyWith<$Res> {
  factory _$$_ActionCopyWith(_$_Action value, $Res Function(_$_Action) then) =
      __$$_ActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? address, Body? body, String? method});

  @override
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class __$$_ActionCopyWithImpl<$Res>
    extends _$ActionCopyWithImpl<$Res, _$_Action>
    implements _$$_ActionCopyWith<$Res> {
  __$$_ActionCopyWithImpl(_$_Action _value, $Res Function(_$_Action) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? body = freezed,
    Object? method = freezed,
  }) {
    return _then(_$_Action(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Action implements _Action {
  const _$_Action({this.address, this.body, this.method});

  factory _$_Action.fromJson(Map<String, dynamic> json) =>
      _$$_ActionFromJson(json);

  @override
  final String? address;
  @override
  final Body? body;
  @override
  final String? method;

  @override
  String toString() {
    return 'Action(address: $address, body: $body, method: $method)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Action &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.method, method) || other.method == method));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, body, method);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionCopyWith<_$_Action> get copyWith =>
      __$$_ActionCopyWithImpl<_$_Action>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActionToJson(
      this,
    );
  }
}

abstract class _Action implements Action {
  const factory _Action(
      {final String? address,
      final Body? body,
      final String? method}) = _$_Action;

  factory _Action.fromJson(Map<String, dynamic> json) = _$_Action.fromJson;

  @override
  String? get address;
  @override
  Body? get body;
  @override
  String? get method;
  @override
  @JsonKey(ignore: true)
  _$$_ActionCopyWith<_$_Action> get copyWith =>
      throw _privateConstructorUsedError;
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
mixin _$Body {
  bool? get on => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyCopyWith<Body> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res, Body>;
  @useResult
  $Res call({bool? on});
}

/// @nodoc
class _$BodyCopyWithImpl<$Res, $Val extends Body>
    implements $BodyCopyWith<$Res> {
  _$BodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? on = freezed,
  }) {
    return _then(_value.copyWith(
      on: freezed == on
          ? _value.on
          : on // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BodyCopyWith<$Res> implements $BodyCopyWith<$Res> {
  factory _$$_BodyCopyWith(_$_Body value, $Res Function(_$_Body) then) =
      __$$_BodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? on});
}

/// @nodoc
class __$$_BodyCopyWithImpl<$Res> extends _$BodyCopyWithImpl<$Res, _$_Body>
    implements _$$_BodyCopyWith<$Res> {
  __$$_BodyCopyWithImpl(_$_Body _value, $Res Function(_$_Body) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? on = freezed,
  }) {
    return _then(_$_Body(
      on: freezed == on
          ? _value.on
          : on // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Body implements _Body {
  const _$_Body({this.on});

  factory _$_Body.fromJson(Map<String, dynamic> json) => _$$_BodyFromJson(json);

  @override
  final bool? on;

  @override
  String toString() {
    return 'Body(on: $on)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Body &&
            (identical(other.on, on) || other.on == on));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, on);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BodyCopyWith<_$_Body> get copyWith =>
      __$$_BodyCopyWithImpl<_$_Body>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BodyToJson(
      this,
    );
  }
}

abstract class _Body implements Body {
  const factory _Body({final bool? on}) = _$_Body;

  factory _Body.fromJson(Map<String, dynamic> json) = _$_Body.fromJson;

  @override
  bool? get on;
  @override
  @JsonKey(ignore: true)
  _$$_BodyCopyWith<_$_Body> get copyWith => throw _privateConstructorUsedError;
}

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return _Condition.fromJson(json);
}

/// @nodoc
mixin _$Condition {
  String? get address => throw _privateConstructorUsedError;
  String? get conditionOperator => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionCopyWith<Condition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionCopyWith<$Res> {
  factory $ConditionCopyWith(Condition value, $Res Function(Condition) then) =
      _$ConditionCopyWithImpl<$Res, Condition>;
  @useResult
  $Res call({String? address, String? conditionOperator, String? value});
}

/// @nodoc
class _$ConditionCopyWithImpl<$Res, $Val extends Condition>
    implements $ConditionCopyWith<$Res> {
  _$ConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? conditionOperator = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      conditionOperator: freezed == conditionOperator
          ? _value.conditionOperator
          : conditionOperator // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConditionCopyWith<$Res> implements $ConditionCopyWith<$Res> {
  factory _$$_ConditionCopyWith(
          _$_Condition value, $Res Function(_$_Condition) then) =
      __$$_ConditionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? address, String? conditionOperator, String? value});
}

/// @nodoc
class __$$_ConditionCopyWithImpl<$Res>
    extends _$ConditionCopyWithImpl<$Res, _$_Condition>
    implements _$$_ConditionCopyWith<$Res> {
  __$$_ConditionCopyWithImpl(
      _$_Condition _value, $Res Function(_$_Condition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? conditionOperator = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_Condition(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      conditionOperator: freezed == conditionOperator
          ? _value.conditionOperator
          : conditionOperator // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Condition implements _Condition {
  const _$_Condition({this.address, this.conditionOperator, this.value});

  factory _$_Condition.fromJson(Map<String, dynamic> json) =>
      _$$_ConditionFromJson(json);

  @override
  final String? address;
  @override
  final String? conditionOperator;
  @override
  final String? value;

  @override
  String toString() {
    return 'Condition(address: $address, conditionOperator: $conditionOperator, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Condition &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.conditionOperator, conditionOperator) ||
                other.conditionOperator == conditionOperator) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, address, conditionOperator, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConditionCopyWith<_$_Condition> get copyWith =>
      __$$_ConditionCopyWithImpl<_$_Condition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConditionToJson(
      this,
    );
  }
}

abstract class _Condition implements Condition {
  const factory _Condition(
      {final String? address,
      final String? conditionOperator,
      final String? value}) = _$_Condition;

  factory _Condition.fromJson(Map<String, dynamic> json) =
      _$_Condition.fromJson;

  @override
  String? get address;
  @override
  String? get conditionOperator;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_ConditionCopyWith<_$_Condition> get copyWith =>
      throw _privateConstructorUsedError;
}
