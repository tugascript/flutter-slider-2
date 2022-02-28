import '../../models/head_to_head/head_to_head.dart';

class MultiPlayerState {
  final HeadToHead? currentGame;
  final List<HeadToHead> openGames;
  final bool loading;

  const MultiPlayerState({
    this.currentGame,
    required this.openGames,
    required this.loading,
  });

  factory MultiPlayerState.initialState() {
    return const MultiPlayerState(
      openGames: [],
      loading: false,
    );
  }

  MultiPlayerState copyWith({
    HeadToHead? currentGame,
    List<HeadToHead>? openGames,
    bool? loading,
  }) {
    return MultiPlayerState(
      currentGame: currentGame ?? this.currentGame,
      openGames: openGames ?? this.openGames,
      loading: loading ?? this.loading,
    );
  }
}
