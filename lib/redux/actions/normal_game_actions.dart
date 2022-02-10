import 'dart:async';

import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:v1/utilities/helpers/image_divider.dart';

import '../../models/enums/difficulty_enum.dart';
import '../../models/enums/game_status_enum.dart';
import '../../models/position.dart';
import '../../redux/app_selectors.dart';
import '../app_state.dart';

class NewGame {
  final int level;
  final DifficultyEnum difficultyEnum;

  NewGame(this.level, this.difficultyEnum);
}

class NextLevel {}

class MovePiece {
  final Position pos;

  MovePiece(this.pos);
}

class ShufflePuzzle {}

class LoseGame {}

class ReduceTimer {}

class ToogleLoading {}

class UpdateGameStatus {
  GameStatusEnum status;

  UpdateGameStatus(this.status);
}

class AddPainters {
  List<List<DividerPainter>> painters;

  AddPainters(this.painters);
}

class TimerActions {
  static Timer? _timer;

  static ThunkAction<AppState> startTimer() {
    return (Store<AppState> store) async {
      _timer = Timer.periodic(const Duration(seconds: 1), (_) {
        final gameState = selectGameState(store);

        if (gameState.time > 0 &&
            gameState.game.status == GameStatusEnum.ongoing) {
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
        store.dispatch(UpdateGameStatus(GameStatusEnum.paused));
      }
    };
  }
}

ThunkAction<AppState> addPaintersToPieces(String name) {
  return (Store<AppState> store) async {
    final gameState = selectGameState(store);

    if (!gameState.loading) store.dispatch(ToogleLoading());

    final painters = await ImageDivider.imagePuzzle(
      name,
      gameState.game.puzzle.length,
    );
    store.dispatch(AddPainters(painters));
    store.dispatch(ToogleLoading());
  };
}
