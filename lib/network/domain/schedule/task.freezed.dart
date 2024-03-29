// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  String? get name => throw _privateConstructorUsedError;
  String? get groupId => throw _privateConstructorUsedError;
  String? get taskId => throw _privateConstructorUsedError;
  int? get progress => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  bool? get start => throw _privateConstructorUsedError;
  bool? get onOff => throw _privateConstructorUsedError;
  int? get delay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {String? name,
      String? groupId,
      String? taskId,
      int? progress,
      int? total,
      bool? start,
      bool? onOff,
      int? delay});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? groupId = freezed,
    Object? taskId = freezed,
    Object? progress = freezed,
    Object? total = freezed,
    Object? start = freezed,
    Object? onOff = freezed,
    Object? delay = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as bool?,
      onOff: freezed == onOff
          ? _value.onOff
          : onOff // ignore: cast_nullable_to_non_nullable
              as bool?,
      delay: freezed == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_TaskCopyWith(_$_Task value, $Res Function(_$_Task) then) =
      __$$_TaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? groupId,
      String? taskId,
      int? progress,
      int? total,
      bool? start,
      bool? onOff,
      int? delay});
}

/// @nodoc
class __$$_TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res, _$_Task>
    implements _$$_TaskCopyWith<$Res> {
  __$$_TaskCopyWithImpl(_$_Task _value, $Res Function(_$_Task) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? groupId = freezed,
    Object? taskId = freezed,
    Object? progress = freezed,
    Object? total = freezed,
    Object? start = freezed,
    Object? onOff = freezed,
    Object? delay = freezed,
  }) {
    return _then(_$_Task(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as bool?,
      onOff: freezed == onOff
          ? _value.onOff
          : onOff // ignore: cast_nullable_to_non_nullable
              as bool?,
      delay: freezed == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Task implements _Task {
  const _$_Task(
      {this.name,
      this.groupId,
      this.taskId,
      this.progress,
      this.total,
      this.start,
      this.onOff,
      this.delay});

  factory _$_Task.fromJson(Map<String, dynamic> json) => _$$_TaskFromJson(json);

  @override
  final String? name;
  @override
  final String? groupId;
  @override
  final String? taskId;
  @override
  final int? progress;
  @override
  final int? total;
  @override
  final bool? start;
  @override
  final bool? onOff;
  @override
  final int? delay;

  @override
  String toString() {
    return 'Task(name: $name, groupId: $groupId, taskId: $taskId, progress: $progress, total: $total, start: $start, onOff: $onOff, delay: $delay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Task &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.onOff, onOff) || other.onOff == onOff) &&
            (identical(other.delay, delay) || other.delay == delay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, groupId, taskId, progress, total, start, onOff, delay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskCopyWith<_$_Task> get copyWith =>
      __$$_TaskCopyWithImpl<_$_Task>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {final String? name,
      final String? groupId,
      final String? taskId,
      final int? progress,
      final int? total,
      final bool? start,
      final bool? onOff,
      final int? delay}) = _$_Task;

  factory _Task.fromJson(Map<String, dynamic> json) = _$_Task.fromJson;

  @override
  String? get name;
  @override
  String? get groupId;
  @override
  String? get taskId;
  @override
  int? get progress;
  @override
  int? get total;
  @override
  bool? get start;
  @override
  bool? get onOff;
  @override
  int? get delay;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCopyWith<_$_Task> get copyWith => throw _privateConstructorUsedError;
}
