// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_systems.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlarmSystem _$AlarmSystemFromJson(Map<String, dynamic> json) {
  return _AlarmSystem.fromJson(json);
}

/// @nodoc
mixin _$AlarmSystem {
  @JsonKey(name: '1')
  The1? get the1 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlarmSystemCopyWith<AlarmSystem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmSystemCopyWith<$Res> {
  factory $AlarmSystemCopyWith(
          AlarmSystem value, $Res Function(AlarmSystem) then) =
      _$AlarmSystemCopyWithImpl<$Res, AlarmSystem>;
  @useResult
  $Res call({@JsonKey(name: '1') The1? the1});

  $The1CopyWith<$Res>? get the1;
}

/// @nodoc
class _$AlarmSystemCopyWithImpl<$Res, $Val extends AlarmSystem>
    implements $AlarmSystemCopyWith<$Res> {
  _$AlarmSystemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? the1 = freezed,
  }) {
    return _then(_value.copyWith(
      the1: freezed == the1
          ? _value.the1
          : the1 // ignore: cast_nullable_to_non_nullable
              as The1?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $The1CopyWith<$Res>? get the1 {
    if (_value.the1 == null) {
      return null;
    }

    return $The1CopyWith<$Res>(_value.the1!, (value) {
      return _then(_value.copyWith(the1: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AlarmSystemCopyWith<$Res>
    implements $AlarmSystemCopyWith<$Res> {
  factory _$$_AlarmSystemCopyWith(
          _$_AlarmSystem value, $Res Function(_$_AlarmSystem) then) =
      __$$_AlarmSystemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '1') The1? the1});

  @override
  $The1CopyWith<$Res>? get the1;
}

/// @nodoc
class __$$_AlarmSystemCopyWithImpl<$Res>
    extends _$AlarmSystemCopyWithImpl<$Res, _$_AlarmSystem>
    implements _$$_AlarmSystemCopyWith<$Res> {
  __$$_AlarmSystemCopyWithImpl(
      _$_AlarmSystem _value, $Res Function(_$_AlarmSystem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? the1 = freezed,
  }) {
    return _then(_$_AlarmSystem(
      the1: freezed == the1
          ? _value.the1
          : the1 // ignore: cast_nullable_to_non_nullable
              as The1?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AlarmSystem implements _AlarmSystem {
  const _$_AlarmSystem({@JsonKey(name: '1') this.the1});

  factory _$_AlarmSystem.fromJson(Map<String, dynamic> json) =>
      _$$_AlarmSystemFromJson(json);

  @override
  @JsonKey(name: '1')
  final The1? the1;

  @override
  String toString() {
    return 'AlarmSystem(the1: $the1)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlarmSystem &&
            (identical(other.the1, the1) || other.the1 == the1));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, the1);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlarmSystemCopyWith<_$_AlarmSystem> get copyWith =>
      __$$_AlarmSystemCopyWithImpl<_$_AlarmSystem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlarmSystemToJson(
      this,
    );
  }
}

abstract class _AlarmSystem implements AlarmSystem {
  const factory _AlarmSystem({@JsonKey(name: '1') final The1? the1}) =
      _$_AlarmSystem;

  factory _AlarmSystem.fromJson(Map<String, dynamic> json) =
      _$_AlarmSystem.fromJson;

  @override
  @JsonKey(name: '1')
  The1? get the1;
  @override
  @JsonKey(ignore: true)
  _$$_AlarmSystemCopyWith<_$_AlarmSystem> get copyWith =>
      throw _privateConstructorUsedError;
}

The1 _$The1FromJson(Map<String, dynamic> json) {
  return _The1.fromJson(json);
}

/// @nodoc
mixin _$The1 {
  String? get name => throw _privateConstructorUsedError;
  Config? get config => throw _privateConstructorUsedError;
  State? get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $The1CopyWith<The1> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $The1CopyWith<$Res> {
  factory $The1CopyWith(The1 value, $Res Function(The1) then) =
      _$The1CopyWithImpl<$Res, The1>;
  @useResult
  $Res call({String? name, Config? config, State? state});

  $ConfigCopyWith<$Res>? get config;
  $StateCopyWith<$Res>? get state;
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
    Object? name = freezed,
    Object? config = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Config?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as State?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConfigCopyWith<$Res>? get config {
    if (_value.config == null) {
      return null;
    }

    return $ConfigCopyWith<$Res>(_value.config!, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StateCopyWith<$Res>? get state {
    if (_value.state == null) {
      return null;
    }

    return $StateCopyWith<$Res>(_value.state!, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_The1CopyWith<$Res> implements $The1CopyWith<$Res> {
  factory _$$_The1CopyWith(_$_The1 value, $Res Function(_$_The1) then) =
      __$$_The1CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, Config? config, State? state});

  @override
  $ConfigCopyWith<$Res>? get config;
  @override
  $StateCopyWith<$Res>? get state;
}

/// @nodoc
class __$$_The1CopyWithImpl<$Res> extends _$The1CopyWithImpl<$Res, _$_The1>
    implements _$$_The1CopyWith<$Res> {
  __$$_The1CopyWithImpl(_$_The1 _value, $Res Function(_$_The1) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? config = freezed,
    Object? state = freezed,
  }) {
    return _then(_$_The1(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Config?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as State?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_The1 implements _The1 {
  const _$_The1({this.name, this.config, this.state});

  factory _$_The1.fromJson(Map<String, dynamic> json) => _$$_The1FromJson(json);

  @override
  final String? name;
  @override
  final Config? config;
  @override
  final State? state;

  @override
  String toString() {
    return 'The1(name: $name, config: $config, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_The1 &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.config, config) || other.config == config) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, config, state);

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
  const factory _The1(
      {final String? name, final Config? config, final State? state}) = _$_The1;

  factory _The1.fromJson(Map<String, dynamic> json) = _$_The1.fromJson;

  @override
  String? get name;
  @override
  Config? get config;
  @override
  State? get state;
  @override
  @JsonKey(ignore: true)
  _$$_The1CopyWith<_$_The1> get copyWith => throw _privateConstructorUsedError;
}

Config _$ConfigFromJson(Map<String, dynamic> json) {
  return _Config.fromJson(json);
}

/// @nodoc
mixin _$Config {
  String? get armmode => throw _privateConstructorUsedError;
  bool? get configured => throw _privateConstructorUsedError;
  @JsonKey(name: 'disarmed_entry_delay')
  int? get disarmedEntryDelay => throw _privateConstructorUsedError;
  @JsonKey(name: 'disarmed_exit_delay')
  int? get disarmedExitDelay => throw _privateConstructorUsedError;
  @JsonKey(name: 'armed_away_entry_delay')
  int? get armedAwayEntryDelay => throw _privateConstructorUsedError;
  @JsonKey(name: 'armed_away_exit_delay')
  int? get armedAwayExitDelay => throw _privateConstructorUsedError;
  @JsonKey(name: 'armed_away_trigger_duration')
  int? get armedAwayTriggerDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'armed_stay_entry_delay')
  int? get armedStayEntryDelay => throw _privateConstructorUsedError;
  @JsonKey(name: 'armed_stay_exit_delay')
  int? get armedStayExitDelay => throw _privateConstructorUsedError;
  @JsonKey(name: 'armed_stay_trigger_duration')
  int? get armedStayTriggerDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'armed_night_entry_delay')
  int? get armedNightEntryDelay => throw _privateConstructorUsedError;
  @JsonKey(name: 'armed_night_exit_delay')
  int? get armedNightExitDelay => throw _privateConstructorUsedError;
  @JsonKey(name: 'armed_night_trigger_duration')
  int? get armedNightTriggerDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigCopyWith<Config> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigCopyWith<$Res> {
  factory $ConfigCopyWith(Config value, $Res Function(Config) then) =
      _$ConfigCopyWithImpl<$Res, Config>;
  @useResult
  $Res call(
      {String? armmode,
      bool? configured,
      @JsonKey(name: 'disarmed_entry_delay')
          int? disarmedEntryDelay,
      @JsonKey(name: 'disarmed_exit_delay')
          int? disarmedExitDelay,
      @JsonKey(name: 'armed_away_entry_delay')
          int? armedAwayEntryDelay,
      @JsonKey(name: 'armed_away_exit_delay')
          int? armedAwayExitDelay,
      @JsonKey(name: 'armed_away_trigger_duration')
          int? armedAwayTriggerDuration,
      @JsonKey(name: 'armed_stay_entry_delay')
          int? armedStayEntryDelay,
      @JsonKey(name: 'armed_stay_exit_delay')
          int? armedStayExitDelay,
      @JsonKey(name: 'armed_stay_trigger_duration')
          int? armedStayTriggerDuration,
      @JsonKey(name: 'armed_night_entry_delay')
          int? armedNightEntryDelay,
      @JsonKey(name: 'armed_night_exit_delay')
          int? armedNightExitDelay,
      @JsonKey(name: 'armed_night_trigger_duration')
          int? armedNightTriggerDuration});
}

/// @nodoc
class _$ConfigCopyWithImpl<$Res, $Val extends Config>
    implements $ConfigCopyWith<$Res> {
  _$ConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? armmode = freezed,
    Object? configured = freezed,
    Object? disarmedEntryDelay = freezed,
    Object? disarmedExitDelay = freezed,
    Object? armedAwayEntryDelay = freezed,
    Object? armedAwayExitDelay = freezed,
    Object? armedAwayTriggerDuration = freezed,
    Object? armedStayEntryDelay = freezed,
    Object? armedStayExitDelay = freezed,
    Object? armedStayTriggerDuration = freezed,
    Object? armedNightEntryDelay = freezed,
    Object? armedNightExitDelay = freezed,
    Object? armedNightTriggerDuration = freezed,
  }) {
    return _then(_value.copyWith(
      armmode: freezed == armmode
          ? _value.armmode
          : armmode // ignore: cast_nullable_to_non_nullable
              as String?,
      configured: freezed == configured
          ? _value.configured
          : configured // ignore: cast_nullable_to_non_nullable
              as bool?,
      disarmedEntryDelay: freezed == disarmedEntryDelay
          ? _value.disarmedEntryDelay
          : disarmedEntryDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      disarmedExitDelay: freezed == disarmedExitDelay
          ? _value.disarmedExitDelay
          : disarmedExitDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      armedAwayEntryDelay: freezed == armedAwayEntryDelay
          ? _value.armedAwayEntryDelay
          : armedAwayEntryDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      armedAwayExitDelay: freezed == armedAwayExitDelay
          ? _value.armedAwayExitDelay
          : armedAwayExitDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      armedAwayTriggerDuration: freezed == armedAwayTriggerDuration
          ? _value.armedAwayTriggerDuration
          : armedAwayTriggerDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      armedStayEntryDelay: freezed == armedStayEntryDelay
          ? _value.armedStayEntryDelay
          : armedStayEntryDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      armedStayExitDelay: freezed == armedStayExitDelay
          ? _value.armedStayExitDelay
          : armedStayExitDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      armedStayTriggerDuration: freezed == armedStayTriggerDuration
          ? _value.armedStayTriggerDuration
          : armedStayTriggerDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      armedNightEntryDelay: freezed == armedNightEntryDelay
          ? _value.armedNightEntryDelay
          : armedNightEntryDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      armedNightExitDelay: freezed == armedNightExitDelay
          ? _value.armedNightExitDelay
          : armedNightExitDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      armedNightTriggerDuration: freezed == armedNightTriggerDuration
          ? _value.armedNightTriggerDuration
          : armedNightTriggerDuration // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConfigCopyWith<$Res> implements $ConfigCopyWith<$Res> {
  factory _$$_ConfigCopyWith(_$_Config value, $Res Function(_$_Config) then) =
      __$$_ConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? armmode,
      bool? configured,
      @JsonKey(name: 'disarmed_entry_delay')
          int? disarmedEntryDelay,
      @JsonKey(name: 'disarmed_exit_delay')
          int? disarmedExitDelay,
      @JsonKey(name: 'armed_away_entry_delay')
          int? armedAwayEntryDelay,
      @JsonKey(name: 'armed_away_exit_delay')
          int? armedAwayExitDelay,
      @JsonKey(name: 'armed_away_trigger_duration')
          int? armedAwayTriggerDuration,
      @JsonKey(name: 'armed_stay_entry_delay')
          int? armedStayEntryDelay,
      @JsonKey(name: 'armed_stay_exit_delay')
          int? armedStayExitDelay,
      @JsonKey(name: 'armed_stay_trigger_duration')
          int? armedStayTriggerDuration,
      @JsonKey(name: 'armed_night_entry_delay')
          int? armedNightEntryDelay,
      @JsonKey(name: 'armed_night_exit_delay')
          int? armedNightExitDelay,
      @JsonKey(name: 'armed_night_trigger_duration')
          int? armedNightTriggerDuration});
}

/// @nodoc
class __$$_ConfigCopyWithImpl<$Res>
    extends _$ConfigCopyWithImpl<$Res, _$_Config>
    implements _$$_ConfigCopyWith<$Res> {
  __$$_ConfigCopyWithImpl(_$_Config _value, $Res Function(_$_Config) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? armmode = freezed,
    Object? configured = freezed,
    Object? disarmedEntryDelay = freezed,
    Object? disarmedExitDelay = freezed,
    Object? armedAwayEntryDelay = freezed,
    Object? armedAwayExitDelay = freezed,
    Object? armedAwayTriggerDuration = freezed,
    Object? armedStayEntryDelay = freezed,
    Object? armedStayExitDelay = freezed,
    Object? armedStayTriggerDuration = freezed,
    Object? armedNightEntryDelay = freezed,
    Object? armedNightExitDelay = freezed,
    Object? armedNightTriggerDuration = freezed,
  }) {
    return _then(_$_Config(
      armmode: freezed == armmode
          ? _value.armmode
          : armmode // ignore: cast_nullable_to_non_nullable
              as String?,
      configured: freezed == configured
          ? _value.configured
          : configured // ignore: cast_nullable_to_non_nullable
              as bool?,
      disarmedEntryDelay: freezed == disarmedEntryDelay
          ? _value.disarmedEntryDelay
          : disarmedEntryDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      disarmedExitDelay: freezed == disarmedExitDelay
          ? _value.disarmedExitDelay
          : disarmedExitDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      armedAwayEntryDelay: freezed == armedAwayEntryDelay
          ? _value.armedAwayEntryDelay
          : armedAwayEntryDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      armedAwayExitDelay: freezed == armedAwayExitDelay
          ? _value.armedAwayExitDelay
          : armedAwayExitDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      armedAwayTriggerDuration: freezed == armedAwayTriggerDuration
          ? _value.armedAwayTriggerDuration
          : armedAwayTriggerDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      armedStayEntryDelay: freezed == armedStayEntryDelay
          ? _value.armedStayEntryDelay
          : armedStayEntryDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      armedStayExitDelay: freezed == armedStayExitDelay
          ? _value.armedStayExitDelay
          : armedStayExitDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      armedStayTriggerDuration: freezed == armedStayTriggerDuration
          ? _value.armedStayTriggerDuration
          : armedStayTriggerDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      armedNightEntryDelay: freezed == armedNightEntryDelay
          ? _value.armedNightEntryDelay
          : armedNightEntryDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      armedNightExitDelay: freezed == armedNightExitDelay
          ? _value.armedNightExitDelay
          : armedNightExitDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      armedNightTriggerDuration: freezed == armedNightTriggerDuration
          ? _value.armedNightTriggerDuration
          : armedNightTriggerDuration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Config implements _Config {
  const _$_Config(
      {this.armmode,
      this.configured,
      @JsonKey(name: 'disarmed_entry_delay')
          this.disarmedEntryDelay,
      @JsonKey(name: 'disarmed_exit_delay')
          this.disarmedExitDelay,
      @JsonKey(name: 'armed_away_entry_delay')
          this.armedAwayEntryDelay,
      @JsonKey(name: 'armed_away_exit_delay')
          this.armedAwayExitDelay,
      @JsonKey(name: 'armed_away_trigger_duration')
          this.armedAwayTriggerDuration,
      @JsonKey(name: 'armed_stay_entry_delay')
          this.armedStayEntryDelay,
      @JsonKey(name: 'armed_stay_exit_delay')
          this.armedStayExitDelay,
      @JsonKey(name: 'armed_stay_trigger_duration')
          this.armedStayTriggerDuration,
      @JsonKey(name: 'armed_night_entry_delay')
          this.armedNightEntryDelay,
      @JsonKey(name: 'armed_night_exit_delay')
          this.armedNightExitDelay,
      @JsonKey(name: 'armed_night_trigger_duration')
          this.armedNightTriggerDuration});

  factory _$_Config.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigFromJson(json);

  @override
  final String? armmode;
  @override
  final bool? configured;
  @override
  @JsonKey(name: 'disarmed_entry_delay')
  final int? disarmedEntryDelay;
  @override
  @JsonKey(name: 'disarmed_exit_delay')
  final int? disarmedExitDelay;
  @override
  @JsonKey(name: 'armed_away_entry_delay')
  final int? armedAwayEntryDelay;
  @override
  @JsonKey(name: 'armed_away_exit_delay')
  final int? armedAwayExitDelay;
  @override
  @JsonKey(name: 'armed_away_trigger_duration')
  final int? armedAwayTriggerDuration;
  @override
  @JsonKey(name: 'armed_stay_entry_delay')
  final int? armedStayEntryDelay;
  @override
  @JsonKey(name: 'armed_stay_exit_delay')
  final int? armedStayExitDelay;
  @override
  @JsonKey(name: 'armed_stay_trigger_duration')
  final int? armedStayTriggerDuration;
  @override
  @JsonKey(name: 'armed_night_entry_delay')
  final int? armedNightEntryDelay;
  @override
  @JsonKey(name: 'armed_night_exit_delay')
  final int? armedNightExitDelay;
  @override
  @JsonKey(name: 'armed_night_trigger_duration')
  final int? armedNightTriggerDuration;

  @override
  String toString() {
    return 'Config(armmode: $armmode, configured: $configured, disarmedEntryDelay: $disarmedEntryDelay, disarmedExitDelay: $disarmedExitDelay, armedAwayEntryDelay: $armedAwayEntryDelay, armedAwayExitDelay: $armedAwayExitDelay, armedAwayTriggerDuration: $armedAwayTriggerDuration, armedStayEntryDelay: $armedStayEntryDelay, armedStayExitDelay: $armedStayExitDelay, armedStayTriggerDuration: $armedStayTriggerDuration, armedNightEntryDelay: $armedNightEntryDelay, armedNightExitDelay: $armedNightExitDelay, armedNightTriggerDuration: $armedNightTriggerDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Config &&
            (identical(other.armmode, armmode) || other.armmode == armmode) &&
            (identical(other.configured, configured) ||
                other.configured == configured) &&
            (identical(other.disarmedEntryDelay, disarmedEntryDelay) ||
                other.disarmedEntryDelay == disarmedEntryDelay) &&
            (identical(other.disarmedExitDelay, disarmedExitDelay) ||
                other.disarmedExitDelay == disarmedExitDelay) &&
            (identical(other.armedAwayEntryDelay, armedAwayEntryDelay) ||
                other.armedAwayEntryDelay == armedAwayEntryDelay) &&
            (identical(other.armedAwayExitDelay, armedAwayExitDelay) ||
                other.armedAwayExitDelay == armedAwayExitDelay) &&
            (identical(
                    other.armedAwayTriggerDuration, armedAwayTriggerDuration) ||
                other.armedAwayTriggerDuration == armedAwayTriggerDuration) &&
            (identical(other.armedStayEntryDelay, armedStayEntryDelay) ||
                other.armedStayEntryDelay == armedStayEntryDelay) &&
            (identical(other.armedStayExitDelay, armedStayExitDelay) ||
                other.armedStayExitDelay == armedStayExitDelay) &&
            (identical(
                    other.armedStayTriggerDuration, armedStayTriggerDuration) ||
                other.armedStayTriggerDuration == armedStayTriggerDuration) &&
            (identical(other.armedNightEntryDelay, armedNightEntryDelay) ||
                other.armedNightEntryDelay == armedNightEntryDelay) &&
            (identical(other.armedNightExitDelay, armedNightExitDelay) ||
                other.armedNightExitDelay == armedNightExitDelay) &&
            (identical(other.armedNightTriggerDuration,
                    armedNightTriggerDuration) ||
                other.armedNightTriggerDuration == armedNightTriggerDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      armmode,
      configured,
      disarmedEntryDelay,
      disarmedExitDelay,
      armedAwayEntryDelay,
      armedAwayExitDelay,
      armedAwayTriggerDuration,
      armedStayEntryDelay,
      armedStayExitDelay,
      armedStayTriggerDuration,
      armedNightEntryDelay,
      armedNightExitDelay,
      armedNightTriggerDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfigCopyWith<_$_Config> get copyWith =>
      __$$_ConfigCopyWithImpl<_$_Config>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigToJson(
      this,
    );
  }
}

abstract class _Config implements Config {
  const factory _Config(
      {final String? armmode,
      final bool? configured,
      @JsonKey(name: 'disarmed_entry_delay')
          final int? disarmedEntryDelay,
      @JsonKey(name: 'disarmed_exit_delay')
          final int? disarmedExitDelay,
      @JsonKey(name: 'armed_away_entry_delay')
          final int? armedAwayEntryDelay,
      @JsonKey(name: 'armed_away_exit_delay')
          final int? armedAwayExitDelay,
      @JsonKey(name: 'armed_away_trigger_duration')
          final int? armedAwayTriggerDuration,
      @JsonKey(name: 'armed_stay_entry_delay')
          final int? armedStayEntryDelay,
      @JsonKey(name: 'armed_stay_exit_delay')
          final int? armedStayExitDelay,
      @JsonKey(name: 'armed_stay_trigger_duration')
          final int? armedStayTriggerDuration,
      @JsonKey(name: 'armed_night_entry_delay')
          final int? armedNightEntryDelay,
      @JsonKey(name: 'armed_night_exit_delay')
          final int? armedNightExitDelay,
      @JsonKey(name: 'armed_night_trigger_duration')
          final int? armedNightTriggerDuration}) = _$_Config;

  factory _Config.fromJson(Map<String, dynamic> json) = _$_Config.fromJson;

  @override
  String? get armmode;
  @override
  bool? get configured;
  @override
  @JsonKey(name: 'disarmed_entry_delay')
  int? get disarmedEntryDelay;
  @override
  @JsonKey(name: 'disarmed_exit_delay')
  int? get disarmedExitDelay;
  @override
  @JsonKey(name: 'armed_away_entry_delay')
  int? get armedAwayEntryDelay;
  @override
  @JsonKey(name: 'armed_away_exit_delay')
  int? get armedAwayExitDelay;
  @override
  @JsonKey(name: 'armed_away_trigger_duration')
  int? get armedAwayTriggerDuration;
  @override
  @JsonKey(name: 'armed_stay_entry_delay')
  int? get armedStayEntryDelay;
  @override
  @JsonKey(name: 'armed_stay_exit_delay')
  int? get armedStayExitDelay;
  @override
  @JsonKey(name: 'armed_stay_trigger_duration')
  int? get armedStayTriggerDuration;
  @override
  @JsonKey(name: 'armed_night_entry_delay')
  int? get armedNightEntryDelay;
  @override
  @JsonKey(name: 'armed_night_exit_delay')
  int? get armedNightExitDelay;
  @override
  @JsonKey(name: 'armed_night_trigger_duration')
  int? get armedNightTriggerDuration;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigCopyWith<_$_Config> get copyWith =>
      throw _privateConstructorUsedError;
}

Devices _$DevicesFromJson(Map<String, dynamic> json) {
  return _Devices.fromJson(json);
}

/// @nodoc
mixin _$Devices {
  Ec1BBdFfFe6FC34D010501? get ec1BBdFfFe6FC34D010501 =>
      throw _privateConstructorUsedError;
  The00158D0002Af95F9010101? get the00158D0002Af95F9010101 =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DevicesCopyWith<Devices> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevicesCopyWith<$Res> {
  factory $DevicesCopyWith(Devices value, $Res Function(Devices) then) =
      _$DevicesCopyWithImpl<$Res, Devices>;
  @useResult
  $Res call(
      {Ec1BBdFfFe6FC34D010501? ec1BBdFfFe6FC34D010501,
      The00158D0002Af95F9010101? the00158D0002Af95F9010101});

  $Ec1BBdFfFe6FC34D010501CopyWith<$Res>? get ec1BBdFfFe6FC34D010501;
  $The00158D0002Af95F9010101CopyWith<$Res>? get the00158D0002Af95F9010101;
}

/// @nodoc
class _$DevicesCopyWithImpl<$Res, $Val extends Devices>
    implements $DevicesCopyWith<$Res> {
  _$DevicesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ec1BBdFfFe6FC34D010501 = freezed,
    Object? the00158D0002Af95F9010101 = freezed,
  }) {
    return _then(_value.copyWith(
      ec1BBdFfFe6FC34D010501: freezed == ec1BBdFfFe6FC34D010501
          ? _value.ec1BBdFfFe6FC34D010501
          : ec1BBdFfFe6FC34D010501 // ignore: cast_nullable_to_non_nullable
              as Ec1BBdFfFe6FC34D010501?,
      the00158D0002Af95F9010101: freezed == the00158D0002Af95F9010101
          ? _value.the00158D0002Af95F9010101
          : the00158D0002Af95F9010101 // ignore: cast_nullable_to_non_nullable
              as The00158D0002Af95F9010101?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $Ec1BBdFfFe6FC34D010501CopyWith<$Res>? get ec1BBdFfFe6FC34D010501 {
    if (_value.ec1BBdFfFe6FC34D010501 == null) {
      return null;
    }

    return $Ec1BBdFfFe6FC34D010501CopyWith<$Res>(_value.ec1BBdFfFe6FC34D010501!,
        (value) {
      return _then(_value.copyWith(ec1BBdFfFe6FC34D010501: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $The00158D0002Af95F9010101CopyWith<$Res>? get the00158D0002Af95F9010101 {
    if (_value.the00158D0002Af95F9010101 == null) {
      return null;
    }

    return $The00158D0002Af95F9010101CopyWith<$Res>(
        _value.the00158D0002Af95F9010101!, (value) {
      return _then(_value.copyWith(the00158D0002Af95F9010101: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DevicesCopyWith<$Res> implements $DevicesCopyWith<$Res> {
  factory _$$_DevicesCopyWith(
          _$_Devices value, $Res Function(_$_Devices) then) =
      __$$_DevicesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Ec1BBdFfFe6FC34D010501? ec1BBdFfFe6FC34D010501,
      The00158D0002Af95F9010101? the00158D0002Af95F9010101});

  @override
  $Ec1BBdFfFe6FC34D010501CopyWith<$Res>? get ec1BBdFfFe6FC34D010501;
  @override
  $The00158D0002Af95F9010101CopyWith<$Res>? get the00158D0002Af95F9010101;
}

/// @nodoc
class __$$_DevicesCopyWithImpl<$Res>
    extends _$DevicesCopyWithImpl<$Res, _$_Devices>
    implements _$$_DevicesCopyWith<$Res> {
  __$$_DevicesCopyWithImpl(_$_Devices _value, $Res Function(_$_Devices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ec1BBdFfFe6FC34D010501 = freezed,
    Object? the00158D0002Af95F9010101 = freezed,
  }) {
    return _then(_$_Devices(
      ec1BBdFfFe6FC34D010501: freezed == ec1BBdFfFe6FC34D010501
          ? _value.ec1BBdFfFe6FC34D010501
          : ec1BBdFfFe6FC34D010501 // ignore: cast_nullable_to_non_nullable
              as Ec1BBdFfFe6FC34D010501?,
      the00158D0002Af95F9010101: freezed == the00158D0002Af95F9010101
          ? _value.the00158D0002Af95F9010101
          : the00158D0002Af95F9010101 // ignore: cast_nullable_to_non_nullable
              as The00158D0002Af95F9010101?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Devices implements _Devices {
  const _$_Devices(
      {this.ec1BBdFfFe6FC34D010501, this.the00158D0002Af95F9010101});

  factory _$_Devices.fromJson(Map<String, dynamic> json) =>
      _$$_DevicesFromJson(json);

  @override
  final Ec1BBdFfFe6FC34D010501? ec1BBdFfFe6FC34D010501;
  @override
  final The00158D0002Af95F9010101? the00158D0002Af95F9010101;

  @override
  String toString() {
    return 'Devices(ec1BBdFfFe6FC34D010501: $ec1BBdFfFe6FC34D010501, the00158D0002Af95F9010101: $the00158D0002Af95F9010101)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Devices &&
            (identical(other.ec1BBdFfFe6FC34D010501, ec1BBdFfFe6FC34D010501) ||
                other.ec1BBdFfFe6FC34D010501 == ec1BBdFfFe6FC34D010501) &&
            (identical(other.the00158D0002Af95F9010101,
                    the00158D0002Af95F9010101) ||
                other.the00158D0002Af95F9010101 == the00158D0002Af95F9010101));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, ec1BBdFfFe6FC34D010501, the00158D0002Af95F9010101);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DevicesCopyWith<_$_Devices> get copyWith =>
      __$$_DevicesCopyWithImpl<_$_Devices>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DevicesToJson(
      this,
    );
  }
}

abstract class _Devices implements Devices {
  const factory _Devices(
      {final Ec1BBdFfFe6FC34D010501? ec1BBdFfFe6FC34D010501,
      final The00158D0002Af95F9010101? the00158D0002Af95F9010101}) = _$_Devices;

  factory _Devices.fromJson(Map<String, dynamic> json) = _$_Devices.fromJson;

  @override
  Ec1BBdFfFe6FC34D010501? get ec1BBdFfFe6FC34D010501;
  @override
  The00158D0002Af95F9010101? get the00158D0002Af95F9010101;
  @override
  @JsonKey(ignore: true)
  _$$_DevicesCopyWith<_$_Devices> get copyWith =>
      throw _privateConstructorUsedError;
}

Ec1BBdFfFe6FC34D010501 _$Ec1BBdFfFe6FC34D010501FromJson(
    Map<String, dynamic> json) {
  return _Ec1BBdFfFe6FC34D010501.fromJson(json);
}

/// @nodoc
mixin _$Ec1BBdFfFe6FC34D010501 {
  String? get armmask => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Ec1BBdFfFe6FC34D010501CopyWith<Ec1BBdFfFe6FC34D010501> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Ec1BBdFfFe6FC34D010501CopyWith<$Res> {
  factory $Ec1BBdFfFe6FC34D010501CopyWith(Ec1BBdFfFe6FC34D010501 value,
          $Res Function(Ec1BBdFfFe6FC34D010501) then) =
      _$Ec1BBdFfFe6FC34D010501CopyWithImpl<$Res, Ec1BBdFfFe6FC34D010501>;
  @useResult
  $Res call({String? armmask});
}

/// @nodoc
class _$Ec1BBdFfFe6FC34D010501CopyWithImpl<$Res,
        $Val extends Ec1BBdFfFe6FC34D010501>
    implements $Ec1BBdFfFe6FC34D010501CopyWith<$Res> {
  _$Ec1BBdFfFe6FC34D010501CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? armmask = freezed,
  }) {
    return _then(_value.copyWith(
      armmask: freezed == armmask
          ? _value.armmask
          : armmask // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_Ec1BBdFfFe6FC34D010501CopyWith<$Res>
    implements $Ec1BBdFfFe6FC34D010501CopyWith<$Res> {
  factory _$$_Ec1BBdFfFe6FC34D010501CopyWith(_$_Ec1BBdFfFe6FC34D010501 value,
          $Res Function(_$_Ec1BBdFfFe6FC34D010501) then) =
      __$$_Ec1BBdFfFe6FC34D010501CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? armmask});
}

/// @nodoc
class __$$_Ec1BBdFfFe6FC34D010501CopyWithImpl<$Res>
    extends _$Ec1BBdFfFe6FC34D010501CopyWithImpl<$Res,
        _$_Ec1BBdFfFe6FC34D010501>
    implements _$$_Ec1BBdFfFe6FC34D010501CopyWith<$Res> {
  __$$_Ec1BBdFfFe6FC34D010501CopyWithImpl(_$_Ec1BBdFfFe6FC34D010501 _value,
      $Res Function(_$_Ec1BBdFfFe6FC34D010501) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? armmask = freezed,
  }) {
    return _then(_$_Ec1BBdFfFe6FC34D010501(
      armmask: freezed == armmask
          ? _value.armmask
          : armmask // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ec1BBdFfFe6FC34D010501 implements _Ec1BBdFfFe6FC34D010501 {
  const _$_Ec1BBdFfFe6FC34D010501({this.armmask});

  factory _$_Ec1BBdFfFe6FC34D010501.fromJson(Map<String, dynamic> json) =>
      _$$_Ec1BBdFfFe6FC34D010501FromJson(json);

  @override
  final String? armmask;

  @override
  String toString() {
    return 'Ec1BBdFfFe6FC34D010501(armmask: $armmask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ec1BBdFfFe6FC34D010501 &&
            (identical(other.armmask, armmask) || other.armmask == armmask));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, armmask);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_Ec1BBdFfFe6FC34D010501CopyWith<_$_Ec1BBdFfFe6FC34D010501> get copyWith =>
      __$$_Ec1BBdFfFe6FC34D010501CopyWithImpl<_$_Ec1BBdFfFe6FC34D010501>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_Ec1BBdFfFe6FC34D010501ToJson(
      this,
    );
  }
}

abstract class _Ec1BBdFfFe6FC34D010501 implements Ec1BBdFfFe6FC34D010501 {
  const factory _Ec1BBdFfFe6FC34D010501({final String? armmask}) =
      _$_Ec1BBdFfFe6FC34D010501;

  factory _Ec1BBdFfFe6FC34D010501.fromJson(Map<String, dynamic> json) =
      _$_Ec1BBdFfFe6FC34D010501.fromJson;

  @override
  String? get armmask;
  @override
  @JsonKey(ignore: true)
  _$$_Ec1BBdFfFe6FC34D010501CopyWith<_$_Ec1BBdFfFe6FC34D010501> get copyWith =>
      throw _privateConstructorUsedError;
}

The00158D0002Af95F9010101 _$The00158D0002Af95F9010101FromJson(
    Map<String, dynamic> json) {
  return _The00158D0002Af95F9010101.fromJson(json);
}

/// @nodoc
mixin _$The00158D0002Af95F9010101 {
  String? get armmask => throw _privateConstructorUsedError;
  String? get trigger => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $The00158D0002Af95F9010101CopyWith<The00158D0002Af95F9010101> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $The00158D0002Af95F9010101CopyWith<$Res> {
  factory $The00158D0002Af95F9010101CopyWith(The00158D0002Af95F9010101 value,
          $Res Function(The00158D0002Af95F9010101) then) =
      _$The00158D0002Af95F9010101CopyWithImpl<$Res, The00158D0002Af95F9010101>;
  @useResult
  $Res call({String? armmask, String? trigger});
}

/// @nodoc
class _$The00158D0002Af95F9010101CopyWithImpl<$Res,
        $Val extends The00158D0002Af95F9010101>
    implements $The00158D0002Af95F9010101CopyWith<$Res> {
  _$The00158D0002Af95F9010101CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? armmask = freezed,
    Object? trigger = freezed,
  }) {
    return _then(_value.copyWith(
      armmask: freezed == armmask
          ? _value.armmask
          : armmask // ignore: cast_nullable_to_non_nullable
              as String?,
      trigger: freezed == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_The00158D0002Af95F9010101CopyWith<$Res>
    implements $The00158D0002Af95F9010101CopyWith<$Res> {
  factory _$$_The00158D0002Af95F9010101CopyWith(
          _$_The00158D0002Af95F9010101 value,
          $Res Function(_$_The00158D0002Af95F9010101) then) =
      __$$_The00158D0002Af95F9010101CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? armmask, String? trigger});
}

/// @nodoc
class __$$_The00158D0002Af95F9010101CopyWithImpl<$Res>
    extends _$The00158D0002Af95F9010101CopyWithImpl<$Res,
        _$_The00158D0002Af95F9010101>
    implements _$$_The00158D0002Af95F9010101CopyWith<$Res> {
  __$$_The00158D0002Af95F9010101CopyWithImpl(
      _$_The00158D0002Af95F9010101 _value,
      $Res Function(_$_The00158D0002Af95F9010101) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? armmask = freezed,
    Object? trigger = freezed,
  }) {
    return _then(_$_The00158D0002Af95F9010101(
      armmask: freezed == armmask
          ? _value.armmask
          : armmask // ignore: cast_nullable_to_non_nullable
              as String?,
      trigger: freezed == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_The00158D0002Af95F9010101 implements _The00158D0002Af95F9010101 {
  const _$_The00158D0002Af95F9010101({this.armmask, this.trigger});

  factory _$_The00158D0002Af95F9010101.fromJson(Map<String, dynamic> json) =>
      _$$_The00158D0002Af95F9010101FromJson(json);

  @override
  final String? armmask;
  @override
  final String? trigger;

  @override
  String toString() {
    return 'The00158D0002Af95F9010101(armmask: $armmask, trigger: $trigger)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_The00158D0002Af95F9010101 &&
            (identical(other.armmask, armmask) || other.armmask == armmask) &&
            (identical(other.trigger, trigger) || other.trigger == trigger));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, armmask, trigger);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_The00158D0002Af95F9010101CopyWith<_$_The00158D0002Af95F9010101>
      get copyWith => __$$_The00158D0002Af95F9010101CopyWithImpl<
          _$_The00158D0002Af95F9010101>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_The00158D0002Af95F9010101ToJson(
      this,
    );
  }
}

abstract class _The00158D0002Af95F9010101 implements The00158D0002Af95F9010101 {
  const factory _The00158D0002Af95F9010101(
      {final String? armmask,
      final String? trigger}) = _$_The00158D0002Af95F9010101;

  factory _The00158D0002Af95F9010101.fromJson(Map<String, dynamic> json) =
      _$_The00158D0002Af95F9010101.fromJson;

  @override
  String? get armmask;
  @override
  String? get trigger;
  @override
  @JsonKey(ignore: true)
  _$$_The00158D0002Af95F9010101CopyWith<_$_The00158D0002Af95F9010101>
      get copyWith => throw _privateConstructorUsedError;
}

State _$StateFromJson(Map<String, dynamic> json) {
  return _State.fromJson(json);
}

/// @nodoc
mixin _$State {
  @JsonKey(name: 'armstate')
  String? get armstate => throw _privateConstructorUsedError;
  @JsonKey(name: 'seconds_remaining')
  int? get secondsRemaining => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateCopyWith<State> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCopyWith<$Res> {
  factory $StateCopyWith(State value, $Res Function(State) then) =
      _$StateCopyWithImpl<$Res, State>;
  @useResult
  $Res call(
      {@JsonKey(name: 'armstate') String? armstate,
      @JsonKey(name: 'seconds_remaining') int? secondsRemaining});
}

/// @nodoc
class _$StateCopyWithImpl<$Res, $Val extends State>
    implements $StateCopyWith<$Res> {
  _$StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? armstate = freezed,
    Object? secondsRemaining = freezed,
  }) {
    return _then(_value.copyWith(
      armstate: freezed == armstate
          ? _value.armstate
          : armstate // ignore: cast_nullable_to_non_nullable
              as String?,
      secondsRemaining: freezed == secondsRemaining
          ? _value.secondsRemaining
          : secondsRemaining // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateCopyWith<$Res> implements $StateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'armstate') String? armstate,
      @JsonKey(name: 'seconds_remaining') int? secondsRemaining});
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res> extends _$StateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? armstate = freezed,
    Object? secondsRemaining = freezed,
  }) {
    return _then(_$_State(
      armstate: freezed == armstate
          ? _value.armstate
          : armstate // ignore: cast_nullable_to_non_nullable
              as String?,
      secondsRemaining: freezed == secondsRemaining
          ? _value.secondsRemaining
          : secondsRemaining // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_State implements _State {
  const _$_State(
      {@JsonKey(name: 'armstate') this.armstate,
      @JsonKey(name: 'seconds_remaining') this.secondsRemaining});

  factory _$_State.fromJson(Map<String, dynamic> json) =>
      _$$_StateFromJson(json);

  @override
  @JsonKey(name: 'armstate')
  final String? armstate;
  @override
  @JsonKey(name: 'seconds_remaining')
  final int? secondsRemaining;

  @override
  String toString() {
    return 'State(armstate: $armstate, secondsRemaining: $secondsRemaining)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            (identical(other.armstate, armstate) ||
                other.armstate == armstate) &&
            (identical(other.secondsRemaining, secondsRemaining) ||
                other.secondsRemaining == secondsRemaining));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, armstate, secondsRemaining);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateToJson(
      this,
    );
  }
}

abstract class _State implements State {
  const factory _State(
          {@JsonKey(name: 'armstate') final String? armstate,
          @JsonKey(name: 'seconds_remaining') final int? secondsRemaining}) =
      _$_State;

  factory _State.fromJson(Map<String, dynamic> json) = _$_State.fromJson;

  @override
  @JsonKey(name: 'armstate')
  String? get armstate;
  @override
  @JsonKey(name: 'seconds_remaining')
  int? get secondsRemaining;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}
