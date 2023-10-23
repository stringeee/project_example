import '../../../../api/auth/models/phone_verification_response.dart';
import '../../../../app/mappers/model_mappers.dart';
import '../../domain/entities/start_phone_verification_response_domain_model.dart';

class StartPhoneVerificationResponseDomainModelMapper
    implements
        DomainModelMapper<StartPhoneVerificationResponse,
            StartPhoneVerificationResponseDomainModel> {
  @override
  StartPhoneVerificationResponseDomainModel call(
      StartPhoneVerificationResponse response) {
    return StartPhoneVerificationResponseDomainModel(
      phone: response.responseData.phone,
      code: response.responseData.code,
    );
  }
}
