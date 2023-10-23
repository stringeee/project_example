import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gameroom/core/features/games_list/data/models/game.dart';
import 'package:gameroom/core/features/games_list/data/repository/game_repository.dart';
import 'package:injectable/injectable.dart';

part 'register_to_game_state.dart';
part 'register_to_game_cubit.freezed.dart';

@injectable
class RegisterToGameCubit extends Cubit<RegisterToGameState> {
  RegisterToGameCubit({required GameRepository gameRepository})
      : _repo = gameRepository,
        super(const RegisterToGameState.initial());

  final GameRepository _repo;
  void registerToGame(
      {required String name, required GameModel gameModel}) async {
    if (gameModel.players.length < gameModel.maxPlayersPerTeam * 3) {
      emit(const RegisterToGameState.loading());
      await _repo
          .registerToGame(name, gameModel)
          .then((value) => emit(const RegisterToGameState.success()))
          .catchError((e) {});
    } else {
      emit(const RegisterToGameState.failure(
          'Превышенно максимальное количество игроков'));
    }
  }
}
