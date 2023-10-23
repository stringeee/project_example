import '../../../../app/mappers/model_mappers.dart';
import '../../domain/entities/start_phone_verification_response_domain_model.dart';
import '../models/start_phone_verification_response_state_model.dart';

class StartPhoneVerificationResponseStateModelMapper
    implements
        StateModelMapper<StartPhoneVerificationResponseDomainModel,
            StartPhoneVerificationResponseStateModel> {
  @override
  StartPhoneVerificationResponseStateModel call(
      StartPhoneVerificationResponseDomainModel domainModel) {
    return StartPhoneVerificationResponseStateModel(
        phone: domainModel.phone, code: domainModel.code);
  }
}
