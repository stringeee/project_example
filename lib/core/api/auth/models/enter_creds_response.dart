import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'enter_creds_response.g.dart';

abstract class EnterCredsResponse
    implements Built<EnterCredsResponse, EnterCredsResponseBuilder> {
  EnterCredsResponse._();

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EnterCredsResponseBuilder b) => b;

  @BuiltValueField(wireName: r'token')
  TokenResponse get tokenResponse;

  factory EnterCredsResponse(
      // ignore: use_function_type_syntax_for_parameters
      [void updates(EnterCredsResponseBuilder b)]) = _$EnterCredsResponse;

  static Serializer<EnterCredsResponse> get serializer =>
      _$enterCredsResponseSerializer;
}

abstract class TokenResponse
    implements Built<TokenResponse, TokenResponseBuilder> {
  TokenResponse._();

  @BuiltValueField(wireName: r'key')
  String get token;
  // ignore: use_function_type_syntax_for_parameters
  factory TokenResponse([updates(TokenResponseBuilder b)]) = _$TokenResponse;
  static Serializer<TokenResponse> get serializer => _$tokenResponseSerializer;
}
