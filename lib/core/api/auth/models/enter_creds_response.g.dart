// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enter_creds_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EnterCredsResponse> _$enterCredsResponseSerializer =
    new _$EnterCredsResponseSerializer();
Serializer<TokenResponse> _$tokenResponseSerializer =
    new _$TokenResponseSerializer();

class _$EnterCredsResponseSerializer
    implements StructuredSerializer<EnterCredsResponse> {
  @override
  final Iterable<Type> types = const [EnterCredsResponse, _$EnterCredsResponse];
  @override
  final String wireName = 'EnterCredsResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, EnterCredsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.tokenResponse,
          specifiedType: const FullType(TokenResponse)),
    ];

    return result;
  }

  @override
  EnterCredsResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnterCredsResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'token':
          result.tokenResponse.replace(serializers.deserialize(value,
              specifiedType: const FullType(TokenResponse))! as TokenResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$TokenResponseSerializer implements StructuredSerializer<TokenResponse> {
  @override
  final Iterable<Type> types = const [TokenResponse, _$TokenResponse];
  @override
  final String wireName = 'TokenResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, TokenResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'key',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TokenResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TokenResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'key':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EnterCredsResponse extends EnterCredsResponse {
  @override
  final TokenResponse tokenResponse;

  factory _$EnterCredsResponse(
          [void Function(EnterCredsResponseBuilder)? updates]) =>
      (new EnterCredsResponseBuilder()..update(updates))._build();

  _$EnterCredsResponse._({required this.tokenResponse}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenResponse, r'EnterCredsResponse', 'tokenResponse');
  }

  @override
  EnterCredsResponse rebuild(
          void Function(EnterCredsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnterCredsResponseBuilder toBuilder() =>
      new EnterCredsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnterCredsResponse && tokenResponse == other.tokenResponse;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tokenResponse.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnterCredsResponse')
          ..add('tokenResponse', tokenResponse))
        .toString();
  }
}

class EnterCredsResponseBuilder
    implements Builder<EnterCredsResponse, EnterCredsResponseBuilder> {
  _$EnterCredsResponse? _$v;

  TokenResponseBuilder? _tokenResponse;
  TokenResponseBuilder get tokenResponse =>
      _$this._tokenResponse ??= new TokenResponseBuilder();
  set tokenResponse(TokenResponseBuilder? tokenResponse) =>
      _$this._tokenResponse = tokenResponse;

  EnterCredsResponseBuilder() {
    EnterCredsResponse._defaults(this);
  }

  EnterCredsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenResponse = $v.tokenResponse.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnterCredsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnterCredsResponse;
  }

  @override
  void update(void Function(EnterCredsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnterCredsResponse build() => _build();

  _$EnterCredsResponse _build() {
    _$EnterCredsResponse _$result;
    try {
      _$result = _$v ??
          new _$EnterCredsResponse._(tokenResponse: tokenResponse.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tokenResponse';
        tokenResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EnterCredsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TokenResponse extends TokenResponse {
  @override
  final String token;

  factory _$TokenResponse([void Function(TokenResponseBuilder)? updates]) =>
      (new TokenResponseBuilder()..update(updates))._build();

  _$TokenResponse._({required this.token}) : super._() {
    BuiltValueNullFieldError.checkNotNull(token, r'TokenResponse', 'token');
  }

  @override
  TokenResponse rebuild(void Function(TokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenResponseBuilder toBuilder() => new TokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenResponse && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenResponse')..add('token', token))
        .toString();
  }
}

class TokenResponseBuilder
    implements Builder<TokenResponse, TokenResponseBuilder> {
  _$TokenResponse? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  TokenResponseBuilder();

  TokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenResponse;
  }

  @override
  void update(void Function(TokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenResponse build() => _build();

  _$TokenResponse _build() {
    final _$result = _$v ??
        new _$TokenResponse._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'TokenResponse', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
