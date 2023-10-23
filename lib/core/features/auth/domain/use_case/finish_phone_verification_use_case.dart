import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../shared/mixins/logger_mixin.dart';
import '../../../../app/errors.dart';
import '../../../../app/params/base_params.dart';
import '../../../../app/usecase/usecase.dart';
import '../entities/finish_phone_verification_response_domain_model.dart';
import '../repository/finish_phone_verification_repository.dart';

@injectable
class FinishPhoneVerificationUseCasse
    with
        LoggerMixin
    implements
        UseCase<FinishPhoneVerificationResponseDomainModel,
            FinishPhoneVerificationParams> {
  final FinishPhoneVerificationRepository _repository;

  FinishPhoneVerificationUseCasse(
      {required FinishPhoneVerificationRepository
          finishPhoneVerificationRepository})
      : _repository = finishPhoneVerificationRepository;

  @override
  Future<Either<Failure, FinishPhoneVerificationResponseDomainModel>> call(
      FinishPhoneVerificationParams params) async {
    try {
      final phone = params.phone
          .replaceAll('(', '')
          .replaceAll(')', '')
          .replaceAll(' ', '');

      final code = params.code.replaceAll(' ', '');
      final domainModel =
          await _repository.finistPhoneVerification(phone: phone, code: code);
      return Right(domainModel);
    } on DioError catch (e) {
      log.d(e.requestOptions.uri);
      return Left(DefaultFailure(e.toString()));
    }
  }
}

class FinishPhoneVerificationParams extends BaseParams {
  const FinishPhoneVerificationParams(
      {required this.phone, required this.code});
  final String phone;
  final String code;
  @override
  List<Object?> get props => [phone, code];
}
