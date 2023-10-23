import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import '../serializers.dart';
import '../api_utils.dart';
import 'auth_api.dart';
import 'models/enter_creds_response.dart';
import 'models/finish_phone_verification_response.dart';
import 'models/phone_verification_response.dart';
import 'models/user_token.dart';

class AuthApiImpl implements AuthApi {
  AuthApiImpl({required Dio dio, Serializers? serializers})
      : _dio = dio,
        _serializers = serializers ?? standardSerializers;

  final Dio _dio;
  final Serializers _serializers;

  @override
  Future<Response<FinishPhoneVerificationResponse>> completePhoneVerification({
    required String phone,
    required String code,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const _path = r'/auth/verification/verify/';

    final _options = Options(
        method: r'PUT',
        headers: {
          "Content-Type": "multipart/form-data",
          ...?headers,
        },
        extra: extra,
        validateStatus: validateStatus);

    late FormData _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        r'phone': encodeQueryParameter(
            serializers: _serializers,
            value: phone,
            type: const FullType(String)),
        r'code': encodeQueryParameter(
            serializers: _serializers,
            value: code,
            type: const FullType(String))
      });
    } catch (error, stackTrace) {
      Logger().d(error);
      throw DioError(
          requestOptions: _options.compose(_dio.options, _path), error: error)
        ..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(_path,
        data: _bodyData,
        options: _options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onSendProgress);

    FinishPhoneVerificationResponse _responseData;

    try {
      const _responseType = FullType(FinishPhoneVerificationResponse);
      _responseData = _serializers.deserialize(_response.data!,
          specifiedType: _responseType) as FinishPhoneVerificationResponse;
    } catch (error, stackTrace) {
      Logger().d(error);
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        // type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<FinishPhoneVerificationResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  @override
  Future<Response<UserToken>> signIn({
    required String userName,
    required String password,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const _path = r'/auth/sign-in/';

    final _options = Options(
      method: r'POST',
      headers: {
        "Content-Type": "multipart/form-data",
        ...?headers,
      },
      extra: extra,
      validateStatus: validateStatus,
    );

    late FormData _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        r'username': encodeQueryParameter(
          serializers: _serializers,
          value: userName,
          type: const FullType(String),
        ),
        r'password': encodeQueryParameter(
          serializers: _serializers,
          value: password,
          type: const FullType(String),
        ),
      });
    } catch (error, stackTrace) {
      Logger().d(error);
      throw DioError(
          requestOptions: _options.compose(_dio.options, _path),
          // type: DioErrorType.other,
          error: error)
        ..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    UserToken _responseData;

    try {
      const _responseType = FullType(UserToken);
      _responseData = _serializers.deserialize(_response.data!,
          specifiedType: _responseType) as UserToken;
    } catch (error, stackTrace) {
      Logger().d(error);
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        // type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<UserToken>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  @override
  Future<Response<StartPhoneVerificationResponse>> startPhoneVerification({
    required String phone,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const _path = r'/auth/verification/start/';

    final _options = Options(
      method: r'POST',
      headers: {
        "Content-Type": "multipart/form-data",
        ...?headers,
      },
      extra: extra,
      validateStatus: validateStatus,
    );

    late FormData _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        r'phone': encodeQueryParameter(
            serializers: _serializers,
            value: phone,
            type: const FullType(String))
      });
    } catch (error, stackTrace) {
      Logger().d(error);
      throw DioError(
          requestOptions: _options.compose(_dio.options, _path),
          // type: DioErrorType.other,
          error: error)
        ..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    StartPhoneVerificationResponse _responseData;

    try {
      const _responseType = FullType(StartPhoneVerificationResponse);
      _responseData = _serializers.deserialize(_response.data!,
          specifiedType: _responseType) as StartPhoneVerificationResponse;
    } catch (error, stackTrace) {
      Logger().d(error);
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        // type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<StartPhoneVerificationResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  @override
  Future<Response<EnterCredsResponse>> singUp({
    required String phone,
    required String firstName,
    required String lastName,
    required String birthDate,
    required String password,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const _path = r'/auth/sign-up/';
    final _options = Options(
      method: r'POST',
      headers: {
        "Content-Type": "multipart/form-data",
        ...?headers,
      },
      extra: extra,
      validateStatus: validateStatus,
    );

    late FormData _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        r'phone': encodeQueryParameter(
            serializers: _serializers,
            value: phone,
            type: const FullType(String)),
        r'username': encodeQueryParameter(
            serializers: _serializers,
            value: phone,
            type: const FullType(String)),
        r'password': encodeQueryParameter(
            serializers: _serializers,
            value: password,
            type: const FullType(String)),
        r'first_name': encodeQueryParameter(
            serializers: _serializers,
            value: firstName,
            type: const FullType(String)),
        r'last_name': encodeQueryParameter(
            serializers: _serializers,
            value: lastName,
            type: const FullType(String)),
        r'birth_date': encodeQueryParameter(
            serializers: _serializers,
            value: birthDate,
            type: const FullType(String))
      });
    } catch (error, stackTrace) {
      Logger().d(error);
      throw DioError(
          requestOptions: _options.compose(_dio.options, _path),
          // type: DioErrorType.other,
          error: error)
        ..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    EnterCredsResponse _responseData;

    try {
      const _responseType = FullType(EnterCredsResponse);
      _responseData = _serializers.deserialize(_response.data!,
          specifiedType: _responseType) as EnterCredsResponse;
    } catch (error, stackTrace) {
      Logger().d(error);
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        // type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<EnterCredsResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
