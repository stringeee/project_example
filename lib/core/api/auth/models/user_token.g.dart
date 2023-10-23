// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserToken> _$userTokenSerializer = new _$UserTokenSerializer();

class _$UserTokenSerializer implements StructuredSerializer<UserToken> {
  @override
  final Iterable<Type> types = const [UserToken, _$UserToken];
  @override
  final String wireName = 'UserToken';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserToken object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UserToken deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserTokenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserToken extends UserToken {
  @override
  final String token;

  factory _$UserToken([void Function(UserTokenBuilder)? updates]) =>
      (new UserTokenBuilder()..update(updates))._build();

  _$UserToken._({required this.token}) : super._() {
    BuiltValueNullFieldError.checkNotNull(token, r'UserToken', 'token');
  }

  @override
  UserToken rebuild(void Function(UserTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserTokenBuilder toBuilder() => new UserTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserToken && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserToken')..add('token', token))
        .toString();
  }
}

class UserTokenBuilder implements Builder<UserToken, UserTokenBuilder> {
  _$UserToken? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  UserTokenBuilder() {
    UserToken._defaults(this);
  }

  UserTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserToken;
  }

  @override
  void update(void Function(UserTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserToken build() => _build();

  _$UserToken _build() {
    final _$result = _$v ??
        new _$UserToken._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'UserToken', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
