import '../game/game.dart';
import '../user.dart';

class HeadPlayer {
  final User user;
  final Game game;

  HeadPlayer({
    required this.user,
    required this.game,
  });

  HeadPlayer copyWith({
    User? user,
    Game? game,
  }) {
    return HeadPlayer(
      user: user ?? this.user,
      game: game ?? this.game,
    );
  }
}
