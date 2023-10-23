part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;

  /// Start loading
  const factory SignInState.credsSent() = _CodeSent;

  /// Authenticate user with this creds and store token to secure storage
  const factory SignInState.credsVerified() = _CredsVerified;

  /// Creds verification failed
  const factory SignInState.credsVerificationFailed(
      final String failureMessage) = _CredsVerificationFailed;
}
