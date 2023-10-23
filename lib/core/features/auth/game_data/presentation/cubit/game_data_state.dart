part of 'game_data_cubit.dart';

@freezed
class GameDataState with _$GameDataState {
  const factory GameDataState.initial() = _Initial;
  const factory GameDataState.loading() = _Loading;
  const factory GameDataState.failure(String errorMessage) = _Failure;
  const factory GameDataState.loaded(GameModel game) = _Loaded;
}
