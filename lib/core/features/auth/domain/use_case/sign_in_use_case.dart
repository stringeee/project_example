import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../../shared/const.dart';
import '../../../../../shared/mixins/logger_mixin.dart';
import '../../../../app/local_storage.dart';
import '../entities/user_token_domain_model.dart';
import '../repository/sign_in_repository.dart';
import '../../../../app/errors.dart';
import '../../../../app/params/base_params.dart';
import '../../../../app/usecase/usecase.dart';

@injectable
class SignInUseCase
    with LoggerMixin
    implements UseCase<UserTokenDomainModel, SignInParams> {
  final LocalStorageService _storageService;
  final SignInRepository _repository;

  SignInUseCase(
      {required LocalStorageService localStorageService,
      required SignInRepository signInRepository})
      : _repository = signInRepository,
        _storageService = localStorageService;

  @override
  Future<Either<Failure, UserTokenDomainModel>> call(
      SignInParams params) async {
    try {
      final domainModel = await _repository.signIn(
          userName: params.userName, password: params.password);

      // store to local storage

      Logger().d(domainModel.token);

      _storageService.secureStore(
          storageKey: tokenKey, value: domainModel.token);

      return Right(domainModel);
    } on DioError catch (e) {
      log.d(e.requestOptions.uri);
      return Left(DefaultFailure(e.toString()));
    }
  }
}

class SignInParams extends BaseParams {
  const SignInParams({required this.userName, required this.password});
  final String userName;
  final String password;
  @override
  List<Object?> get props => [userName, password];
}
