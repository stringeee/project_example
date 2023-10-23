// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_timer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthTimerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentTime) timerIsRunning,
    required TResult Function() timerStoped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentTime)? timerIsRunning,
    TResult Function()? timerStoped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentTime)? timerIsRunning,
    TResult Function()? timerStoped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(TimerIsRunning value) timerIsRunning,
    required TResult Function(TimerStoped value) timerStoped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TimerIsRunning value)? timerIsRunning,
    TResult Function(TimerStoped value)? timerStoped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TimerIsRunning value)? timerIsRunning,
    TResult Function(TimerStoped value)? timerStoped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTimerStateCopyWith<$Res> {
  factory $AuthTimerStateCopyWith(
          AuthTimerState value, $Res Function(AuthTimerState) then) =
      _$AuthTimerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthTimerStateCopyWithImpl<$Res>
    implements $AuthTimerStateCopyWith<$Res> {
  _$AuthTimerStateCopyWithImpl(this._value, this._then);

  final AuthTimerState _value;
  // ignore: unused_field
  final $Res Function(AuthTimerState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$AuthTimerStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthTimerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentTime) timerIsRunning,
    required TResult Function() timerStoped,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentTime)? timerIsRunning,
    TResult Function()? timerStoped,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentTime)? timerIsRunning,
    TResult Function()? timerStoped,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(TimerIsRunning value) timerIsRunning,
    required TResult Function(TimerStoped value) timerStoped,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TimerIsRunning value)? timerIsRunning,
    TResult Function(TimerStoped value)? timerStoped,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TimerIsRunning value)? timerIsRunning,
    TResult Function(TimerStoped value)? timerStoped,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthTimerState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$TimerIsRunningCopyWith<$Res> {
  factory _$$TimerIsRunningCopyWith(
          _$TimerIsRunning value, $Res Function(_$TimerIsRunning) then) =
      __$$TimerIsRunningCopyWithImpl<$Res>;
  $Res call({int currentTime});
}

/// @nodoc
class __$$TimerIsRunningCopyWithImpl<$Res>
    extends _$AuthTimerStateCopyWithImpl<$Res>
    implements _$$TimerIsRunningCopyWith<$Res> {
  __$$TimerIsRunningCopyWithImpl(
      _$TimerIsRunning _value, $Res Function(_$TimerIsRunning) _then)
      : super(_value, (v) => _then(v as _$TimerIsRunning));

  @override
  _$TimerIsRunning get _value => super._value as _$TimerIsRunning;

  @override
  $Res call({
    Object? currentTime = freezed,
  }) {
    return _then(_$TimerIsRunning(
      currentTime: currentTime == freezed
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerIsRunning implements TimerIsRunning {
  const _$TimerIsRunning({required this.currentTime});

  @override
  final int currentTime;

  @override
  String toString() {
    return 'AuthTimerState.timerIsRunning(currentTime: $currentTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerIsRunning &&
            const DeepCollectionEquality()
                .equals(other.currentTime, currentTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentTime));

  @JsonKey(ignore: true)
  @override
  _$$TimerIsRunningCopyWith<_$TimerIsRunning> get copyWith =>
      __$$TimerIsRunningCopyWithImpl<_$TimerIsRunning>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentTime) timerIsRunning,
    required TResult Function() timerStoped,
  }) {
    return timerIsRunning(currentTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentTime)? timerIsRunning,
    TResult Function()? timerStoped,
  }) {
    return timerIsRunning?.call(currentTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentTime)? timerIsRunning,
    TResult Function()? timerStoped,
    required TResult orElse(),
  }) {
    if (timerIsRunning != null) {
      return timerIsRunning(currentTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(TimerIsRunning value) timerIsRunning,
    required TResult Function(TimerStoped value) timerStoped,
  }) {
    return timerIsRunning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TimerIsRunning value)? timerIsRunning,
    TResult Function(TimerStoped value)? timerStoped,
  }) {
    return timerIsRunning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TimerIsRunning value)? timerIsRunning,
    TResult Function(TimerStoped value)? timerStoped,
    required TResult orElse(),
  }) {
    if (timerIsRunning != null) {
      return timerIsRunning(this);
    }
    return orElse();
  }
}

abstract class TimerIsRunning implements AuthTimerState {
  const factory TimerIsRunning({required final int currentTime}) =
      _$TimerIsRunning;

  int get currentTime => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TimerIsRunningCopyWith<_$TimerIsRunning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerStopedCopyWith<$Res> {
  factory _$$TimerStopedCopyWith(
          _$TimerStoped value, $Res Function(_$TimerStoped) then) =
      __$$TimerStopedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerStopedCopyWithImpl<$Res>
    extends _$AuthTimerStateCopyWithImpl<$Res>
    implements _$$TimerStopedCopyWith<$Res> {
  __$$TimerStopedCopyWithImpl(
      _$TimerStoped _value, $Res Function(_$TimerStoped) _then)
      : super(_value, (v) => _then(v as _$TimerStoped));

  @override
  _$TimerStoped get _value => super._value as _$TimerStoped;
}

/// @nodoc

class _$TimerStoped implements TimerStoped {
  const _$TimerStoped();

  @override
  String toString() {
    return 'AuthTimerState.timerStoped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerStoped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentTime) timerIsRunning,
    required TResult Function() timerStoped,
  }) {
    return timerStoped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentTime)? timerIsRunning,
    TResult Function()? timerStoped,
  }) {
    return timerStoped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentTime)? timerIsRunning,
    TResult Function()? timerStoped,
    required TResult orElse(),
  }) {
    if (timerStoped != null) {
      return timerStoped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(TimerIsRunning value) timerIsRunning,
    required TResult Function(TimerStoped value) timerStoped,
  }) {
    return timerStoped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TimerIsRunning value)? timerIsRunning,
    TResult Function(TimerStoped value)? timerStoped,
  }) {
    return timerStoped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TimerIsRunning value)? timerIsRunning,
    TResult Function(TimerStoped value)? timerStoped,
    required TResult orElse(),
  }) {
    if (timerStoped != null) {
      return timerStoped(this);
    }
    return orElse();
  }
}

abstract class TimerStoped implements AuthTimerState {
  const factory TimerStoped() = _$TimerStoped;
}
