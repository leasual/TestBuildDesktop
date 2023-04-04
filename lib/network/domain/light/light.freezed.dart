// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'light.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Light _$LightFromJson(Map<String, dynamic> json) {
  return _Light.fromJson(json);
}

/// @nodoc
mixin _$Light {
  String? get etag => throw _privateConstructorUsedError;
  bool? get hascolor => throw _privateConstructorUsedError;
  String? get manufacturer => throw _privateConstructorUsedError;
  String? get modelid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Pointsymbol? get pointsymbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  LightState? get state => throw _privateConstructorUsedError;
  String? get swversion => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uniqueid => throw _privateConstructorUsedError;
  bool? get selected => throw _privateConstructorUsedError;

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
      {String? etag,
      bool? hascolor,
      String? manufacturer,
      String? modelid,
      String? name,
      Pointsymbol? pointsymbol,
      @JsonKey(name: 'state') LightState? state,
      String? swversion,
      String? type,
      String? uniqueid,
      bool? selected});

  $PointsymbolCopyWith<$Res>? get pointsymbol;
  $LightStateCopyWith<$Res>? get state;
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
    Object? etag = freezed,
    Object? hascolor = freezed,
    Object? manufacturer = freezed,
    Object? modelid = freezed,
    Object? name = freezed,
    Object? pointsymbol = freezed,
    Object? state = freezed,
    Object? swversion = freezed,
    Object? type = freezed,
    Object? uniqueid = freezed,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      hascolor: freezed == hascolor
          ? _value.hascolor
          : hascolor // ignore: cast_nullable_to_non_nullable
              as bool?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      modelid: freezed == modelid
          ? _value.modelid
          : modelid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pointsymbol: freezed == pointsymbol
          ? _value.pointsymbol
          : pointsymbol // ignore: cast_nullable_to_non_nullable
              as Pointsymbol?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as LightState?,
      swversion: freezed == swversion
          ? _value.swversion
          : swversion // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uniqueid: freezed == uniqueid
          ? _value.uniqueid
          : uniqueid // ignore: cast_nullable_to_non_nullable
              as String?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PointsymbolCopyWith<$Res>? get pointsymbol {
    if (_value.pointsymbol == null) {
      return null;
    }

    return $PointsymbolCopyWith<$Res>(_value.pointsymbol!, (value) {
      return _then(_value.copyWith(pointsymbol: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LightStateCopyWith<$Res>? get state {
    if (_value.state == null) {
      return null;
    }

    return $LightStateCopyWith<$Res>(_value.state!, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LightCopyWith<$Res> implements $LightCopyWith<$Res> {
  factory _$$_LightCopyWith(_$_Light value, $Res Function(_$_Light) then) =
      __$$_LightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? etag,
      bool? hascolor,
      String? manufacturer,
      String? modelid,
      String? name,
      Pointsymbol? pointsymbol,
      @JsonKey(name: 'state') LightState? state,
      String? swversion,
      String? type,
      String? uniqueid,
      bool? selected});

  @override
  $PointsymbolCopyWith<$Res>? get pointsymbol;
  @override
  $LightStateCopyWith<$Res>? get state;
}

/// @nodoc
class __$$_LightCopyWithImpl<$Res> extends _$LightCopyWithImpl<$Res, _$_Light>
    implements _$$_LightCopyWith<$Res> {
  __$$_LightCopyWithImpl(_$_Light _value, $Res Function(_$_Light) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etag = freezed,
    Object? hascolor = freezed,
    Object? manufacturer = freezed,
    Object? modelid = freezed,
    Object? name = freezed,
    Object? pointsymbol = freezed,
    Object? state = freezed,
    Object? swversion = freezed,
    Object? type = freezed,
    Object? uniqueid = freezed,
    Object? selected = freezed,
  }) {
    return _then(_$_Light(
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      hascolor: freezed == hascolor
          ? _value.hascolor
          : hascolor // ignore: cast_nullable_to_non_nullable
              as bool?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      modelid: freezed == modelid
          ? _value.modelid
          : modelid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pointsymbol: freezed == pointsymbol
          ? _value.pointsymbol
          : pointsymbol // ignore: cast_nullable_to_non_nullable
              as Pointsymbol?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as LightState?,
      swversion: freezed == swversion
          ? _value.swversion
          : swversion // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uniqueid: freezed == uniqueid
          ? _value.uniqueid
          : uniqueid // ignore: cast_nullable_to_non_nullable
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
class _$_Light implements _Light {
  const _$_Light(
      {this.etag,
      this.hascolor,
      this.manufacturer,
      this.modelid,
      this.name,
      this.pointsymbol,
      @JsonKey(name: 'state') this.state,
      this.swversion,
      this.type,
      this.uniqueid,
      this.selected});

  factory _$_Light.fromJson(Map<String, dynamic> json) =>
      _$$_LightFromJson(json);

  @override
  final String? etag;
  @override
  final bool? hascolor;
  @override
  final String? manufacturer;
  @override
  final String? modelid;
  @override
  final String? name;
  @override
  final Pointsymbol? pointsymbol;
  @override
  @JsonKey(name: 'state')
  final LightState? state;
  @override
  final String? swversion;
  @override
  final String? type;
  @override
  final String? uniqueid;
  @override
  final bool? selected;

  @override
  String toString() {
    return 'Light(etag: $etag, hascolor: $hascolor, manufacturer: $manufacturer, modelid: $modelid, name: $name, pointsymbol: $pointsymbol, state: $state, swversion: $swversion, type: $type, uniqueid: $uniqueid, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Light &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.hascolor, hascolor) ||
                other.hascolor == hascolor) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.modelid, modelid) || other.modelid == modelid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pointsymbol, pointsymbol) ||
                other.pointsymbol == pointsymbol) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.swversion, swversion) ||
                other.swversion == swversion) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uniqueid, uniqueid) ||
                other.uniqueid == uniqueid) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, etag, hascolor, manufacturer,
      modelid, name, pointsymbol, state, swversion, type, uniqueid, selected);

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
      {final String? etag,
      final bool? hascolor,
      final String? manufacturer,
      final String? modelid,
      final String? name,
      final Pointsymbol? pointsymbol,
      @JsonKey(name: 'state') final LightState? state,
      final String? swversion,
      final String? type,
      final String? uniqueid,
      final bool? selected}) = _$_Light;

  factory _Light.fromJson(Map<String, dynamic> json) = _$_Light.fromJson;

  @override
  String? get etag;
  @override
  bool? get hascolor;
  @override
  String? get manufacturer;
  @override
  String? get modelid;
  @override
  String? get name;
  @override
  Pointsymbol? get pointsymbol;
  @override
  @JsonKey(name: 'state')
  LightState? get state;
  @override
  String? get swversion;
  @override
  String? get type;
  @override
  String? get uniqueid;
  @override
  bool? get selected;
  @override
  @JsonKey(ignore: true)
  _$$_LightCopyWith<_$_Light> get copyWith =>
      throw _privateConstructorUsedError;
}

Pointsymbol _$PointsymbolFromJson(Map<String, dynamic> json) {
  return _Pointsymbol.fromJson(json);
}

/// @nodoc
mixin _$Pointsymbol {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointsymbolCopyWith<$Res> {
  factory $PointsymbolCopyWith(
          Pointsymbol value, $Res Function(Pointsymbol) then) =
      _$PointsymbolCopyWithImpl<$Res, Pointsymbol>;
}

/// @nodoc
class _$PointsymbolCopyWithImpl<$Res, $Val extends Pointsymbol>
    implements $PointsymbolCopyWith<$Res> {
  _$PointsymbolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PointsymbolCopyWith<$Res> {
  factory _$$_PointsymbolCopyWith(
          _$_Pointsymbol value, $Res Function(_$_Pointsymbol) then) =
      __$$_PointsymbolCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PointsymbolCopyWithImpl<$Res>
    extends _$PointsymbolCopyWithImpl<$Res, _$_Pointsymbol>
    implements _$$_PointsymbolCopyWith<$Res> {
  __$$_PointsymbolCopyWithImpl(
      _$_Pointsymbol _value, $Res Function(_$_Pointsymbol) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Pointsymbol implements _Pointsymbol {
  const _$_Pointsymbol();

  factory _$_Pointsymbol.fromJson(Map<String, dynamic> json) =>
      _$$_PointsymbolFromJson(json);

  @override
  String toString() {
    return 'Pointsymbol()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Pointsymbol);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_PointsymbolToJson(
      this,
    );
  }
}

abstract class _Pointsymbol implements Pointsymbol {
  const factory _Pointsymbol() = _$_Pointsymbol;

  factory _Pointsymbol.fromJson(Map<String, dynamic> json) =
      _$_Pointsymbol.fromJson;
}

LightState _$LightStateFromJson(Map<String, dynamic> json) {
  return _LightState.fromJson(json);
}

/// @nodoc
mixin _$LightState {
  String? get alert => throw _privateConstructorUsedError;
  int? get bri => throw _privateConstructorUsedError;
  String? get colormode => throw _privateConstructorUsedError;
  int? get ct => throw _privateConstructorUsedError;
  String? get effect => throw _privateConstructorUsedError;
  int? get hue => throw _privateConstructorUsedError;
  bool? get on => throw _privateConstructorUsedError;
  bool? get reachable => throw _privateConstructorUsedError;
  int? get sat => throw _privateConstructorUsedError;
  List<double>? get xy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LightStateCopyWith<LightState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LightStateCopyWith<$Res> {
  factory $LightStateCopyWith(
          LightState value, $Res Function(LightState) then) =
      _$LightStateCopyWithImpl<$Res, LightState>;
  @useResult
  $Res call(
      {String? alert,
      int? bri,
      String? colormode,
      int? ct,
      String? effect,
      int? hue,
      bool? on,
      bool? reachable,
      int? sat,
      List<double>? xy});
}

/// @nodoc
class _$LightStateCopyWithImpl<$Res, $Val extends LightState>
    implements $LightStateCopyWith<$Res> {
  _$LightStateCopyWithImpl(this._value, this._then);

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
    Object? reachable = freezed,
    Object? sat = freezed,
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
      reachable: freezed == reachable
          ? _value.reachable
          : reachable // ignore: cast_nullable_to_non_nullable
              as bool?,
      sat: freezed == sat
          ? _value.sat
          : sat // ignore: cast_nullable_to_non_nullable
              as int?,
      xy: freezed == xy
          ? _value.xy
          : xy // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LightStateCopyWith<$Res>
    implements $LightStateCopyWith<$Res> {
  factory _$$_LightStateCopyWith(
          _$_LightState value, $Res Function(_$_LightState) then) =
      __$$_LightStateCopyWithImpl<$Res>;
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
      bool? reachable,
      int? sat,
      List<double>? xy});
}

/// @nodoc
class __$$_LightStateCopyWithImpl<$Res>
    extends _$LightStateCopyWithImpl<$Res, _$_LightState>
    implements _$$_LightStateCopyWith<$Res> {
  __$$_LightStateCopyWithImpl(
      _$_LightState _value, $Res Function(_$_LightState) _then)
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
    Object? reachable = freezed,
    Object? sat = freezed,
    Object? xy = freezed,
  }) {
    return _then(_$_LightState(
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
      reachable: freezed == reachable
          ? _value.reachable
          : reachable // ignore: cast_nullable_to_non_nullable
              as bool?,
      sat: freezed == sat
          ? _value.sat
          : sat // ignore: cast_nullable_to_non_nullable
              as int?,
      xy: freezed == xy
          ? _value._xy
          : xy // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LightState implements _LightState {
  const _$_LightState(
      {this.alert,
      this.bri,
      this.colormode,
      this.ct,
      this.effect,
      this.hue,
      this.on,
      this.reachable,
      this.sat,
      final List<double>? xy})
      : _xy = xy;

  factory _$_LightState.fromJson(Map<String, dynamic> json) =>
      _$$_LightStateFromJson(json);

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
  final bool? reachable;
  @override
  final int? sat;
  final List<double>? _xy;
  @override
  List<double>? get xy {
    final value = _xy;
    if (value == null) return null;
    if (_xy is EqualUnmodifiableListView) return _xy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LightState(alert: $alert, bri: $bri, colormode: $colormode, ct: $ct, effect: $effect, hue: $hue, on: $on, reachable: $reachable, sat: $sat, xy: $xy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LightState &&
            (identical(other.alert, alert) || other.alert == alert) &&
            (identical(other.bri, bri) || other.bri == bri) &&
            (identical(other.colormode, colormode) ||
                other.colormode == colormode) &&
            (identical(other.ct, ct) || other.ct == ct) &&
            (identical(other.effect, effect) || other.effect == effect) &&
            (identical(other.hue, hue) || other.hue == hue) &&
            (identical(other.on, on) || other.on == on) &&
            (identical(other.reachable, reachable) ||
                other.reachable == reachable) &&
            (identical(other.sat, sat) || other.sat == sat) &&
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
      reachable,
      sat,
      const DeepCollectionEquality().hash(_xy));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LightStateCopyWith<_$_LightState> get copyWith =>
      __$$_LightStateCopyWithImpl<_$_LightState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LightStateToJson(
      this,
    );
  }
}

abstract class _LightState implements LightState {
  const factory _LightState(
      {final String? alert,
      final int? bri,
      final String? colormode,
      final int? ct,
      final String? effect,
      final int? hue,
      final bool? on,
      final bool? reachable,
      final int? sat,
      final List<double>? xy}) = _$_LightState;

  factory _LightState.fromJson(Map<String, dynamic> json) =
      _$_LightState.fromJson;

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
  bool? get reachable;
  @override
  int? get sat;
  @override
  List<double>? get xy;
  @override
  @JsonKey(ignore: true)
  _$$_LightStateCopyWith<_$_LightState> get copyWith =>
      throw _privateConstructorUsedError;
}
