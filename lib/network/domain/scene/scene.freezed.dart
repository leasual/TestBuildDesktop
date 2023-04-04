// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scene.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Scene _$SceneFromJson(Map<String, dynamic> json) {
  return _Scene.fromJson(json);
}

/// @nodoc
mixin _$Scene {
  List<String>? get lights => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SceneCopyWith<Scene> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SceneCopyWith<$Res> {
  factory $SceneCopyWith(Scene value, $Res Function(Scene) then) =
      _$SceneCopyWithImpl<$Res, Scene>;
  @useResult
  $Res call({List<String>? lights, String? name});
}

/// @nodoc
class _$SceneCopyWithImpl<$Res, $Val extends Scene>
    implements $SceneCopyWith<$Res> {
  _$SceneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lights = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      lights: freezed == lights
          ? _value.lights
          : lights // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SceneCopyWith<$Res> implements $SceneCopyWith<$Res> {
  factory _$$_SceneCopyWith(_$_Scene value, $Res Function(_$_Scene) then) =
      __$$_SceneCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? lights, String? name});
}

/// @nodoc
class __$$_SceneCopyWithImpl<$Res> extends _$SceneCopyWithImpl<$Res, _$_Scene>
    implements _$$_SceneCopyWith<$Res> {
  __$$_SceneCopyWithImpl(_$_Scene _value, $Res Function(_$_Scene) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lights = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Scene(
      lights: freezed == lights
          ? _value._lights
          : lights // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Scene implements _Scene {
  const _$_Scene({final List<String>? lights, this.name}) : _lights = lights;

  factory _$_Scene.fromJson(Map<String, dynamic> json) =>
      _$$_SceneFromJson(json);

  final List<String>? _lights;
  @override
  List<String>? get lights {
    final value = _lights;
    if (value == null) return null;
    if (_lights is EqualUnmodifiableListView) return _lights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;

  @override
  String toString() {
    return 'Scene(lights: $lights, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Scene &&
            const DeepCollectionEquality().equals(other._lights, _lights) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_lights), name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SceneCopyWith<_$_Scene> get copyWith =>
      __$$_SceneCopyWithImpl<_$_Scene>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SceneToJson(
      this,
    );
  }
}

abstract class _Scene implements Scene {
  const factory _Scene({final List<String>? lights, final String? name}) =
      _$_Scene;

  factory _Scene.fromJson(Map<String, dynamic> json) = _$_Scene.fromJson;

  @override
  List<String>? get lights;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_SceneCopyWith<_$_Scene> get copyWith =>
      throw _privateConstructorUsedError;
}
