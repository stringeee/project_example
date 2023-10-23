import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/repository/game_repository.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/game.dart';

part 'games_cubit_dart_state.dart';
part 'games_cubit_dart_cubit.freezed.dart';

@injectable
class GamesCubit extends Cubit<GamesState> {
  GamesCubit({required GameRepository gameRepository})
      : _repository = gameRepository,
        super(const GamesState.initial());

  final GameRepository _repository;

  void loadGames() async {
    emit(const GamesState.loading());
    try {
      final List<GameModel> games = await _repository.getGames();
      emit(GamesState.gamesLoaded(games));
    } catch (e) {
      emit(GamesState.loadingFailed(e.toString()));
    }
  }
}
