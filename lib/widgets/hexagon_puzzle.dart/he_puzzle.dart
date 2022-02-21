import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/base/piece.dart';
import '../../models/base/position.dart';
import '../../models/enums/game_status_enum.dart';
import '../../models/hexagon_game/hexagon_next.dart';
import '../../models/hexagon_game/triangular_piece.dart';
import '../../redux/app_selectors.dart';
import '../../redux/app_state.dart';
import '../../utilities/sizes/puzzle_sizes.dart';
import 'he_puzzle_piece.dart';

class HePuzzle extends StatelessWidget {
  const HePuzzle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final puzzleSizes = PuzzleSizes.getPuzzleSizes(width);

    return StoreConnector<AppState, _HePuzzleViewModel>(
      distinct: true,
      converter: (store) => _HePuzzleViewModel.fromStore(store),
      builder: (_, viewModel) {
        final len = viewModel.puzzle.length;
        final halfLen = len / 2;
        final pieceSize = puzzleSizes.puzzleSize / halfLen;
        final stacks = <SizedBox>[];

        List<Row> stackRows = [];
        for (int i = 0; i < len; i++) {
          final row = viewModel.puzzle[i];
          final children = <HePuzzlePiece>[];

          for (int j = 0; j < row.length; j++) {
            children.add(
              HePuzzlePiece(
                piece: row[j] as TriangularPiece,
                position: Position(i, j),
                size: pieceSize,
                radius: puzzleSizes.pieceRadius,
                margin: puzzleSizes.pieceMargin,
                fontSize: puzzleSizes.pieceFontSize * 0.85,
              ),
            );
          }

          stackRows.add(
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: children,
            ),
          );

          if (i % 2 > 0) {
            final size = i < halfLen
                ? pieceSize * children.length
                : pieceSize * (children.length + 1);
            stacks.add(
              SizedBox(
                height: pieceSize - puzzleSizes.pieceMargin,
                width: size,
                child: Stack(
                  children: stackRows,
                ),
              ),
            );
            stackRows = [];
          }
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: stacks,
        );
      },
    );
  }
}

class _HePuzzleViewModel {
  final List<List<Piece>> puzzle;
  final HexagonNext next;
  final GameStatusEnum status;

  _HePuzzleViewModel({
    required this.puzzle,
    required this.next,
    required this.status,
  });

  factory _HePuzzleViewModel.fromStore(Store<AppState> store) {
    final game = selectNormalGameState(store);

    return _HePuzzleViewModel(
      puzzle: game.puzzle,
      next: game.next,
      status: game.status,
    );
  }

  @override
  int get hashCode =>
      (next.inverted.column +
              next.inverted.row +
              next.normal.column +
              next.inverted.row) *
          puzzle.length +
      status.index;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
