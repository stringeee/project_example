import '../entities/user_token_domain_model.dart';

abstract class SignInRepository {
  Future<UserTokenDomainModel> signIn(
      {required String userName, required String password});
}
