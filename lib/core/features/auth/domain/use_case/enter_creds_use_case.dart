import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../shared/mixins/logger_mixin.dart';
import '../../../../app/errors.dart';
import '../../../../app/params/base_params.dart';
import '../../../../app/usecase/usecase.dart';
import '../entities/enter_creds_response_domain_model.dart';
import '../repository/enter_creds_repository.dart';

@injectable
class EnterCredsUseCase
    with LoggerMixin
    implements UseCase<EnterCredsResponseDomainModel, EnterCredsParams> {
  final EnterCredsRepository _repository;

  EnterCredsUseCase({required EnterCredsRepository enterCredsRepository})
      : _repository = enterCredsRepository;

  @override
  Future<Either<Failure, EnterCredsResponseDomainModel>> call(
      EnterCredsParams params) async {
    try {
      final String phone = params.phone
          .replaceAll('(', '')
          .replaceAll(')', '')
          .replaceAll(' ', '');
      final String firstName = params.firstName.replaceAll(' ', '');
      final String lastName = params.lastName.replaceAll(' ', '');

      final domainModel = await _repository.signUp(
          phone: phone,
          firstName: firstName,
          lastName: lastName,
          birthDate: params.birthDate,
          password: params.password);
      return Right(domainModel);
    } on DioError catch (e) {
      log.d(e.requestOptions.uri);
      return Left(DefaultFailure(e.toString()));
    }
  }
}

class EnterCredsParams extends BaseParams {
  const EnterCredsParams(
      {required this.phone,
      required this.firstName,
      required this.lastName,
      required this.birthDate,
      required this.password});
  final String phone;
  final String firstName;
  final String lastName;
  final String birthDate;
  final String password;
  @override
  List<Object?> get props => [phone, firstName, lastName, birthDate, password];
}
