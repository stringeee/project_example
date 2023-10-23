import '../entities/finish_phone_verification_response_domain_model.dart';

abstract class FinishPhoneVerificationRepository {
  Future<FinishPhoneVerificationResponseDomainModel> finistPhoneVerification(
      {required String phone, required String code});
}
