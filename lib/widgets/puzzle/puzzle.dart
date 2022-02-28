import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/enums/game_status_enum.dart';
import '../../models/game/piece.dart';
import '../../models/game/position.dart';
import '../../redux/app_selectors.dart';
import '../../redux/app_state.dart';
import '../../utilities/sizes/puzzle_sizes.dart';
import 'puzzle_piece.dart';

class Puzzle extends StatelessWidget {
  const Puzzle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final puzzleSizes = PuzzleSizes.getPuzzleSizes(width);

    return StoreConnector<AppState, _PuzzleViewModel>(
      distinct: true,
      converter: (store) => _PuzzleViewModel.fromStore(store),
      builder: (_, viewModel) {
        final len = viewModel.puzzle.length;
        final pieceSize = puzzleSizes.puzzleSize / len;

        return Column(
          children: [
            for (int i = 0; i < len; i++)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int j = 0; j < len; j++)
                    PuzzlePiece(
                      piece: viewModel.puzzle[i][j],
                      position: Position(i, j),
                      size: pieceSize,
                      radius: puzzleSizes.pieceRadius,
                      margin: puzzleSizes.pieceMargin,
                      fontSize: puzzleSizes.pieceFontSize,
                    ),
                ],
              )
          ],
        );
      },
    );
  }
}

class _PuzzleViewModel {
  final List<List<Piece>> puzzle;
  final Position next;
  final GameStatusEnum status;
  final int imageHash;

  _PuzzleViewModel({
    required this.puzzle,
    required this.next,
    required this.status,
    required this.imageHash,
  });

  factory _PuzzleViewModel.fromStore(Store<AppState> store) {
    final game = selectSingleGameState(store);

    return _PuzzleViewModel(
      puzzle: game.puzzle,
      next: game.next,
      status: game.status,
      imageHash: game.image?.hashCode ?? 0,
    );
  }

  @override
  int get hashCode =>
      (next.column + next.row) * puzzle.length + status.index + imageHash;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
