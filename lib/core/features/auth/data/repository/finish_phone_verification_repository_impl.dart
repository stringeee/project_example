import 'package:injectable/injectable.dart';

import '../../../../api/auth/auth_api.dart';
import '../../../../api/auth/models/finish_phone_verification_response.dart';
import '../../../../app/mappers/model_mappers.dart';
import '../../domain/entities/finish_phone_verification_response_domain_model.dart';
import '../../domain/repository/finish_phone_verification_repository.dart';

@Injectable(as: FinishPhoneVerificationRepository)
class FinishPhoneVerificationRepositoryImpl
    implements FinishPhoneVerificationRepository {
  FinishPhoneVerificationRepositoryImpl(
      {required AuthApi authApi,
      required DomainModelMapper<FinishPhoneVerificationResponse,
              FinishPhoneVerificationResponseDomainModel>
          finishPhoneVerificationResponseDomainModelMapper})
      : _api = authApi,
        _mapper = finishPhoneVerificationResponseDomainModelMapper;
  final AuthApi _api;
  final DomainModelMapper<FinishPhoneVerificationResponse,
      FinishPhoneVerificationResponseDomainModel> _mapper;

  @override
  Future<FinishPhoneVerificationResponseDomainModel> finistPhoneVerification(
      {required String phone, required String code}) async {
    return _api
        .completePhoneVerification(phone: phone, code: code)
        .then((response) {
      return _mapper(response.data!);
    });
  }
}
