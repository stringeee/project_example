import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../shared/mixins/logger_mixin.dart';
import '../../../domain/use_case/sign_in_use_case.dart';

part 'sign_in_state.dart';
part 'sign_in_cubit.freezed.dart';

@injectable
class SignInCubit extends Cubit<SignInState> with LoggerMixin {
  final SignInUseCase _useCasse;
  SignInCubit({
    required SignInUseCase signInUseCase,
  })  : _useCasse = signInUseCase,
        super(const SignInState.initial());

  void signIn({required String userName, required String password}) async {
    emit(const SignInState.credsSent());
    final signInParams = SignInParams(userName: userName, password: password);

    final tokenOrFailure = await _useCasse(signInParams);

    tokenOrFailure.fold((failure) {
      emit(SignInState.credsVerificationFailed(failure.e));
    }, (token) {
      emit(const SignInState.credsVerified());
    });
  }
}
