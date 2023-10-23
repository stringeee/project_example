part of 'finish_phone_verification_cubit.dart';

@freezed
class FinishPhoneVerificationState with _$FinishPhoneVerificationState {
  const factory FinishPhoneVerificationState.initial() = _Initial;

  /// Start loading
  const factory FinishPhoneVerificationState.codeSent() = _CodeSent;

  const factory FinishPhoneVerificationState.phoneVerified() = _PhoneVerified;

  const factory FinishPhoneVerificationState.phoneCompleteVerificationFailed(
      final String failureMessage) = _PhoneVerificationFailed;
}
