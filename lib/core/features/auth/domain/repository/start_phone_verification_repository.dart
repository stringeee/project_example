import '../entities/start_phone_verification_response_domain_model.dart';

abstract class StartPhoneVerificationRepository {
  Future<StartPhoneVerificationResponseDomainModel> startPhoneVerification(
      {required String phone});
}
