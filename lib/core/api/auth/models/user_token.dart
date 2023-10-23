import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_token.g.dart';

abstract class UserToken implements Built<UserToken, UserTokenBuilder> {
  UserToken._();

  @BuiltValueField(wireName: r'token')
  String get token;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserTokenBuilder b) => b;

  // ignore: use_function_type_syntax_for_parameters
  factory UserToken([void updates(UserTokenBuilder b)]) = _$UserToken;

  @BuiltValueSerializer()
  static Serializer<UserToken> get serializer => _$userTokenSerializer;
}
