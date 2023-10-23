// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i23;
import 'package:dio/dio.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i22;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i24;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i27;

import '../../../shared/api/auth_service.dart' as _i36;
import '../../api/auth/auth_api.dart' as _i4;
import '../../api/auth/models/enter_creds_response.dart' as _i12;
import '../../api/auth/models/finish_phone_verification_response.dart' as _i10;
import '../../api/auth/models/phone_verification_response.dart' as _i8;
import '../../api/auth/models/user_token.dart' as _i14;
import '../../features/auth/data/repository/enter_creds_repository_impl.dart'
    as _i17;
import '../../features/auth/data/repository/finish_phone_verification_repository_impl.dart'
    as _i20;
import '../../features/auth/data/repository/sign_in_repository_impl.dart'
    as _i29;
import '../../features/auth/data/repository/start_phone_verification_repository_impl.dart'
    as _i33;
import '../../features/auth/domain/entities/enter_creds_response_domain_model.dart'
    as _i13;
import '../../features/auth/domain/entities/finish_phone_verification_response_domain_model.dart'
    as _i11;
import '../../features/auth/domain/entities/start_phone_verification_response_domain_model.dart'
    as _i9;
import '../../features/auth/domain/entities/user_token_domain_model.dart'
    as _i15;
import '../../features/auth/domain/repository/enter_creds_repository.dart'
    as _i16;
import '../../features/auth/domain/repository/finish_phone_verification_repository.dart'
    as _i19;
import '../../features/auth/domain/repository/sign_in_repository.dart' as _i28;
import '../../features/auth/domain/repository/start_phone_verification_repository.dart'
    as _i32;
import '../../features/auth/domain/use_case/enter_creds_use_case.dart' as _i18;
import '../../features/auth/domain/use_case/finish_phone_verification_use_case.dart'
    as _i21;
import '../../features/auth/domain/use_case/sign_in_use_case.dart' as _i30;
import '../../features/auth/domain/use_case/start_phone_verification_use_case.dart'
    as _i34;
import '../../features/auth/game_data/presentation/cubit/game_data_cubit.dart'
    as _i44;
import '../../features/auth/presentation/blocs/enter_creds_cubit/enter_creds_cubit.dart'
    as _i37;
import '../../features/auth/presentation/blocs/finish_phone_verification_cubit/finish_phone_verification_cubit.dart'
    as _i38;
import '../../features/auth/presentation/blocs/sign_in_cubit/sign_in_cubit.dart'
    as _i42;
import '../../features/auth/presentation/blocs/sign_up_cubit/sign_up_cubit.dart'
    as _i43;
import '../../features/auth/presentation/models/start_phone_verification_response_state_model.dart'
    as _i35;
import '../../features/games_list/data/mapper/game_mapper.dart' as _i25;
import '../../features/games_list/data/mapper/single_game_mapper.dart' as _i31;
import '../../features/games_list/data/repository/game_repository.dart' as _i39;
import '../../features/games_list/presentation/cubit/games_cubit_dart_cubit.dart'
    as _i40;
import '../../features/register_to_game.dart/presentation/cubit/register_to_game_cubit.dart'
    as _i41;
import '../auth/cubit/auth_cubit.dart' as _i5;
import '../local_storage.dart' as _i26;
import '../mappers/model_mappers.dart' as _i7;
import '../route/router.gr.dart' as _i3;
import 'register_third_party_libs.dart'
    as _i45; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerThirdPartyLibraries = _$RegisterThirdPartyLibraries();
  gh.lazySingleton<_i3.AppRouter>(() => registerThirdPartyLibraries.router);
  gh.singleton<_i4.AuthApi>(registerThirdPartyLibraries.authApi);
  gh.singleton<_i5.AuthCubit>(_i5.AuthCubit(appRouter: get<_i3.AppRouter>()));
  gh.singleton<_i6.Dio>(registerThirdPartyLibraries.dio);
  gh.factory<
      _i7.DomainModelMapper<_i8.StartPhoneVerificationResponse,
          _i9.StartPhoneVerificationResponseDomainModel>>(() =>
      registerThirdPartyLibraries
          .startPhoneVerificationResponseDomainModelMapper);
  gh.factory<
      _i7.DomainModelMapper<_i10.FinishPhoneVerificationResponse,
          _i11.FinishPhoneVerificationResponseDomainModel>>(() =>
      registerThirdPartyLibraries
          .finishPhoneVerificationResponseDomainModelMapper);
  gh.factory<
          _i7.DomainModelMapper<_i12.EnterCredsResponse,
              _i13.EnterCredsResponseDomainModel>>(
      () => registerThirdPartyLibraries.enterCredsResponseDomainModelMapper);
  gh.factory<_i7.DomainModelMapper<_i14.UserToken, _i15.UserTokenDomainModel>>(
      () => registerThirdPartyLibraries.userTokenDomainModelMapper);
  gh.factory<_i16.EnterCredsRepository>(() =>
      _i17.StartPhoneVerificationRepositoryImpl(
          authApi: get<_i4.AuthApi>(),
          enterCredsResponseDomainModelMapper: get<
              _i7.DomainModelMapper<_i12.EnterCredsResponse,
                  _i13.EnterCredsResponseDomainModel>>()));
  gh.factory<_i18.EnterCredsUseCase>(() => _i18.EnterCredsUseCase(
      enterCredsRepository: get<_i16.EnterCredsRepository>()));
  gh.factory<_i19.FinishPhoneVerificationRepository>(() =>
      _i20.FinishPhoneVerificationRepositoryImpl(
          authApi: get<_i4.AuthApi>(),
          finishPhoneVerificationResponseDomainModelMapper: get<
              _i7.DomainModelMapper<_i10.FinishPhoneVerificationResponse,
                  _i11.FinishPhoneVerificationResponseDomainModel>>()));
  gh.factory<_i21.FinishPhoneVerificationUseCasse>(() =>
      _i21.FinishPhoneVerificationUseCasse(
          finishPhoneVerificationRepository:
              get<_i19.FinishPhoneVerificationRepository>()));
  gh.singleton<_i22.FirebaseAuth>(registerThirdPartyLibraries.firebaseAuth);
  gh.singleton<_i23.FirebaseFirestore>(
      registerThirdPartyLibraries.firebaseFireStore);
  gh.singleton<_i24.FlutterSecureStorage>(
      registerThirdPartyLibraries.flutterSecureStorage);
  gh.factory<_i25.GameMapper>(() => _i25.GameMapper());
  gh.singleton<_i26.LocalStorageService>(
      registerThirdPartyLibraries.localStorageService);
  gh.singleton<_i27.Logger>(registerThirdPartyLibraries.logger);
  gh.factory<_i28.SignInRepository>(() => _i29.SignInRepositoryImpl(
      authApi: get<_i4.AuthApi>(),
      startPhoneVerificationResponseDomainModelMapper: get<
          _i7.DomainModelMapper<_i14.UserToken, _i15.UserTokenDomainModel>>()));
  gh.factory<_i30.SignInUseCase>(() => _i30.SignInUseCase(
      localStorageService: get<_i26.LocalStorageService>(),
      signInRepository: get<_i28.SignInRepository>()));
  gh.factory<_i31.SingleGameMapper>(() => _i31.SingleGameMapper());
  gh.factory<_i32.StartPhoneVerificationRepository>(() =>
      _i33.StartPhoneVerificationRepositoryImpl(
          authApi: get<_i4.AuthApi>(),
          startPhoneVerificationResponseDomainModelMapper: get<
              _i7.DomainModelMapper<_i8.StartPhoneVerificationResponse,
                  _i9.StartPhoneVerificationResponseDomainModel>>()));
  gh.factory<_i34.StartPhoneVerificationUseCasse>(() =>
      _i34.StartPhoneVerificationUseCasse(
          startPhoneVerificationRepository:
              get<_i32.StartPhoneVerificationRepository>()));
  gh.factory<
      _i7.StateModelMapper<_i9.StartPhoneVerificationResponseDomainModel,
          _i35.StartPhoneVerificationResponseStateModel>>(() =>
      registerThirdPartyLibraries
          .startPhoneVerificationResponseStateModelMapper);
  gh.factory<_i36.AuthService>(
      () => _i36.AuthService(get<_i22.FirebaseAuth>()));
  gh.factory<_i37.EnterCredsCubit>(() =>
      _i37.EnterCredsCubit(enterCredsUseCase: get<_i18.EnterCredsUseCase>()));
  gh.factory<_i38.FinishPhoneVerificationCubit>(() =>
      _i38.FinishPhoneVerificationCubit(
          finishPhoneVerificationUseCasse:
              get<_i21.FinishPhoneVerificationUseCasse>()));
  gh.factory<_i39.GameRepository>(() => _i39.GameRepository(
      firebaseFirestore: get<_i23.FirebaseFirestore>(),
      gameMapper: get<_i25.GameMapper>(),
      singleGameMapper: get<_i31.SingleGameMapper>()));
  gh.factory<_i40.GamesCubit>(
      () => _i40.GamesCubit(gameRepository: get<_i39.GameRepository>()));
  gh.factory<_i41.RegisterToGameCubit>(() =>
      _i41.RegisterToGameCubit(gameRepository: get<_i39.GameRepository>()));
  gh.factory<_i42.SignInCubit>(
      () => _i42.SignInCubit(signInUseCase: get<_i30.SignInUseCase>()));
  gh.factory<_i43.SignUpCubit>(() => _i43.SignUpCubit(
      startPhoneVerificationResponseStateModeMapper: get<
          _i7.StateModelMapper<_i9.StartPhoneVerificationResponseDomainModel,
              _i35.StartPhoneVerificationResponseStateModel>>(),
      startPhoneVerificationUseCasse:
          get<_i34.StartPhoneVerificationUseCasse>()));
  gh.factory<_i44.GameDataCubit>(
      () => _i44.GameDataCubit(gameRepository: get<_i39.GameRepository>()));
  return get;
}

class _$RegisterThirdPartyLibraries extends _i45.RegisterThirdPartyLibraries {}
