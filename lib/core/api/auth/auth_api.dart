import 'package:dio/dio.dart';

import 'models/enter_creds_response.dart';
import 'models/user_token.dart';
import 'models/finish_phone_verification_response.dart';
import 'models/phone_verification_response.dart';

abstract class AuthApi {
  Future<Response<EnterCredsResponse>> singUp(
      {required String phone,
      required String firstName,
      required String lastName,
      required String birthDate,
      required String password});
  Future<Response<UserToken>> signIn(
      {required String userName, required String password});
  Future<Response<StartPhoneVerificationResponse>> startPhoneVerification(
      {required String phone});
  Future<Response<FinishPhoneVerificationResponse>> completePhoneVerification(
      {required String phone, required String code});
}
