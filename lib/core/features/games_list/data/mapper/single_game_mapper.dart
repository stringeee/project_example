import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/mappers/model_mappers.dart';
import '../models/game.dart';

@injectable
class SingleGameMapper
    implements ModelMapper<DocumentSnapshot<Object?>, GameModel> {
  @override
  GameModel call(DocumentSnapshot<Object?> document) {
    final List<Map<String, dynamic>> players =
        List<Map<String, dynamic>>.from(document.get("players"));
    return GameModel(
      address: document.get("address"),
      endTime: document.get("end_time"),
      startTime: document.get("start_time"),
      fieldHeight: document.get("field_height"),
      fieldWidth: document.get("field_width"),
      gameId: document.get("game_id"),
      imageUrl: document.get("image_url"),
      hasLockers: document.get("locker"),
      hasLights: document.get("lights"),
      hasParking: document.get("parking"),
      hasWash: document.get("wash"),
      mapUrl: document.get("map_link"),
      maxPlayersPerTeam: document.get("max_players_per_team"),
      players: players.map((e) => Player(e['name'], e['phone'])).toList(),
      price: document.get("price"),
      rating: document.get("rating"),
      room: document.get("room"),
      title: document.get("title"),
    );
  }
}
