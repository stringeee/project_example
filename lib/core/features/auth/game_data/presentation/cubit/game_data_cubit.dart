import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gameroom/core/features/games_list/data/models/game.dart';
import 'package:gameroom/core/features/games_list/data/repository/game_repository.dart';
import 'package:injectable/injectable.dart';

part 'game_data_state.dart';
part 'game_data_cubit.freezed.dart';

@injectable
class GameDataCubit extends Cubit<GameDataState> {
  GameDataCubit({required GameRepository gameRepository})
      : _repo = gameRepository,
        super(const GameDataState.initial());
  final GameRepository _repo;

  void getGame(String gameId) async {
    emit(const GameDataState.loading());
    await _repo
        .getGame(gameId)
        .then(
          (game) => emit(GameDataState.loaded(game)),
        )
        .catchError((e) {
      emit(GameDataState.failure(e.toString()));
    });
  }
}
