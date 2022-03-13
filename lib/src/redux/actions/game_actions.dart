import 'dart:async';

import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../../components/models/enums/difficulty_enum.dart';
import '../../components/models/enums/game_status_enum.dart';
import '../../components/models/game/position.dart';
import '../../utilities/helpers/image_divider.dart';
import '../app_selectors.dart';
import '../app_state.dart';

class NewGame {
  final int level;
  final DifficultyEnum difficultyEnum;

  const NewGame(
    this.level,
    this.difficultyEnum,
  );
}

class NextLevel {}

class MovePiece {
  final Position pos;

  MovePiece(this.pos);
}

class ShufflePuzzle {}

class LoseGame {}

class ReduceTimer {}

class SinglePlayerLoading {}

class SinglePlayerStopLoading {}

class UpdateGameStatus {
  final GameStatusEnum status;

  const UpdateGameStatus(this.status);
}

class AddPainters {
  final String paint;
  final List<List<DividerPainter>> painters;

  const AddPainters(this.paint, this.painters);
}

class ShowPaint {}

class HidePaint {}

class TimerActions {
  static Timer? _timer;

  static ThunkAction<AppState> startTimer() {
    return (Store<AppState> store) async {
      _timer = Timer.periodic(const Duration(seconds: 1), (_) {
        final gameState = selectGameState(store);

        if (gameState.time > 0 &&
            gameState.puzzle.status == GameStatusEnum.ongoing) {
          store.dispatch(ReduceTimer());
        } else {
          _timer?.cancel();
        }
      });
    };
  }

  static ThunkAction<AppState> stopTimer() {
    return (Store<AppState> store) async {
      final gameState = selectGameState(store);

      if (gameState.time > 0) {
        _timer?.cancel();
        store.dispatch(const UpdateGameStatus(GameStatusEnum.paused));
      }
    };
  }
}

ThunkAction<AppState> addPaintersToPieces(String name, bool network) {
  return (Store<AppState> store) async {
    store.dispatch(SinglePlayerLoading());
    final puzzle = selectPuzzleState(store);

    final painters = await ImageDivider.imagePuzzle(
      name,
      puzzle.table.length,
      network,
    );
    store.dispatch(AddPainters(name, painters));
    store.dispatch(SinglePlayerStopLoading());
  };
}

ThunkAction<AppState> nextLevelAction() {
  return (Store<AppState> store) async {
    store.dispatch(SinglePlayerLoading());
    final gameState = selectGameState(store);

    store.dispatch(NextLevel());
    final puzzle = gameState.puzzle;

    if (puzzle.image != null) {
      final name = puzzle.image!;
      final painters = await ImageDivider.imagePuzzle(
        name,
        gameState.level + 3,
        name.startsWith('http'),
      );
      store.dispatch(AddPainters(name, painters));
    }

    store.dispatch(SinglePlayerStopLoading());
  };
}
