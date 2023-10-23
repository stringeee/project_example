import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'phone_verification_response.g.dart';

abstract class StartPhoneVerificationResponse
    implements
        Built<StartPhoneVerificationResponse,
            StartPhoneVerificationResponseBuilder> {
  StartPhoneVerificationResponse._();

  @BuiltValueField(wireName: r'data')
  ResponseData get responseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StartPhoneVerificationResponseBuilder b) => b;

  factory StartPhoneVerificationResponse(
          // ignore: use_function_type_syntax_for_parameters
          [void updates(StartPhoneVerificationResponseBuilder b)]) =
      _$StartPhoneVerificationResponse;

  @BuiltValueSerializer()
  static Serializer<StartPhoneVerificationResponse> get serializer =>
      _$startPhoneVerificationResponseSerializer;
}

abstract class ResponseData
    implements Built<ResponseData, ResponseDataBuilder> {
  ResponseData._();

  @BuiltValueField(wireName: r'phone')
  String get phone;

  @BuiltValueField(wireName: r'code')
  String get code;
  // ignore: use_function_type_syntax_for_parameters
  factory ResponseData([updates(ResponseDataBuilder b)]) = _$ResponseData;
  static Serializer<ResponseData> get serializer => _$responseDataSerializer;
}
