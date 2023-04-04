// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gateway.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Gateway _$GatewayFromJson(Map<String, dynamic> json) {
  return _Gateway.fromJson(json);
}

/// @nodoc
mixin _$Gateway {
  String get id => throw _privateConstructorUsedError;
  String get internalipaddress => throw _privateConstructorUsedError;
  String get macaddress => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GatewayCopyWith<Gateway> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GatewayCopyWith<$Res> {
  factory $GatewayCopyWith(Gateway value, $Res Function(Gateway) then) =
      _$GatewayCopyWithImpl<$Res, Gateway>;
  @useResult
  $Res call(
      {String id, String internalipaddress, String macaddress, String name});
}

/// @nodoc
class _$GatewayCopyWithImpl<$Res, $Val extends Gateway>
    implements $GatewayCopyWith<$Res> {
  _$GatewayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? internalipaddress = null,
    Object? macaddress = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      internalipaddress: null == internalipaddress
          ? _value.internalipaddress
          : internalipaddress // ignore: cast_nullable_to_non_nullable
              as String,
      macaddress: null == macaddress
          ? _value.macaddress
          : macaddress // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GatewayCopyWith<$Res> implements $GatewayCopyWith<$Res> {
  factory _$$_GatewayCopyWith(
          _$_Gateway value, $Res Function(_$_Gateway) then) =
      __$$_GatewayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String internalipaddress, String macaddress, String name});
}

/// @nodoc
class __$$_GatewayCopyWithImpl<$Res>
    extends _$GatewayCopyWithImpl<$Res, _$_Gateway>
    implements _$$_GatewayCopyWith<$Res> {
  __$$_GatewayCopyWithImpl(_$_Gateway _value, $Res Function(_$_Gateway) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? internalipaddress = null,
    Object? macaddress = null,
    Object? name = null,
  }) {
    return _then(_$_Gateway(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      internalipaddress: null == internalipaddress
          ? _value.internalipaddress
          : internalipaddress // ignore: cast_nullable_to_non_nullable
              as String,
      macaddress: null == macaddress
          ? _value.macaddress
          : macaddress // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Gateway implements _Gateway {
  _$_Gateway(
      {required this.id,
      required this.internalipaddress,
      required this.macaddress,
      required this.name});

  factory _$_Gateway.fromJson(Map<String, dynamic> json) =>
      _$$_GatewayFromJson(json);

  @override
  final String id;
  @override
  final String internalipaddress;
  @override
  final String macaddress;
  @override
  final String name;

  @override
  String toString() {
    return 'Gateway(id: $id, internalipaddress: $internalipaddress, macaddress: $macaddress, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Gateway &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.internalipaddress, internalipaddress) ||
                other.internalipaddress == internalipaddress) &&
            (identical(other.macaddress, macaddress) ||
                other.macaddress == macaddress) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, internalipaddress, macaddress, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GatewayCopyWith<_$_Gateway> get copyWith =>
      __$$_GatewayCopyWithImpl<_$_Gateway>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GatewayToJson(
      this,
    );
  }
}

abstract class _Gateway implements Gateway {
  factory _Gateway(
      {required final String id,
      required final String internalipaddress,
      required final String macaddress,
      required final String name}) = _$_Gateway;

  factory _Gateway.fromJson(Map<String, dynamic> json) = _$_Gateway.fromJson;

  @override
  String get id;
  @override
  String get internalipaddress;
  @override
  String get macaddress;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_GatewayCopyWith<_$_Gateway> get copyWith =>
      throw _privateConstructorUsedError;
}
