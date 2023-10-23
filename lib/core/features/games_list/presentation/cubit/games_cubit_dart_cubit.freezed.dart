// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'games_cubit_dart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GamesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GameModel> games) gamesLoaded,
    required TResult Function(String failure) loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GameModel> games)? gamesLoaded,
    TResult Function(String failure)? loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GameModel> games)? gamesLoaded,
    TResult Function(String failure)? loadingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GamesLoaded value) gamesLoaded,
    required TResult Function(_LoadingFailed value) loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GamesLoaded value)? gamesLoaded,
    TResult Function(_LoadingFailed value)? loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GamesLoaded value)? gamesLoaded,
    TResult Function(_LoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesStateCopyWith<$Res> {
  factory $GamesStateCopyWith(
          GamesState value, $Res Function(GamesState) then) =
      _$GamesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GamesStateCopyWithImpl<$Res> implements $GamesStateCopyWith<$Res> {
  _$GamesStateCopyWithImpl(this._value, this._then);

  final GamesState _value;
  // ignore: unused_field
  final $Res Function(GamesState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$GamesStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GamesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GameModel> games) gamesLoaded,
    required TResult Function(String failure) loadingFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GameModel> games)? gamesLoaded,
    TResult Function(String failure)? loadingFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GameModel> games)? gamesLoaded,
    TResult Function(String failure)? loadingFailed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GamesLoaded value) gamesLoaded,
    required TResult Function(_LoadingFailed value) loadingFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GamesLoaded value)? gamesLoaded,
    TResult Function(_LoadingFailed value)? loadingFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GamesLoaded value)? gamesLoaded,
    TResult Function(_LoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GamesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$GamesStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'GamesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GameModel> games) gamesLoaded,
    required TResult Function(String failure) loadingFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GameModel> games)? gamesLoaded,
    TResult Function(String failure)? loadingFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GameModel> games)? gamesLoaded,
    TResult Function(String failure)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GamesLoaded value) gamesLoaded,
    required TResult Function(_LoadingFailed value) loadingFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GamesLoaded value)? gamesLoaded,
    TResult Function(_LoadingFailed value)? loadingFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GamesLoaded value)? gamesLoaded,
    TResult Function(_LoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GamesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_GamesLoadedCopyWith<$Res> {
  factory _$$_GamesLoadedCopyWith(
          _$_GamesLoaded value, $Res Function(_$_GamesLoaded) then) =
      __$$_GamesLoadedCopyWithImpl<$Res>;
  $Res call({List<GameModel> games});
}

/// @nodoc
class __$$_GamesLoadedCopyWithImpl<$Res> extends _$GamesStateCopyWithImpl<$Res>
    implements _$$_GamesLoadedCopyWith<$Res> {
  __$$_GamesLoadedCopyWithImpl(
      _$_GamesLoaded _value, $Res Function(_$_GamesLoaded) _then)
      : super(_value, (v) => _then(v as _$_GamesLoaded));

  @override
  _$_GamesLoaded get _value => super._value as _$_GamesLoaded;

  @override
  $Res call({
    Object? games = freezed,
  }) {
    return _then(_$_GamesLoaded(
      games == freezed
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<GameModel>,
    ));
  }
}

/// @nodoc

class _$_GamesLoaded implements _GamesLoaded {
  const _$_GamesLoaded(final List<GameModel> games) : _games = games;

  final List<GameModel> _games;
  @override
  List<GameModel> get games {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_games);
  }

  @override
  String toString() {
    return 'GamesState.gamesLoaded(games: $games)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GamesLoaded &&
            const DeepCollectionEquality().equals(other._games, _games));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_games));

  @JsonKey(ignore: true)
  @override
  _$$_GamesLoadedCopyWith<_$_GamesLoaded> get copyWith =>
      __$$_GamesLoadedCopyWithImpl<_$_GamesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GameModel> games) gamesLoaded,
    required TResult Function(String failure) loadingFailed,
  }) {
    return gamesLoaded(games);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GameModel> games)? gamesLoaded,
    TResult Function(String failure)? loadingFailed,
  }) {
    return gamesLoaded?.call(games);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GameModel> games)? gamesLoaded,
    TResult Function(String failure)? loadingFailed,
    required TResult orElse(),
  }) {
    if (gamesLoaded != null) {
      return gamesLoaded(games);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GamesLoaded value) gamesLoaded,
    required TResult Function(_LoadingFailed value) loadingFailed,
  }) {
    return gamesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GamesLoaded value)? gamesLoaded,
    TResult Function(_LoadingFailed value)? loadingFailed,
  }) {
    return gamesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GamesLoaded value)? gamesLoaded,
    TResult Function(_LoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (gamesLoaded != null) {
      return gamesLoaded(this);
    }
    return orElse();
  }
}

abstract class _GamesLoaded implements GamesState {
  const factory _GamesLoaded(final List<GameModel> games) = _$_GamesLoaded;

  List<GameModel> get games => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GamesLoadedCopyWith<_$_GamesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingFailedCopyWith<$Res> {
  factory _$$_LoadingFailedCopyWith(
          _$_LoadingFailed value, $Res Function(_$_LoadingFailed) then) =
      __$$_LoadingFailedCopyWithImpl<$Res>;
  $Res call({String failure});
}

/// @nodoc
class __$$_LoadingFailedCopyWithImpl<$Res>
    extends _$GamesStateCopyWithImpl<$Res>
    implements _$$_LoadingFailedCopyWith<$Res> {
  __$$_LoadingFailedCopyWithImpl(
      _$_LoadingFailed _value, $Res Function(_$_LoadingFailed) _then)
      : super(_value, (v) => _then(v as _$_LoadingFailed));

  @override
  _$_LoadingFailed get _value => super._value as _$_LoadingFailed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_LoadingFailed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadingFailed implements _LoadingFailed {
  const _$_LoadingFailed(this.failure);

  @override
  final String failure;

  @override
  String toString() {
    return 'GamesState.loadingFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingFailed &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_LoadingFailedCopyWith<_$_LoadingFailed> get copyWith =>
      __$$_LoadingFailedCopyWithImpl<_$_LoadingFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GameModel> games) gamesLoaded,
    required TResult Function(String failure) loadingFailed,
  }) {
    return loadingFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GameModel> games)? gamesLoaded,
    TResult Function(String failure)? loadingFailed,
  }) {
    return loadingFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GameModel> games)? gamesLoaded,
    TResult Function(String failure)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loadingFailed != null) {
      return loadingFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GamesLoaded value) gamesLoaded,
    required TResult Function(_LoadingFailed value) loadingFailed,
  }) {
    return loadingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GamesLoaded value)? gamesLoaded,
    TResult Function(_LoadingFailed value)? loadingFailed,
  }) {
    return loadingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GamesLoaded value)? gamesLoaded,
    TResult Function(_LoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loadingFailed != null) {
      return loadingFailed(this);
    }
    return orElse();
  }
}

abstract class _LoadingFailed implements GamesState {
  const factory _LoadingFailed(final String failure) = _$_LoadingFailed;

  String get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadingFailedCopyWith<_$_LoadingFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
