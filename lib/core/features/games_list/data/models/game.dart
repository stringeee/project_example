import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../app/model/base_models.dart';

class GameModel extends BaseModel {
  final String address;
  final Timestamp endTime;
  final Timestamp startTime;
  final num fieldHeight;
  final num fieldWidth;
  final String gameId;
  final String imageUrl;
  final bool hasLockers;
  final bool hasLights;
  final bool hasParking;
  final bool hasWash;
  final String mapUrl;
  final num maxPlayersPerTeam;
  final List<Player> players;
  final num price;
  final num rating;
  final String room;
  final String title;

  const GameModel(
      {required this.address,
      required this.endTime,
      required this.startTime,
      required this.fieldHeight,
      required this.fieldWidth,
      required this.gameId,
      required this.imageUrl,
      required this.hasLockers,
      required this.hasLights,
      required this.hasParking,
      required this.hasWash,
      required this.mapUrl,
      required this.maxPlayersPerTeam,
      required this.players,
      required this.price,
      required this.rating,
      required this.room,
      required this.title});

  Map<String, dynamic> toJson() {
    return {
      "address": address,
      "end_time": endTime,
      "start_time": startTime,
      "field_height": fieldHeight,
      "field_width": fieldWidth,
      "game_id": gameId,
      "image_url": imageUrl,
      "locker": hasLockers,
      "lights": hasLights,
      "parking": hasParking,
      "wash": hasWash,
      "map_link": mapUrl,
      "max_players_per_team": maxPlayersPerTeam,
      "players": players.map((e) => e.toJson()).toList(),
      "price": price,
      "rating": rating,
      "room": room,
      "title": title,
    };
  }

  @override
  List<Object?> get props => [
        address,
        endTime,
        startTime,
        fieldHeight,
        fieldWidth,
        gameId,
        imageUrl,
        hasLockers,
        hasLights,
        hasParking,
        hasWash,
        mapUrl,
        maxPlayersPerTeam,
        players,
        price,
        rating,
        room,
        title
      ];
}

class Player extends BaseModel {
  final String name;
  final String phone;

  const Player(this.name, this.phone);
  Map<String, dynamic> toJson() {
    return {"name": name, "phone": phone};
  }

  @override
  List<Object?> get props => [name, phone];
}
