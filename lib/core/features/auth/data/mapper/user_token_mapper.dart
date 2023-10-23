import '../../../../api/auth/models/user_token.dart';
import '../../../../app/mappers/model_mappers.dart';
import '../../domain/entities/user_token_domain_model.dart';

class UserTokenMapper
    implements DomainModelMapper<UserToken, UserTokenDomainModel> {
  @override
  UserTokenDomainModel call(UserToken token) {
    return UserTokenDomainModel(token: token.token);
  }
}
