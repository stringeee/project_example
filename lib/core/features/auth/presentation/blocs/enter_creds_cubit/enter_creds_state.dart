part of 'enter_creds_cubit.dart';

@freezed
class EnterCredsState with _$EnterCredsState {
  const factory EnterCredsState.initial() = _Initial;

  /// Start loading
  const factory EnterCredsState.requestSent() = _RequestSent;

  const factory EnterCredsState.signUpSuccess() = _SignUpSuccess;

  const factory EnterCredsState.signUpFailed(final String failureMessage) =
      _SignUpFailed;
}
