import '../enums/difficulty_enum.dart';

import 'head_player.dart';

class HeadToHead {
  final int id;
  final HeadPlayer host;
  final HeadPlayer? challenger;
  final Difficulty difficulty;
  final int level;
  final int time;
  final String image;

  HeadToHead({
    required this.id,
    required this.host,
    required this.challenger,
    required this.difficulty,
    required this.level,
    required this.time,
    required this.image,
  });

  HeadToHead updateChallenger(HeadPlayer chal) {
    return HeadToHead(
      id: id,
      host: host,
      challenger: chal,
      difficulty: difficulty,
      level: level,
      time: time,
      image: image,
    );
  }
}
