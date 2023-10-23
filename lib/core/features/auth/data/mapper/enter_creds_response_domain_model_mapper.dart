import '../../../../api/auth/models/enter_creds_response.dart';

import '../../../../app/mappers/model_mappers.dart';
import '../../domain/entities/enter_creds_response_domain_model.dart';

class EnterCredsResponseDomainModelMapper
    implements
        DomainModelMapper<EnterCredsResponse, EnterCredsResponseDomainModel> {
  @override
  EnterCredsResponseDomainModel call(EnterCredsResponse token) {
    return EnterCredsResponseDomainModel(token: token.tokenResponse.token);
  }
}
