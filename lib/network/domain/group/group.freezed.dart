// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Group _$GroupFromJson(Map<String, dynamic> json) {
  return _Group.fromJson(json);
}

/// @nodoc
mixin _$Group {
  Action? get action => throw _privateConstructorUsedError;
  List<dynamic>? get devicemembership => throw _privateConstructorUsedError;
  String? get etag => throw _privateConstructorUsedError;
  bool? get hidden => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<dynamic>? get lights => throw _privateConstructorUsedError;
  List<dynamic>? get lightsequence => throw _privateConstructorUsedError;
  List<dynamic>? get multideviceids => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<dynamic>? get scenes => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  The1? get state => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool? get selected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res, Group>;
  @useResult
  $Res call(
      {Action? action,
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
      bool? selected});

  $ActionCopyWith<$Res>? get action;
  $The1CopyWith<$Res>? get state;
}

/// @nodoc
class _$GroupCopyWithImpl<$Res, $Val extends Group>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? devicemembership = freezed,
    Object? etag = freezed,
    Object? hidden = freezed,
    Object? id = freezed,
    Object? lights = freezed,
    Object? lightsequence = freezed,
    Object? multideviceids = freezed,
    Object? name = freezed,
    Object? scenes = freezed,
    Object? state = freezed,
    Object? type = freezed,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action?,
      devicemembership: freezed == devicemembership
          ? _value.devicemembership
          : devicemembership // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      hidden: freezed == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lights: freezed == lights
          ? _value.lights
          : lights // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      lightsequence: freezed == lightsequence
          ? _value.lightsequence
          : lightsequence // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      multideviceids: freezed == multideviceids
          ? _value.multideviceids
          : multideviceids // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      scenes: freezed == scenes
          ? _value.scenes
          : scenes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as The1?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionCopyWith<$Res>? get action {
    if (_value.action == null) {
      return null;
    }

    return $ActionCopyWith<$Res>(_value.action!, (value) {
      return _then(_value.copyWith(action: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $The1CopyWith<$Res>? get state {
    if (_value.state == null) {
      return null;
    }

    return $The1CopyWith<$Res>(_value.state!, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$$_GroupCopyWith(_$_Group value, $Res Function(_$_Group) then) =
      __$$_GroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Action? action,
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
      bool? selected});

  @override
  $ActionCopyWith<$Res>? get action;
  @override
  $The1CopyWith<$Res>? get state;
}

/// @nodoc
class __$$_GroupCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res, _$_Group>
    implements _$$_GroupCopyWith<$Res> {
  __$$_GroupCopyWithImpl(_$_Group _value, $Res Function(_$_Group) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? devicemembership = freezed,
    Object? etag = freezed,
    Object? hidden = freezed,
    Object? id = freezed,
    Object? lights = freezed,
    Object? lightsequence = freezed,
    Object? multideviceids = freezed,
    Object? name = freezed,
    Object? scenes = freezed,
    Object? state = freezed,
    Object? type = freezed,
    Object? selected = freezed,
  }) {
    return _then(_$_Group(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action?,
      devicemembership: freezed == devicemembership
          ? _value._devicemembership
          : devicemembership // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      hidden: freezed == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lights: freezed == lights
          ? _value._lights
          : lights // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      lightsequence: freezed == lightsequence
          ? _value._lightsequence
          : lightsequence // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      multideviceids: freezed == multideviceids
          ? _value._multideviceids
          : multideviceids // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      scenes: freezed == scenes
          ? _value._scenes
          : scenes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as The1?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Group implements _Group {
  const _$_Group(
      {this.action,
      final List<dynamic>? devicemembership,
      this.etag,
      this.hidden,
      this.id,
      final List<dynamic>? lights,
      final List<dynamic>? lightsequence,
      final List<dynamic>? multideviceids,
      this.name,
      final List<dynamic>? scenes,
      @JsonKey(name: 'state') this.state,
      this.type,
      this.selected})
      : _devicemembership = devicemembership,
        _lights = lights,
        _lightsequence = lightsequence,
        _multideviceids = multideviceids,
        _scenes = scenes;

  factory _$_Group.fromJson(Map<String, dynamic> json) =>
      _$$_GroupFromJson(json);

  @override
  final Action? action;
  final List<dynamic>? _devicemembership;
  @override
  List<dynamic>? get devicemembership {
    final value = _devicemembership;
    if (value == null) return null;
    if (_devicemembership is EqualUnmodifiableListView)
      return _devicemembership;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? etag;
  @override
  final bool? hidden;
  @override
  final String? id;
  final List<dynamic>? _lights;
  @override
  List<dynamic>? get lights {
    final value = _lights;
    if (value == null) return null;
    if (_lights is EqualUnmodifiableListView) return _lights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _lightsequence;
  @override
  List<dynamic>? get lightsequence {
    final value = _lightsequence;
    if (value == null) return null;
    if (_lightsequence is EqualUnmodifiableListView) return _lightsequence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _multideviceids;
  @override
  List<dynamic>? get multideviceids {
    final value = _multideviceids;
    if (value == null) return null;
    if (_multideviceids is EqualUnmodifiableListView) return _multideviceids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;
  final List<dynamic>? _scenes;
  @override
  List<dynamic>? get scenes {
    final value = _scenes;
    if (value == null) return null;
    if (_scenes is EqualUnmodifiableListView) return _scenes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'state')
  final The1? state;
  @override
  final String? type;
  @override
  final bool? selected;

  @override
  String toString() {
    return 'Group(action: $action, devicemembership: $devicemembership, etag: $etag, hidden: $hidden, id: $id, lights: $lights, lightsequence: $lightsequence, multideviceids: $multideviceids, name: $name, scenes: $scenes, state: $state, type: $type, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Group &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality()
                .equals(other._devicemembership, _devicemembership) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.hidden, hidden) || other.hidden == hidden) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._lights, _lights) &&
            const DeepCollectionEquality()
                .equals(other._lightsequence, _lightsequence) &&
            const DeepCollectionEquality()
                .equals(other._multideviceids, _multideviceids) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._scenes, _scenes) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      action,
      const DeepCollectionEquality().hash(_devicemembership),
      etag,
      hidden,
      id,
      const DeepCollectionEquality().hash(_lights),
      const DeepCollectionEquality().hash(_lightsequence),
      const DeepCollectionEquality().hash(_multideviceids),
      name,
      const DeepCollectionEquality().hash(_scenes),
      state,
      type,
      selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupCopyWith<_$_Group> get copyWith =>
      __$$_GroupCopyWithImpl<_$_Group>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupToJson(
      this,
    );
  }
}

abstract class _Group implements Group {
  const factory _Group(
      {final Action? action,
      final List<dynamic>? devicemembership,
      final String? etag,
      final bool? hidden,
      final String? id,
      final List<dynamic>? lights,
      final List<dynamic>? lightsequence,
      final List<dynamic>? multideviceids,
      final String? name,
      final List<dynamic>? scenes,
      @JsonKey(name: 'state') final The1? state,
      final String? type,
      final bool? selected}) = _$_Group;

  factory _Group.fromJson(Map<String, dynamic> json) = _$_Group.fromJson;

  @override
  Action? get action;
  @override
  List<dynamic>? get devicemembership;
  @override
  String? get etag;
  @override
  bool? get hidden;
  @override
  String? get id;
  @override
  List<dynamic>? get lights;
  @override
  List<dynamic>? get lightsequence;
  @override
  List<dynamic>? get multideviceids;
  @override
  String? get name;
  @override
  List<dynamic>? get scenes;
  @override
  @JsonKey(name: 'state')
  The1? get state;
  @override
  String? get type;
  @override
  bool? get selected;
  @override
  @JsonKey(ignore: true)
  _$$_GroupCopyWith<_$_Group> get copyWith =>
      throw _privateConstructorUsedError;
}

Action _$ActionFromJson(Map<String, dynamic> json) {
  return _Action.fromJson(json);
}

/// @nodoc
mixin _$Action {
  String? get alert => throw _privateConstructorUsedError;
  int? get bri => throw _privateConstructorUsedError;
  String? get colormode => throw _privateConstructorUsedError;
  int? get ct => throw _privateConstructorUsedError;
  String? get effect => throw _privateConstructorUsedError;
  int? get hue => throw _privateConstructorUsedError;
  bool? get on => throw _privateConstructorUsedError;
  int? get sat => throw _privateConstructorUsedError;
  dynamic? get scene => throw _privateConstructorUsedError;
  List<int>? get xy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionCopyWith<Action> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionCopyWith<$Res> {
  factory $ActionCopyWith(Action value, $Res Function(Action) then) =
      _$ActionCopyWithImpl<$Res, Action>;
  @useResult
  $Res call(
      {String? alert,
      int? bri,
      String? colormode,
      int? ct,
      String? effect,
      int? hue,
      bool? on,
      int? sat,
      dynamic? scene,
      List<int>? xy});
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
    Object? alert = freezed,
    Object? bri = freezed,
    Object? colormode = freezed,
    Object? ct = freezed,
    Object? effect = freezed,
    Object? hue = freezed,
    Object? on = freezed,
    Object? sat = freezed,
    Object? scene = freezed,
    Object? xy = freezed,
  }) {
    return _then(_value.copyWith(
      alert: freezed == alert
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as String?,
      bri: freezed == bri
          ? _value.bri
          : bri // ignore: cast_nullable_to_non_nullable
              as int?,
      colormode: freezed == colormode
          ? _value.colormode
          : colormode // ignore: cast_nullable_to_non_nullable
              as String?,
      ct: freezed == ct
          ? _value.ct
          : ct // ignore: cast_nullable_to_non_nullable
              as int?,
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String?,
      hue: freezed == hue
          ? _value.hue
          : hue // ignore: cast_nullable_to_non_nullable
              as int?,
      on: freezed == on
          ? _value.on
          : on // ignore: cast_nullable_to_non_nullable
              as bool?,
      sat: freezed == sat
          ? _value.sat
          : sat // ignore: cast_nullable_to_non_nullable
              as int?,
      scene: freezed == scene
          ? _value.scene
          : scene // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      xy: freezed == xy
          ? _value.xy
          : xy // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActionCopyWith<$Res> implements $ActionCopyWith<$Res> {
  factory _$$_ActionCopyWith(_$_Action value, $Res Function(_$_Action) then) =
      __$$_ActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? alert,
      int? bri,
      String? colormode,
      int? ct,
      String? effect,
      int? hue,
      bool? on,
      int? sat,
      dynamic? scene,
      List<int>? xy});
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
    Object? alert = freezed,
    Object? bri = freezed,
    Object? colormode = freezed,
    Object? ct = freezed,
    Object? effect = freezed,
    Object? hue = freezed,
    Object? on = freezed,
    Object? sat = freezed,
    Object? scene = freezed,
    Object? xy = freezed,
  }) {
    return _then(_$_Action(
      alert: freezed == alert
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as String?,
      bri: freezed == bri
          ? _value.bri
          : bri // ignore: cast_nullable_to_non_nullable
              as int?,
      colormode: freezed == colormode
          ? _value.colormode
          : colormode // ignore: cast_nullable_to_non_nullable
              as String?,
      ct: freezed == ct
          ? _value.ct
          : ct // ignore: cast_nullable_to_non_nullable
              as int?,
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String?,
      hue: freezed == hue
          ? _value.hue
          : hue // ignore: cast_nullable_to_non_nullable
              as int?,
      on: freezed == on
          ? _value.on
          : on // ignore: cast_nullable_to_non_nullable
              as bool?,
      sat: freezed == sat
          ? _value.sat
          : sat // ignore: cast_nullable_to_non_nullable
              as int?,
      scene: freezed == scene
          ? _value.scene
          : scene // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      xy: freezed == xy
          ? _value._xy
          : xy // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Action implements _Action {
  const _$_Action(
      {this.alert,
      this.bri,
      this.colormode,
      this.ct,
      this.effect,
      this.hue,
      this.on,
      this.sat,
      this.scene,
      final List<int>? xy})
      : _xy = xy;

  factory _$_Action.fromJson(Map<String, dynamic> json) =>
      _$$_ActionFromJson(json);

  @override
  final String? alert;
  @override
  final int? bri;
  @override
  final String? colormode;
  @override
  final int? ct;
  @override
  final String? effect;
  @override
  final int? hue;
  @override
  final bool? on;
  @override
  final int? sat;
  @override
  final dynamic? scene;
  final List<int>? _xy;
  @override
  List<int>? get xy {
    final value = _xy;
    if (value == null) return null;
    if (_xy is EqualUnmodifiableListView) return _xy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Action(alert: $alert, bri: $bri, colormode: $colormode, ct: $ct, effect: $effect, hue: $hue, on: $on, sat: $sat, scene: $scene, xy: $xy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Action &&
            (identical(other.alert, alert) || other.alert == alert) &&
            (identical(other.bri, bri) || other.bri == bri) &&
            (identical(other.colormode, colormode) ||
                other.colormode == colormode) &&
            (identical(other.ct, ct) || other.ct == ct) &&
            (identical(other.effect, effect) || other.effect == effect) &&
            (identical(other.hue, hue) || other.hue == hue) &&
            (identical(other.on, on) || other.on == on) &&
            (identical(other.sat, sat) || other.sat == sat) &&
            const DeepCollectionEquality().equals(other.scene, scene) &&
            const DeepCollectionEquality().equals(other._xy, _xy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      alert,
      bri,
      colormode,
      ct,
      effect,
      hue,
      on,
      sat,
      const DeepCollectionEquality().hash(scene),
      const DeepCollectionEquality().hash(_xy));

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
      {final String? alert,
      final int? bri,
      final String? colormode,
      final int? ct,
      final String? effect,
      final int? hue,
      final bool? on,
      final int? sat,
      final dynamic? scene,
      final List<int>? xy}) = _$_Action;

  factory _Action.fromJson(Map<String, dynamic> json) = _$_Action.fromJson;

  @override
  String? get alert;
  @override
  int? get bri;
  @override
  String? get colormode;
  @override
  int? get ct;
  @override
  String? get effect;
  @override
  int? get hue;
  @override
  bool? get on;
  @override
  int? get sat;
  @override
  dynamic? get scene;
  @override
  List<int>? get xy;
  @override
  @JsonKey(ignore: true)
  _$$_ActionCopyWith<_$_Action> get copyWith =>
      throw _privateConstructorUsedError;
}

The1 _$The1FromJson(Map<String, dynamic> json) {
  return _The1.fromJson(json);
}

/// @nodoc
mixin _$The1 {
  bool? get all_on => throw _privateConstructorUsedError;
  bool? get any_on => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $The1CopyWith<The1> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $The1CopyWith<$Res> {
  factory $The1CopyWith(The1 value, $Res Function(The1) then) =
      _$The1CopyWithImpl<$Res, The1>;
  @useResult
  $Res call({bool? all_on, bool? any_on});
}

/// @nodoc
class _$The1CopyWithImpl<$Res, $Val extends The1>
    implements $The1CopyWith<$Res> {
  _$The1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all_on = freezed,
    Object? any_on = freezed,
  }) {
    return _then(_value.copyWith(
      all_on: freezed == all_on
          ? _value.all_on
          : all_on // ignore: cast_nullable_to_non_nullable
              as bool?,
      any_on: freezed == any_on
          ? _value.any_on
          : any_on // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_The1CopyWith<$Res> implements $The1CopyWith<$Res> {
  factory _$$_The1CopyWith(_$_The1 value, $Res Function(_$_The1) then) =
      __$$_The1CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? all_on, bool? any_on});
}

/// @nodoc
class __$$_The1CopyWithImpl<$Res> extends _$The1CopyWithImpl<$Res, _$_The1>
    implements _$$_The1CopyWith<$Res> {
  __$$_The1CopyWithImpl(_$_The1 _value, $Res Function(_$_The1) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all_on = freezed,
    Object? any_on = freezed,
  }) {
    return _then(_$_The1(
      all_on: freezed == all_on
          ? _value.all_on
          : all_on // ignore: cast_nullable_to_non_nullable
              as bool?,
      any_on: freezed == any_on
          ? _value.any_on
          : any_on // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_The1 implements _The1 {
  const _$_The1({this.all_on, this.any_on});

  factory _$_The1.fromJson(Map<String, dynamic> json) => _$$_The1FromJson(json);

  @override
  final bool? all_on;
  @override
  final bool? any_on;

  @override
  String toString() {
    return 'The1(all_on: $all_on, any_on: $any_on)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_The1 &&
            (identical(other.all_on, all_on) || other.all_on == all_on) &&
            (identical(other.any_on, any_on) || other.any_on == any_on));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, all_on, any_on);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_The1CopyWith<_$_The1> get copyWith =>
      __$$_The1CopyWithImpl<_$_The1>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_The1ToJson(
      this,
    );
  }
}

abstract class _The1 implements The1 {
  const factory _The1({final bool? all_on, final bool? any_on}) = _$_The1;

  factory _The1.fromJson(Map<String, dynamic> json) = _$_The1.fromJson;

  @override
  bool? get all_on;
  @override
  bool? get any_on;
  @override
  @JsonKey(ignore: true)
  _$$_The1CopyWith<_$_The1> get copyWith => throw _privateConstructorUsedError;
}
