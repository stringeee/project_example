import 'package:injectable/injectable.dart';

import '../../../../api/auth/models/user_token.dart';
import '../../../../app/mappers/model_mappers.dart';
import '../../../../api/auth/auth_api.dart';
import '../../domain/entities/user_token_domain_model.dart';
import '../../domain/repository/sign_in_repository.dart';

@Injectable(as: SignInRepository)
class SignInRepositoryImpl implements SignInRepository {
  SignInRepositoryImpl(
      {required AuthApi authApi,
      required DomainModelMapper<UserToken, UserTokenDomainModel>
          startPhoneVerificationResponseDomainModelMapper})
      : _api = authApi,
        _mapper = startPhoneVerificationResponseDomainModelMapper;

  final DomainModelMapper<UserToken, UserTokenDomainModel> _mapper;
  final AuthApi _api;

  @override
  Future<UserTokenDomainModel> signIn(
      {required String userName, required String password}) async {
    return _api
        .signIn(
          userName: userName,
          password: password,
        )
        .then((response) => _mapper(response.data!));
  }
}
