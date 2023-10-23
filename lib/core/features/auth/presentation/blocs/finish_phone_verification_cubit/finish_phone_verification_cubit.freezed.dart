// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'finish_phone_verification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FinishPhoneVerificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() codeSent,
    required TResult Function() phoneVerified,
    required TResult Function(String failureMessage)
        phoneCompleteVerificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? codeSent,
    TResult Function()? phoneVerified,
    TResult Function(String failureMessage)? phoneCompleteVerificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? codeSent,
    TResult Function()? phoneVerified,
    TResult Function(String failureMessage)? phoneCompleteVerificationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_PhoneVerificationFailed value)
        phoneCompleteVerificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_PhoneVerificationFailed value)?
        phoneCompleteVerificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_PhoneVerificationFailed value)?
        phoneCompleteVerificationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishPhoneVerificationStateCopyWith<$Res> {
  factory $FinishPhoneVerificationStateCopyWith(
          FinishPhoneVerificationState value,
          $Res Function(FinishPhoneVerificationState) then) =
      _$FinishPhoneVerificationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FinishPhoneVerificationStateCopyWithImpl<$Res>
    implements $FinishPhoneVerificationStateCopyWith<$Res> {
  _$FinishPhoneVerificationStateCopyWithImpl(this._value, this._then);

  final FinishPhoneVerificationState _value;
  // ignore: unused_field
  final $Res Function(FinishPhoneVerificationState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FinishPhoneVerificationStateCopyWithImpl<$Res>
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
    return 'FinishPhoneVerificationState.initial()';
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
    required TResult Function() codeSent,
    required TResult Function() phoneVerified,
    required TResult Function(String failureMessage)
        phoneCompleteVerificationFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? codeSent,
    TResult Function()? phoneVerified,
    TResult Function(String failureMessage)? phoneCompleteVerificationFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? codeSent,
    TResult Function()? phoneVerified,
    TResult Function(String failureMessage)? phoneCompleteVerificationFailed,
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
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_PhoneVerificationFailed value)
        phoneCompleteVerificationFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_PhoneVerificationFailed value)?
        phoneCompleteVerificationFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_PhoneVerificationFailed value)?
        phoneCompleteVerificationFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FinishPhoneVerificationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_CodeSentCopyWith<$Res> {
  factory _$$_CodeSentCopyWith(
          _$_CodeSent value, $Res Function(_$_CodeSent) then) =
      __$$_CodeSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CodeSentCopyWithImpl<$Res>
    extends _$FinishPhoneVerificationStateCopyWithImpl<$Res>
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
    return 'FinishPhoneVerificationState.codeSent()';
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
    required TResult Function() codeSent,
    required TResult Function() phoneVerified,
    required TResult Function(String failureMessage)
        phoneCompleteVerificationFailed,
  }) {
    return codeSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? codeSent,
    TResult Function()? phoneVerified,
    TResult Function(String failureMessage)? phoneCompleteVerificationFailed,
  }) {
    return codeSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? codeSent,
    TResult Function()? phoneVerified,
    TResult Function(String failureMessage)? phoneCompleteVerificationFailed,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_PhoneVerificationFailed value)
        phoneCompleteVerificationFailed,
  }) {
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_PhoneVerificationFailed value)?
        phoneCompleteVerificationFailed,
  }) {
    return codeSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_PhoneVerificationFailed value)?
        phoneCompleteVerificationFailed,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class _CodeSent implements FinishPhoneVerificationState {
  const factory _CodeSent() = _$_CodeSent;
}

/// @nodoc
abstract class _$$_PhoneVerifiedCopyWith<$Res> {
  factory _$$_PhoneVerifiedCopyWith(
          _$_PhoneVerified value, $Res Function(_$_PhoneVerified) then) =
      __$$_PhoneVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PhoneVerifiedCopyWithImpl<$Res>
    extends _$FinishPhoneVerificationStateCopyWithImpl<$Res>
    implements _$$_PhoneVerifiedCopyWith<$Res> {
  __$$_PhoneVerifiedCopyWithImpl(
      _$_PhoneVerified _value, $Res Function(_$_PhoneVerified) _then)
      : super(_value, (v) => _then(v as _$_PhoneVerified));

  @override
  _$_PhoneVerified get _value => super._value as _$_PhoneVerified;
}

/// @nodoc

class _$_PhoneVerified implements _PhoneVerified {
  const _$_PhoneVerified();

  @override
  String toString() {
    return 'FinishPhoneVerificationState.phoneVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PhoneVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() codeSent,
    required TResult Function() phoneVerified,
    required TResult Function(String failureMessage)
        phoneCompleteVerificationFailed,
  }) {
    return phoneVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? codeSent,
    TResult Function()? phoneVerified,
    TResult Function(String failureMessage)? phoneCompleteVerificationFailed,
  }) {
    return phoneVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? codeSent,
    TResult Function()? phoneVerified,
    TResult Function(String failureMessage)? phoneCompleteVerificationFailed,
    required TResult orElse(),
  }) {
    if (phoneVerified != null) {
      return phoneVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_PhoneVerificationFailed value)
        phoneCompleteVerificationFailed,
  }) {
    return phoneVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_PhoneVerificationFailed value)?
        phoneCompleteVerificationFailed,
  }) {
    return phoneVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_PhoneVerificationFailed value)?
        phoneCompleteVerificationFailed,
    required TResult orElse(),
  }) {
    if (phoneVerified != null) {
      return phoneVerified(this);
    }
    return orElse();
  }
}

abstract class _PhoneVerified implements FinishPhoneVerificationState {
  const factory _PhoneVerified() = _$_PhoneVerified;
}

/// @nodoc
abstract class _$$_PhoneVerificationFailedCopyWith<$Res> {
  factory _$$_PhoneVerificationFailedCopyWith(_$_PhoneVerificationFailed value,
          $Res Function(_$_PhoneVerificationFailed) then) =
      __$$_PhoneVerificationFailedCopyWithImpl<$Res>;
  $Res call({String failureMessage});
}

/// @nodoc
class __$$_PhoneVerificationFailedCopyWithImpl<$Res>
    extends _$FinishPhoneVerificationStateCopyWithImpl<$Res>
    implements _$$_PhoneVerificationFailedCopyWith<$Res> {
  __$$_PhoneVerificationFailedCopyWithImpl(_$_PhoneVerificationFailed _value,
      $Res Function(_$_PhoneVerificationFailed) _then)
      : super(_value, (v) => _then(v as _$_PhoneVerificationFailed));

  @override
  _$_PhoneVerificationFailed get _value =>
      super._value as _$_PhoneVerificationFailed;

  @override
  $Res call({
    Object? failureMessage = freezed,
  }) {
    return _then(_$_PhoneVerificationFailed(
      failureMessage == freezed
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneVerificationFailed implements _PhoneVerificationFailed {
  const _$_PhoneVerificationFailed(this.failureMessage);

  @override
  final String failureMessage;

  @override
  String toString() {
    return 'FinishPhoneVerificationState.phoneCompleteVerificationFailed(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneVerificationFailed &&
            const DeepCollectionEquality()
                .equals(other.failureMessage, failureMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureMessage));

  @JsonKey(ignore: true)
  @override
  _$$_PhoneVerificationFailedCopyWith<_$_PhoneVerificationFailed>
      get copyWith =>
          __$$_PhoneVerificationFailedCopyWithImpl<_$_PhoneVerificationFailed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() codeSent,
    required TResult Function() phoneVerified,
    required TResult Function(String failureMessage)
        phoneCompleteVerificationFailed,
  }) {
    return phoneCompleteVerificationFailed(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? codeSent,
    TResult Function()? phoneVerified,
    TResult Function(String failureMessage)? phoneCompleteVerificationFailed,
  }) {
    return phoneCompleteVerificationFailed?.call(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? codeSent,
    TResult Function()? phoneVerified,
    TResult Function(String failureMessage)? phoneCompleteVerificationFailed,
    required TResult orElse(),
  }) {
    if (phoneCompleteVerificationFailed != null) {
      return phoneCompleteVerificationFailed(failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_PhoneVerificationFailed value)
        phoneCompleteVerificationFailed,
  }) {
    return phoneCompleteVerificationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_PhoneVerificationFailed value)?
        phoneCompleteVerificationFailed,
  }) {
    return phoneCompleteVerificationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_PhoneVerificationFailed value)?
        phoneCompleteVerificationFailed,
    required TResult orElse(),
  }) {
    if (phoneCompleteVerificationFailed != null) {
      return phoneCompleteVerificationFailed(this);
    }
    return orElse();
  }
}

abstract class _PhoneVerificationFailed
    implements FinishPhoneVerificationState {
  const factory _PhoneVerificationFailed(final String failureMessage) =
      _$_PhoneVerificationFailed;

  String get failureMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PhoneVerificationFailedCopyWith<_$_PhoneVerificationFailed>
      get copyWith => throw _privateConstructorUsedError;
}
