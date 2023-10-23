// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finish_phone_verification_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FinishPhoneVerificationResponse>
    _$finishPhoneVerificationResponseSerializer =
    new _$FinishPhoneVerificationResponseSerializer();

class _$FinishPhoneVerificationResponseSerializer
    implements StructuredSerializer<FinishPhoneVerificationResponse> {
  @override
  final Iterable<Type> types = const [
    FinishPhoneVerificationResponse,
    _$FinishPhoneVerificationResponse
  ];
  @override
  final String wireName = 'FinishPhoneVerificationResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FinishPhoneVerificationResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  FinishPhoneVerificationResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new FinishPhoneVerificationResponseBuilder().build();
  }
}

class _$FinishPhoneVerificationResponse
    extends FinishPhoneVerificationResponse {
  factory _$FinishPhoneVerificationResponse(
          [void Function(FinishPhoneVerificationResponseBuilder)? updates]) =>
      (new FinishPhoneVerificationResponseBuilder()..update(updates))._build();

  _$FinishPhoneVerificationResponse._() : super._();

  @override
  FinishPhoneVerificationResponse rebuild(
          void Function(FinishPhoneVerificationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FinishPhoneVerificationResponseBuilder toBuilder() =>
      new FinishPhoneVerificationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FinishPhoneVerificationResponse;
  }

  @override
  int get hashCode {
    return 867724264;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'FinishPhoneVerificationResponse')
        .toString();
  }
}

class FinishPhoneVerificationResponseBuilder
    implements
        Builder<FinishPhoneVerificationResponse,
            FinishPhoneVerificationResponseBuilder> {
  _$FinishPhoneVerificationResponse? _$v;

  FinishPhoneVerificationResponseBuilder() {
    FinishPhoneVerificationResponse._defaults(this);
  }

  @override
  void replace(FinishPhoneVerificationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FinishPhoneVerificationResponse;
  }

  @override
  void update(void Function(FinishPhoneVerificationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FinishPhoneVerificationResponse build() => _build();

  _$FinishPhoneVerificationResponse _build() {
    final _$result = _$v ?? new _$FinishPhoneVerificationResponse._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
