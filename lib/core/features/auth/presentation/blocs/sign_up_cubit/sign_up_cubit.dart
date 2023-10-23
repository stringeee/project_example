import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../shared/mixins/logger_mixin.dart';
import '../../../../../app/mappers/model_mappers.dart';
import '../../../domain/entities/start_phone_verification_response_domain_model.dart';
import '../../../domain/use_case/start_phone_verification_use_case.dart';
import '../../models/start_phone_verification_response_state_model.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> with LoggerMixin {
  final StateModelMapper<StartPhoneVerificationResponseDomainModel,
      StartPhoneVerificationResponseStateModel> _mapper;
  final StartPhoneVerificationUseCasse _useCasse;
  SignUpCubit({
    required StateModelMapper<StartPhoneVerificationResponseDomainModel,
            StartPhoneVerificationResponseStateModel>
        startPhoneVerificationResponseStateModeMapper,
    required StartPhoneVerificationUseCasse startPhoneVerificationUseCasse,
  })  : _mapper = startPhoneVerificationResponseStateModeMapper,
        _useCasse = startPhoneVerificationUseCasse,
        super(const SignUpState.initial());

  void startPhoneVerification(String phone) async {
    emit(const SignUpState.initial());

    final params = StartPhoneVerificationParams(phone: phone);
    final responseOrFailure = await _useCasse(params);

    responseOrFailure.fold((failure) {
      log.d(failure.e);
      emit(const SignUpState.failure());
    }, (response) {
      log.d(response.code);
      emit(const SignUpState.success());
    });
  }
}
