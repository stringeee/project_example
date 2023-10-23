import 'package:injectable/injectable.dart';

import '../../../../app/mappers/model_mappers.dart';
import '../../domain/entities/start_phone_verification_response_domain_model.dart';
import '../../../../api/auth/auth_api.dart';
import '../../../../api/auth/models/phone_verification_response.dart';
import '../../domain/repository/start_phone_verification_repository.dart';

@Injectable(as: StartPhoneVerificationRepository)
class StartPhoneVerificationRepositoryImpl
    implements StartPhoneVerificationRepository {
  StartPhoneVerificationRepositoryImpl(
      {required AuthApi authApi,
      required DomainModelMapper<StartPhoneVerificationResponse,
              StartPhoneVerificationResponseDomainModel>
          startPhoneVerificationResponseDomainModelMapper})
      : _api = authApi,
        _mapper = startPhoneVerificationResponseDomainModelMapper;

  final DomainModelMapper<StartPhoneVerificationResponse,
      StartPhoneVerificationResponseDomainModel> _mapper;
  final AuthApi _api;

  @override
  Future<StartPhoneVerificationResponseDomainModel> startPhoneVerification(
      {required String phone}) async {
    return await _api
        .startPhoneVerification(phone: phone)
        .then((response) => _mapper(response.data!));
  }
}
