import 'dart:async';

import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:v1/models/enums/game_type_enum.dart';
import 'package:v1/utilities/helpers/image_divider.dart';

import '../../models/enums/difficulty_enum.dart';
import '../../models/enums/game_status_enum.dart';
import '../../models/base/position.dart';
import '../../redux/app_selectors.dart';
import '../app_state.dart';

class NewGame {
  final GameTypeEnum gameTypeEnum;
  final int level;
  final DifficultyEnum difficultyEnum;

  const NewGame(
    this.gameTypeEnum,
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

class ToogleLoading {}

class UpdateGameStatus {
  final GameStatusEnum status;

  const UpdateGameStatus(this.status);
}

class AddPainters {
  final String paint;
  final List<List<DividerPainter>> painters;

  const AddPainters(this.paint, this.painters);
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
        store.dispatch(const UpdateGameStatus(GameStatusEnum.paused));
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
    store.dispatch(AddPainters(name, painters));
    store.dispatch(ToogleLoading());
  };
}
