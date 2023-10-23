import '../../../../api/auth/models/finish_phone_verification_response.dart';
import '../../../../app/mappers/model_mappers.dart';
import '../../domain/entities/finish_phone_verification_response_domain_model.dart';

class FinishPhoneVerificationResponseDomainModelMapper
    implements
        DomainModelMapper<FinishPhoneVerificationResponse,
            FinishPhoneVerificationResponseDomainModel> {
  @override
  FinishPhoneVerificationResponseDomainModel call(
      FinishPhoneVerificationResponse response) {
    return const FinishPhoneVerificationResponseDomainModel();
  }
}
