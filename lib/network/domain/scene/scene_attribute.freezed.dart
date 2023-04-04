// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scene_attribute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SceneAttribute _$SceneAttributeFromJson(Map<String, dynamic> json) {
  return _SceneAttribute.fromJson(json);
}

/// @nodoc
mixin _$SceneAttribute {
  List<Light>? get lights => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SceneAttributeCopyWith<SceneAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SceneAttributeCopyWith<$Res> {
  factory $SceneAttributeCopyWith(
          SceneAttribute value, $Res Function(SceneAttribute) then) =
      _$SceneAttributeCopyWithImpl<$Res, SceneAttribute>;
  @useResult
  $Res call({List<Light>? lights, String? name, int? state});
}

/// @nodoc
class _$SceneAttributeCopyWithImpl<$Res, $Val extends SceneAttribute>
    implements $SceneAttributeCopyWith<$Res> {
  _$SceneAttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lights = freezed,
    Object? name = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      lights: freezed == lights
          ? _value.lights
          : lights // ignore: cast_nullable_to_non_nullable
              as List<Light>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SceneAttributeCopyWith<$Res>
    implements $SceneAttributeCopyWith<$Res> {
  factory _$$_SceneAttributeCopyWith(
          _$_SceneAttribute value, $Res Function(_$_SceneAttribute) then) =
      __$$_SceneAttributeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Light>? lights, String? name, int? state});
}

/// @nodoc
class __$$_SceneAttributeCopyWithImpl<$Res>
    extends _$SceneAttributeCopyWithImpl<$Res, _$_SceneAttribute>
    implements _$$_SceneAttributeCopyWith<$Res> {
  __$$_SceneAttributeCopyWithImpl(
      _$_SceneAttribute _value, $Res Function(_$_SceneAttribute) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lights = freezed,
    Object? name = freezed,
    Object? state = freezed,
  }) {
    return _then(_$_SceneAttribute(
      lights: freezed == lights
          ? _value._lights
          : lights // ignore: cast_nullable_to_non_nullable
              as List<Light>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SceneAttribute implements _SceneAttribute {
  const _$_SceneAttribute({final List<Light>? lights, this.name, this.state})
      : _lights = lights;

  factory _$_SceneAttribute.fromJson(Map<String, dynamic> json) =>
      _$$_SceneAttributeFromJson(json);

  final List<Light>? _lights;
  @override
  List<Light>? get lights {
    final value = _lights;
    if (value == null) return null;
    if (_lights is EqualUnmodifiableListView) return _lights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;
  @override
  final int? state;

  @override
  String toString() {
    return 'SceneAttribute(lights: $lights, name: $name, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SceneAttribute &&
            const DeepCollectionEquality().equals(other._lights, _lights) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_lights), name, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SceneAttributeCopyWith<_$_SceneAttribute> get copyWith =>
      __$$_SceneAttributeCopyWithImpl<_$_SceneAttribute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SceneAttributeToJson(
      this,
    );
  }
}

abstract class _SceneAttribute implements SceneAttribute {
  const factory _SceneAttribute(
      {final List<Light>? lights,
      final String? name,
      final int? state}) = _$_SceneAttribute;

  factory _SceneAttribute.fromJson(Map<String, dynamic> json) =
      _$_SceneAttribute.fromJson;

  @override
  List<Light>? get lights;
  @override
  String? get name;
  @override
  int? get state;
  @override
  @JsonKey(ignore: true)
  _$$_SceneAttributeCopyWith<_$_SceneAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

Light _$LightFromJson(Map<String, dynamic> json) {
  return _Light.fromJson(json);
}

/// @nodoc
mixin _$Light {
  int? get bri => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  bool? get on => throw _privateConstructorUsedError;
  int? get transitiontime => throw _privateConstructorUsedError;
  int? get x => throw _privateConstructorUsedError;
  int? get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LightCopyWith<Light> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LightCopyWith<$Res> {
  factory $LightCopyWith(Light value, $Res Function(Light) then) =
      _$LightCopyWithImpl<$Res, Light>;
  @useResult
  $Res call(
      {int? bri, String? id, bool? on, int? transitiontime, int? x, int? y});
}

/// @nodoc
class _$LightCopyWithImpl<$Res, $Val extends Light>
    implements $LightCopyWith<$Res> {
  _$LightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bri = freezed,
    Object? id = freezed,
    Object? on = freezed,
    Object? transitiontime = freezed,
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      bri: freezed == bri
          ? _value.bri
          : bri // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      on: freezed == on
          ? _value.on
          : on // ignore: cast_nullable_to_non_nullable
              as bool?,
      transitiontime: freezed == transitiontime
          ? _value.transitiontime
          : transitiontime // ignore: cast_nullable_to_non_nullable
              as int?,
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LightCopyWith<$Res> implements $LightCopyWith<$Res> {
  factory _$$_LightCopyWith(_$_Light value, $Res Function(_$_Light) then) =
      __$$_LightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? bri, String? id, bool? on, int? transitiontime, int? x, int? y});
}

/// @nodoc
class __$$_LightCopyWithImpl<$Res> extends _$LightCopyWithImpl<$Res, _$_Light>
    implements _$$_LightCopyWith<$Res> {
  __$$_LightCopyWithImpl(_$_Light _value, $Res Function(_$_Light) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bri = freezed,
    Object? id = freezed,
    Object? on = freezed,
    Object? transitiontime = freezed,
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_$_Light(
      bri: freezed == bri
          ? _value.bri
          : bri // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      on: freezed == on
          ? _value.on
          : on // ignore: cast_nullable_to_non_nullable
              as bool?,
      transitiontime: freezed == transitiontime
          ? _value.transitiontime
          : transitiontime // ignore: cast_nullable_to_non_nullable
              as int?,
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Light implements _Light {
  const _$_Light(
      {this.bri, this.id, this.on, this.transitiontime, this.x, this.y});

  factory _$_Light.fromJson(Map<String, dynamic> json) =>
      _$$_LightFromJson(json);

  @override
  final int? bri;
  @override
  final String? id;
  @override
  final bool? on;
  @override
  final int? transitiontime;
  @override
  final int? x;
  @override
  final int? y;

  @override
  String toString() {
    return 'Light(bri: $bri, id: $id, on: $on, transitiontime: $transitiontime, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Light &&
            (identical(other.bri, bri) || other.bri == bri) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.on, on) || other.on == on) &&
            (identical(other.transitiontime, transitiontime) ||
                other.transitiontime == transitiontime) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bri, id, on, transitiontime, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LightCopyWith<_$_Light> get copyWith =>
      __$$_LightCopyWithImpl<_$_Light>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LightToJson(
      this,
    );
  }
}

abstract class _Light implements Light {
  const factory _Light(
      {final int? bri,
      final String? id,
      final bool? on,
      final int? transitiontime,
      final int? x,
      final int? y}) = _$_Light;

  factory _Light.fromJson(Map<String, dynamic> json) = _$_Light.fromJson;

  @override
  int? get bri;
  @override
  String? get id;
  @override
  bool? get on;
  @override
  int? get transitiontime;
  @override
  int? get x;
  @override
  int? get y;
  @override
  @JsonKey(ignore: true)
  _$$_LightCopyWith<_$_Light> get copyWith =>
      throw _privateConstructorUsedError;
}
