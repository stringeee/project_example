part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.noUser() = _Initial;
  const factory AuthState.authenticated(User user) = _Authenticated;
}
