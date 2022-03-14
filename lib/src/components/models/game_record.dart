import 'user.dart';

class GameRecord {
  final int id;
  final int level;
  final int moves;
  final int time;
  final User? user;

  const GameRecord({
    required this.id,
    required this.level,
    required this.moves,
    required this.time,
    this.user,
  });

  GameRecord copyWith({
    int? id,
    int? level,
    int? moves,
    int? time,
    User? user,
  }) {
    return GameRecord(
      id: id ?? this.id,
      level: level ?? this.level,
      moves: moves ?? this.moves,
      time: time ?? this.time,
      user: user ?? this.user,
    );
  }
}
