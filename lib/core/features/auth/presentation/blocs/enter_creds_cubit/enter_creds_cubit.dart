import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../shared/mixins/logger_mixin.dart';
import '../../../domain/use_case/enter_creds_use_case.dart';

part 'enter_creds_cubit.freezed.dart';
part 'enter_creds_state.dart';

@injectable
class EnterCredsCubit extends Cubit<EnterCredsState> with LoggerMixin {
  final EnterCredsUseCase _useCase;
  EnterCredsCubit({
    required EnterCredsUseCase enterCredsUseCase,
  })  : _useCase = enterCredsUseCase,
        super(const EnterCredsState.initial());

  void signUp(
      {required String phone,
      required String firstName,
      required String lastName,
      required String birthDate,
      required String password}) async {
    emit(const EnterCredsState.requestSent());
    final finishPhoneVerificationParams = EnterCredsParams(
        phone: phone,
        firstName: firstName,
        lastName: lastName,
        birthDate: birthDate,
        password: password);

    final tokenOrFailure = await _useCase(finishPhoneVerificationParams);

    tokenOrFailure.fold((failure) {
      emit(EnterCredsState.signUpFailed(failure.e));
    }, (token) {
      emit(const EnterCredsState.signUpSuccess());
    });
  }
}
