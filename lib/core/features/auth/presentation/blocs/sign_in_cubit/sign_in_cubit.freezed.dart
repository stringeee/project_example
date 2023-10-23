// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() credsSent,
    required TResult Function() credsVerified,
    required TResult Function(String failureMessage) credsVerificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? credsSent,
    TResult Function()? credsVerified,
    TResult Function(String failureMessage)? credsVerificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? credsSent,
    TResult Function()? credsVerified,
    TResult Function(String failureMessage)? credsVerificationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CodeSent value) credsSent,
    required TResult Function(_CredsVerified value) credsVerified,
    required TResult Function(_CredsVerificationFailed value)
        credsVerificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? credsSent,
    TResult Function(_CredsVerified value)? credsVerified,
    TResult Function(_CredsVerificationFailed value)? credsVerificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? credsSent,
    TResult Function(_CredsVerified value)? credsVerified,
    TResult Function(_CredsVerificationFailed value)? credsVerificationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
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
    return 'SignInState.initial()';
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
    required TResult Function() credsSent,
    required TResult Function() credsVerified,
    required TResult Function(String failureMessage) credsVerificationFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? credsSent,
    TResult Function()? credsVerified,
    TResult Function(String failureMessage)? credsVerificationFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? credsSent,
    TResult Function()? credsVerified,
    TResult Function(String failureMessage)? credsVerificationFailed,
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
    required TResult Function(_CodeSent value) credsSent,
    required TResult Function(_CredsVerified value) credsVerified,
    required TResult Function(_CredsVerificationFailed value)
        credsVerificationFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? credsSent,
    TResult Function(_CredsVerified value)? credsVerified,
    TResult Function(_CredsVerificationFailed value)? credsVerificationFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? credsSent,
    TResult Function(_CredsVerified value)? credsVerified,
    TResult Function(_CredsVerificationFailed value)? credsVerificationFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignInState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_CodeSentCopyWith<$Res> {
  factory _$$_CodeSentCopyWith(
          _$_CodeSent value, $Res Function(_$_CodeSent) then) =
      __$$_CodeSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CodeSentCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$$_CodeSentCopyWith<$Res> {
  __$$_CodeSentCopyWithImpl(
      _$_CodeSent _value, $Res Function(_$_CodeSent) _then)
      : super(_value, (v) => _then(v as _$_CodeSent));

  @override
  _$_CodeSent get _value => super._value as _$_CodeSent;
}

/// @nodoc

class _$_CodeSent implements _CodeSent {
  const _$_CodeSent();

  @override
  String toString() {
    return 'SignInState.credsSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CodeSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() credsSent,
    required TResult Function() credsVerified,
    required TResult Function(String failureMessage) credsVerificationFailed,
  }) {
    return credsSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? credsSent,
    TResult Function()? credsVerified,
    TResult Function(String failureMessage)? credsVerificationFailed,
  }) {
    return credsSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? credsSent,
    TResult Function()? credsVerified,
    TResult Function(String failureMessage)? credsVerificationFailed,
    required TResult orElse(),
  }) {
    if (credsSent != null) {
      return credsSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CodeSent value) credsSent,
    required TResult Function(_CredsVerified value) credsVerified,
    required TResult Function(_CredsVerificationFailed value)
        credsVerificationFailed,
  }) {
    return credsSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? credsSent,
    TResult Function(_CredsVerified value)? credsVerified,
    TResult Function(_CredsVerificationFailed value)? credsVerificationFailed,
  }) {
    return credsSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? credsSent,
    TResult Function(_CredsVerified value)? credsVerified,
    TResult Function(_CredsVerificationFailed value)? credsVerificationFailed,
    required TResult orElse(),
  }) {
    if (credsSent != null) {
      return credsSent(this);
    }
    return orElse();
  }
}

abstract class _CodeSent implements SignInState {
  const factory _CodeSent() = _$_CodeSent;
}

/// @nodoc
abstract class _$$_CredsVerifiedCopyWith<$Res> {
  factory _$$_CredsVerifiedCopyWith(
          _$_CredsVerified value, $Res Function(_$_CredsVerified) then) =
      __$$_CredsVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CredsVerifiedCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements _$$_CredsVerifiedCopyWith<$Res> {
  __$$_CredsVerifiedCopyWithImpl(
      _$_CredsVerified _value, $Res Function(_$_CredsVerified) _then)
      : super(_value, (v) => _then(v as _$_CredsVerified));

  @override
  _$_CredsVerified get _value => super._value as _$_CredsVerified;
}

/// @nodoc

class _$_CredsVerified implements _CredsVerified {
  const _$_CredsVerified();

  @override
  String toString() {
    return 'SignInState.credsVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CredsVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() credsSent,
    required TResult Function() credsVerified,
    required TResult Function(String failureMessage) credsVerificationFailed,
  }) {
    return credsVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? credsSent,
    TResult Function()? credsVerified,
    TResult Function(String failureMessage)? credsVerificationFailed,
  }) {
    return credsVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? credsSent,
    TResult Function()? credsVerified,
    TResult Function(String failureMessage)? credsVerificationFailed,
    required TResult orElse(),
  }) {
    if (credsVerified != null) {
      return credsVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CodeSent value) credsSent,
    required TResult Function(_CredsVerified value) credsVerified,
    required TResult Function(_CredsVerificationFailed value)
        credsVerificationFailed,
  }) {
    return credsVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? credsSent,
    TResult Function(_CredsVerified value)? credsVerified,
    TResult Function(_CredsVerificationFailed value)? credsVerificationFailed,
  }) {
    return credsVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? credsSent,
    TResult Function(_CredsVerified value)? credsVerified,
    TResult Function(_CredsVerificationFailed value)? credsVerificationFailed,
    required TResult orElse(),
  }) {
    if (credsVerified != null) {
      return credsVerified(this);
    }
    return orElse();
  }
}

abstract class _CredsVerified implements SignInState {
  const factory _CredsVerified() = _$_CredsVerified;
}

/// @nodoc
abstract class _$$_CredsVerificationFailedCopyWith<$Res> {
  factory _$$_CredsVerificationFailedCopyWith(_$_CredsVerificationFailed value,
          $Res Function(_$_CredsVerificationFailed) then) =
      __$$_CredsVerificationFailedCopyWithImpl<$Res>;
  $Res call({String failureMessage});
}

/// @nodoc
class __$$_CredsVerificationFailedCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements _$$_CredsVerificationFailedCopyWith<$Res> {
  __$$_CredsVerificationFailedCopyWithImpl(_$_CredsVerificationFailed _value,
      $Res Function(_$_CredsVerificationFailed) _then)
      : super(_value, (v) => _then(v as _$_CredsVerificationFailed));

  @override
  _$_CredsVerificationFailed get _value =>
      super._value as _$_CredsVerificationFailed;

  @override
  $Res call({
    Object? failureMessage = freezed,
  }) {
    return _then(_$_CredsVerificationFailed(
      failureMessage == freezed
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CredsVerificationFailed implements _CredsVerificationFailed {
  const _$_CredsVerificationFailed(this.failureMessage);

  @override
  final String failureMessage;

  @override
  String toString() {
    return 'SignInState.credsVerificationFailed(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CredsVerificationFailed &&
            const DeepCollectionEquality()
                .equals(other.failureMessage, failureMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureMessage));

  @JsonKey(ignore: true)
  @override
  _$$_CredsVerificationFailedCopyWith<_$_CredsVerificationFailed>
      get copyWith =>
          __$$_CredsVerificationFailedCopyWithImpl<_$_CredsVerificationFailed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() credsSent,
    required TResult Function() credsVerified,
    required TResult Function(String failureMessage) credsVerificationFailed,
  }) {
    return credsVerificationFailed(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? credsSent,
    TResult Function()? credsVerified,
    TResult Function(String failureMessage)? credsVerificationFailed,
  }) {
    return credsVerificationFailed?.call(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? credsSent,
    TResult Function()? credsVerified,
    TResult Function(String failureMessage)? credsVerificationFailed,
    required TResult orElse(),
  }) {
    if (credsVerificationFailed != null) {
      return credsVerificationFailed(failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CodeSent value) credsSent,
    required TResult Function(_CredsVerified value) credsVerified,
    required TResult Function(_CredsVerificationFailed value)
        credsVerificationFailed,
  }) {
    return credsVerificationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? credsSent,
    TResult Function(_CredsVerified value)? credsVerified,
    TResult Function(_CredsVerificationFailed value)? credsVerificationFailed,
  }) {
    return credsVerificationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? credsSent,
    TResult Function(_CredsVerified value)? credsVerified,
    TResult Function(_CredsVerificationFailed value)? credsVerificationFailed,
    required TResult orElse(),
  }) {
    if (credsVerificationFailed != null) {
      return credsVerificationFailed(this);
    }
    return orElse();
  }
}

abstract class _CredsVerificationFailed implements SignInState {
  const factory _CredsVerificationFailed(final String failureMessage) =
      _$_CredsVerificationFailed;

  String get failureMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CredsVerificationFailedCopyWith<_$_CredsVerificationFailed>
      get copyWith => throw _privateConstructorUsedError;
}
