import 'package:injectable/injectable.dart';

import '../../../../api/auth/auth_api.dart';
import '../../../../api/auth/models/enter_creds_response.dart';
import '../../../../app/mappers/model_mappers.dart';
import '../../domain/entities/enter_creds_response_domain_model.dart';
import '../../domain/repository/enter_creds_repository.dart';

@Injectable(as: EnterCredsRepository)
class StartPhoneVerificationRepositoryImpl implements EnterCredsRepository {
  StartPhoneVerificationRepositoryImpl(
      {required AuthApi authApi,
      required DomainModelMapper<EnterCredsResponse,
              EnterCredsResponseDomainModel>
          enterCredsResponseDomainModelMapper})
      : _api = authApi,
        _mapper = enterCredsResponseDomainModelMapper;

  final DomainModelMapper<EnterCredsResponse, EnterCredsResponseDomainModel>
      _mapper;
  final AuthApi _api;

  @override
  Future<EnterCredsResponseDomainModel> signUp(
      {required String phone,
      required String firstName,
      required String lastName,
      required String birthDate,
      required String password}) async {
    return await _api
        .singUp(
            phone: phone,
            firstName: firstName,
            lastName: lastName,
            birthDate: birthDate,
            password: password)
        .then((response) => _mapper(response.data!));
  }
}
