import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../mapper/game_mapper.dart';
import '../mapper/single_game_mapper.dart';
import '../models/game.dart';

@injectable
class GameRepository {
  final FirebaseFirestore _firestore;
  final GameMapper _mapper;
  final SingleGameMapper _singleGameMapper;

  GameRepository(
      {required FirebaseFirestore firebaseFirestore,
      required GameMapper gameMapper,
      required SingleGameMapper singleGameMapper})
      : _firestore = firebaseFirestore,
        _singleGameMapper = singleGameMapper,
        _mapper = gameMapper;

  Future<List<GameModel>> getGames() async {
    try {
      final docs = await _firestore.collection('Fields').get();
      return _mapper(docs.docs);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> registerToGame(String name, GameModel gameModel) async {
    try {
      final phone = FirebaseAuth.instance.currentUser!.phoneNumber!;
      List<Player> players = gameModel.players;
      players.add(Player(name, phone));
      final mapList = players.map((e) => e.toJson()).toList();
      _firestore
          .collection('Fields')
          .doc(gameModel.gameId)
          .update({'players': mapList});
    } catch (e) {
      rethrow;
    }
  }

  Future<GameModel> getGame(String docId) async {
    try {
      final doc = await _firestore.collection('Fields').doc(docId).get();
      return _singleGameMapper(doc);
    } catch (e) {
      rethrow;
    }
  }
}
