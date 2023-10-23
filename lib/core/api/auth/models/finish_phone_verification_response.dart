import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'finish_phone_verification_response.g.dart';

abstract class FinishPhoneVerificationResponse
    implements
        Built<FinishPhoneVerificationResponse,
            FinishPhoneVerificationResponseBuilder> {
  FinishPhoneVerificationResponse._();

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FinishPhoneVerificationResponseBuilder b) => b;

  factory FinishPhoneVerificationResponse(
          // ignore: use_function_type_syntax_for_parameters
          [void updates(FinishPhoneVerificationResponseBuilder b)]) =
      _$FinishPhoneVerificationResponse;

  @BuiltValueSerializer()
  static Serializer<FinishPhoneVerificationResponse> get serializer =>
      _$finishPhoneVerificationResponseSerializer;
}
