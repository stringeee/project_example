import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../shared/mixins/logger_mixin.dart';
import '../repository/start_phone_verification_repository.dart';
import '../../../../app/errors.dart';
import '../../../../app/params/base_params.dart';
import '../../../../app/usecase/usecase.dart';
import '../entities/start_phone_verification_response_domain_model.dart';

@injectable
class StartPhoneVerificationUseCasse
    with
        LoggerMixin
    implements
        UseCase<StartPhoneVerificationResponseDomainModel,
            StartPhoneVerificationParams> {
  final StartPhoneVerificationRepository _repository;

  StartPhoneVerificationUseCasse(
      {required StartPhoneVerificationRepository
          startPhoneVerificationRepository})
      : _repository = startPhoneVerificationRepository;

  @override
  Future<Either<Failure, StartPhoneVerificationResponseDomainModel>> call(
      StartPhoneVerificationParams params) async {
    try {
      final phone = params.phone
          .replaceAll('(', '')
          .replaceAll(')', '')
          .replaceAll(' ', '');
      final domainModel =
          await _repository.startPhoneVerification(phone: phone);
      return Right(domainModel);
    } on DioError catch (e) {
      log.d(e.requestOptions.uri);
      return Left(DefaultFailure(e.toString()));
    }
  }
}

class StartPhoneVerificationParams extends BaseParams {
  const StartPhoneVerificationParams({required this.phone});
  final String phone;
  @override
  List<Object?> get props => [phone];
}
