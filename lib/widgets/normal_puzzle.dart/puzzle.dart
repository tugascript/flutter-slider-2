import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './puzzle_piece.dart';
import '../../models/enums/game_status_enum.dart';
import '../../models/normal_piece.dart';
import '../../models/position.dart';
import '../../redux/app_selectors.dart';
import '../../redux/app_state.dart';
import '../../utilities/sizes/puzzle/piece_border_radius.dart';
import '../../utilities/sizes/puzzle/piece_font_size.dart';
import '../../utilities/sizes/puzzle/piece_margin.dart';
import '../../utilities/sizes/puzzle/puzzle_size.dart';

class Puzzle extends StatelessWidget {
  final int level;

  const Puzzle({
    Key? key,
    required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final puzzleSize = PuzzleSize.getPuzzleSize(width);
    final pieceRadius = PieceBorderRadius.getPieceBorderRadius(width);
    final pieceMargin = PieceMargin.getPieceMargin(width);
    final pieceFontSize = PieceFontSize.getPieceFontSize(width);

    return StoreConnector<AppState, _PuzzleViewModel>(
      distinct: true,
      converter: (store) => _PuzzleViewModel.fromStore(store),
      builder: (_, viewModel) {
        final len = viewModel.puzzle.length;
        final pieceSize = puzzleSize / len;

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
                      radius: pieceRadius,
                      margin: pieceMargin,
                      fontSize: pieceFontSize,
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
  final List<List<NormalPiece>> puzzle;
  final Position next;
  final GameStatusEnum status;

  _PuzzleViewModel({
    required this.puzzle,
    required this.next,
    required this.status,
  });

  factory _PuzzleViewModel.fromStore(Store<AppState> store) {
    final game = selectNormalGameState(store);

    return _PuzzleViewModel(
      puzzle: game.puzzle,
      next: game.next,
      status: game.status,
    );
  }

  @override
  int get hashCode => (next.column + next.row) * puzzle.length + status.index;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
