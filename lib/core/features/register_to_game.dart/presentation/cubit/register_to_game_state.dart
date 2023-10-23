part of 'register_to_game_cubit.dart';

@freezed
class RegisterToGameState with _$RegisterToGameState {
  const factory RegisterToGameState.initial() = _Initial;
  const factory RegisterToGameState.loading() = _Loading;
  const factory RegisterToGameState.failure(String e) = _Failure;
  const factory RegisterToGameState.success() = _Success;
}
