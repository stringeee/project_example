import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../shared/const.dart';
import '../../api/auth/auth_api.dart';
import '../../api/auth/auth_api_impl.dart';
import '../../api/auth/models/enter_creds_response.dart';
import '../../api/auth/models/finish_phone_verification_response.dart';
import '../../api/auth/models/phone_verification_response.dart';
import '../../api/auth/models/user_token.dart';
import '../../features/auth/data/mapper/enter_creds_response_domain_model_mapper.dart';
import '../../features/auth/data/mapper/finish_phone_verification_response_domain_model_mapper.dart';
import '../../features/auth/data/mapper/user_token_mapper.dart';
import '../../features/auth/domain/entities/enter_creds_response_domain_model.dart';
import '../../features/auth/domain/entities/finish_phone_verification_response_domain_model.dart';
import '../../features/auth/domain/entities/user_token_domain_model.dart';
import '../local_storage.dart';
import '../mappers/model_mappers.dart';
import '../../features/auth/data/mapper/start_phone_verification_reponse_domain_model_mapper.dart';
import '../../features/auth/domain/entities/start_phone_verification_response_domain_model.dart';
import '../../features/auth/presentation/mappers/start_phone_verification_response_state_model_mapper.dart';
import '../../features/auth/presentation/models/start_phone_verification_response_state_model.dart';
import '../route/auth_guard.dart';
import '../route/router.gr.dart';

@module
abstract class RegisterThirdPartyLibraries {
  //Other
  @singleton
  Logger get logger => Logger();

//Navigation
  @lazySingleton
  AppRouter get router => AppRouter(authGuard: AuthGuard());

  //Firebase
  @singleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @singleton
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage();

  @singleton
  LocalStorageService get localStorageService =>
      LocalStorageService(flutterSecureStorage: flutterSecureStorage);

  @singleton
  FirebaseFirestore get firebaseFireStore => FirebaseFirestore.instance;

  @singleton
  Dio get dio => Dio(BaseOptions(baseUrl: apiProd));

  @singleton
  AuthApi get authApi => AuthApiImpl(dio: dio);

  @injectable
  DomainModelMapper<StartPhoneVerificationResponse,
          StartPhoneVerificationResponseDomainModel>
      get startPhoneVerificationResponseDomainModelMapper =>
          StartPhoneVerificationResponseDomainModelMapper();

  @injectable
  StateModelMapper<StartPhoneVerificationResponseDomainModel,
          StartPhoneVerificationResponseStateModel>
      get startPhoneVerificationResponseStateModelMapper =>
          StartPhoneVerificationResponseStateModelMapper();

  @injectable
  DomainModelMapper<FinishPhoneVerificationResponse,
          FinishPhoneVerificationResponseDomainModel>
      get finishPhoneVerificationResponseDomainModelMapper =>
          FinishPhoneVerificationResponseDomainModelMapper();

  @injectable
  DomainModelMapper<EnterCredsResponse, EnterCredsResponseDomainModel>
      get enterCredsResponseDomainModelMapper =>
          EnterCredsResponseDomainModelMapper();

  @injectable
  DomainModelMapper<UserToken, UserTokenDomainModel>
      get userTokenDomainModelMapper => UserTokenMapper();
}
