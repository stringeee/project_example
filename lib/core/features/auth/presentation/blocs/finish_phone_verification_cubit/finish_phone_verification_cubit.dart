import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../shared/mixins/logger_mixin.dart';
import '../../../domain/use_case/finish_phone_verification_use_case.dart';

part 'finish_phone_verification_state.dart';
part 'finish_phone_verification_cubit.freezed.dart';

@injectable
class FinishPhoneVerificationCubit extends Cubit<FinishPhoneVerificationState>
    with LoggerMixin {
  final FinishPhoneVerificationUseCasse _useCasse;
  FinishPhoneVerificationCubit({
    required FinishPhoneVerificationUseCasse finishPhoneVerificationUseCasse,
  })  : _useCasse = finishPhoneVerificationUseCasse,
        super(const FinishPhoneVerificationState.initial());

  void verify({required String phone, required String code}) async {
    emit(const FinishPhoneVerificationState.codeSent());
    final finishPhoneVerificationParams =
        FinishPhoneVerificationParams(code: code, phone: phone);

    final tokenOrFailure = await _useCasse(finishPhoneVerificationParams);

    tokenOrFailure.fold((failure) {
      emit(FinishPhoneVerificationState.phoneCompleteVerificationFailed(
          failure.e));
    }, (token) {
      emit(const FinishPhoneVerificationState.phoneVerified());
    });
  }
}
