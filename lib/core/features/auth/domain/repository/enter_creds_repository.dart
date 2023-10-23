import '../entities/enter_creds_response_domain_model.dart';

abstract class EnterCredsRepository {
  Future<EnterCredsResponseDomainModel> signUp(
      {required String phone,
      required String firstName,
      required String lastName,
      required String birthDate,
      required String password});
}
