// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_verification_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StartPhoneVerificationResponse>
    _$startPhoneVerificationResponseSerializer =
    new _$StartPhoneVerificationResponseSerializer();
Serializer<ResponseData> _$responseDataSerializer =
    new _$ResponseDataSerializer();

class _$StartPhoneVerificationResponseSerializer
    implements StructuredSerializer<StartPhoneVerificationResponse> {
  @override
  final Iterable<Type> types = const [
    StartPhoneVerificationResponse,
    _$StartPhoneVerificationResponse
  ];
  @override
  final String wireName = 'StartPhoneVerificationResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, StartPhoneVerificationResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.responseData,
          specifiedType: const FullType(ResponseData)),
    ];

    return result;
  }

  @override
  StartPhoneVerificationResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StartPhoneVerificationResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.responseData.replace(serializers.deserialize(value,
              specifiedType: const FullType(ResponseData))! as ResponseData);
          break;
      }
    }

    return result.build();
  }
}

class _$ResponseDataSerializer implements StructuredSerializer<ResponseData> {
  @override
  final Iterable<Type> types = const [ResponseData, _$ResponseData];
  @override
  final String wireName = 'ResponseData';

  @override
  Iterable<Object?> serialize(Serializers serializers, ResponseData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ResponseData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResponseDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StartPhoneVerificationResponse extends StartPhoneVerificationResponse {
  @override
  final ResponseData responseData;

  factory _$StartPhoneVerificationResponse(
          [void Function(StartPhoneVerificationResponseBuilder)? updates]) =>
      (new StartPhoneVerificationResponseBuilder()..update(updates))._build();

  _$StartPhoneVerificationResponse._({required this.responseData}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        responseData, r'StartPhoneVerificationResponse', 'responseData');
  }

  @override
  StartPhoneVerificationResponse rebuild(
          void Function(StartPhoneVerificationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartPhoneVerificationResponseBuilder toBuilder() =>
      new StartPhoneVerificationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartPhoneVerificationResponse &&
        responseData == other.responseData;
  }

  @override
  int get hashCode {
    return $jf($jc(0, responseData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StartPhoneVerificationResponse')
          ..add('responseData', responseData))
        .toString();
  }
}

class StartPhoneVerificationResponseBuilder
    implements
        Builder<StartPhoneVerificationResponse,
            StartPhoneVerificationResponseBuilder> {
  _$StartPhoneVerificationResponse? _$v;

  ResponseDataBuilder? _responseData;
  ResponseDataBuilder get responseData =>
      _$this._responseData ??= new ResponseDataBuilder();
  set responseData(ResponseDataBuilder? responseData) =>
      _$this._responseData = responseData;

  StartPhoneVerificationResponseBuilder() {
    StartPhoneVerificationResponse._defaults(this);
  }

  StartPhoneVerificationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responseData = $v.responseData.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartPhoneVerificationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartPhoneVerificationResponse;
  }

  @override
  void update(void Function(StartPhoneVerificationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartPhoneVerificationResponse build() => _build();

  _$StartPhoneVerificationResponse _build() {
    _$StartPhoneVerificationResponse _$result;
    try {
      _$result = _$v ??
          new _$StartPhoneVerificationResponse._(
              responseData: responseData.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responseData';
        responseData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StartPhoneVerificationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ResponseData extends ResponseData {
  @override
  final String phone;
  @override
  final String code;

  factory _$ResponseData([void Function(ResponseDataBuilder)? updates]) =>
      (new ResponseDataBuilder()..update(updates))._build();

  _$ResponseData._({required this.phone, required this.code}) : super._() {
    BuiltValueNullFieldError.checkNotNull(phone, r'ResponseData', 'phone');
    BuiltValueNullFieldError.checkNotNull(code, r'ResponseData', 'code');
  }

  @override
  ResponseData rebuild(void Function(ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseDataBuilder toBuilder() => new ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponseData && phone == other.phone && code == other.code;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, phone.hashCode), code.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResponseData')
          ..add('phone', phone)
          ..add('code', code))
        .toString();
  }
}

class ResponseDataBuilder
    implements Builder<ResponseData, ResponseDataBuilder> {
  _$ResponseData? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  ResponseDataBuilder();

  ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResponseData;
  }

  @override
  void update(void Function(ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResponseData build() => _build();

  _$ResponseData _build() {
    final _$result = _$v ??
        new _$ResponseData._(
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, r'ResponseData', 'phone'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'ResponseData', 'code'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
