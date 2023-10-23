part of 'games_cubit_dart_cubit.dart';

@freezed
class GamesState with _$GamesState {
  const factory GamesState.initial() = _Initial;
  const factory GamesState.loading() = _Loading;
  const factory GamesState.gamesLoaded(List<GameModel> games) = _GamesLoaded;
  const factory GamesState.loadingFailed(String failure) = _LoadingFailed;
}
