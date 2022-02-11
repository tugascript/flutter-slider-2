import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:v1/models/base/piece.dart';

import '../../models/enums/game_status_enum.dart';
import '../../models/position.dart';
import '../../redux/actions/normal_game_actions.dart';
import '../../redux/app_selectors.dart';
import '../../redux/app_state.dart';

class PuzzlePiece extends StatefulWidget {
  final Piece piece;
  final Position position;
  final double size;
  final double radius;
  final double margin;
  final double fontSize;

  const PuzzlePiece({
    Key? key,
    required this.piece,
    required this.position,
    required this.size,
    required this.radius,
    required this.margin,
    required this.fontSize,
  }) : super(key: key);

  @override
  State<PuzzlePiece> createState() => _PuzzlePieceState();
}

class _PuzzlePieceState extends State<PuzzlePiece> {
  bool _entered = false;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColorDark;

    return StoreConnector<AppState, _PuzzlePieceViewModel>(
      distinct: true,
      converter: (store) => _PuzzlePieceViewModel.fromStore(
        store: store,
        piece: widget.piece,
      ),
      builder: (_, viewModel) {
        final isHover = _entered && viewModel.status == GameStatusEnum.ongoing;
        final margin = isHover ? widget.margin * 2.5 : widget.margin;
        final bgColor = isHover
            ? primaryColor.withOpacity(0.7)
            : viewModel.piece.painter != null &&
                    viewModel.status != GameStatusEnum.paused
                ? Colors.transparent
                : primaryColor;

        return SizedBox(
          height: widget.size,
          width: widget.size,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 275),
            child: !viewModel.piece.empty
                ? MouseRegion(
                    cursor: viewModel.status == GameStatusEnum.ongoing ||
                            viewModel.loading
                        ? SystemMouseCursors.click
                        : SystemMouseCursors.forbidden,
                    onEnter: (_) {
                      setState(() {
                        _entered = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        _entered = false;
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        if (!viewModel.piece.empty &&
                            viewModel.status == GameStatusEnum.ongoing) {
                          setState(() {
                            _entered = false;
                          });
                          viewModel.handleTap(widget.position);
                        }
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 225),
                        decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(widget.radius),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: widget.radius / 3,
                              blurRadius: widget.radius * 2,
                              offset: Offset(widget.radius,
                                  widget.radius), // changes position of shadow
                            )
                          ],
                        ),
                        margin: EdgeInsets.all(
                          margin,
                        ),
                        child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 250),
                          opacity:
                              viewModel.status == GameStatusEnum.paused ? 0 : 1,
                          child: viewModel.piece.painter != null
                              ? ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(widget.radius),
                                  child: CustomPaint(
                                    painter: viewModel.piece.painter,
                                    child: Container(),
                                  ),
                                )
                              : Center(
                                  child: Text(
                                    viewModel.hashCode.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: widget.fontSize,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        );
      },
    );
  }
}

class _PuzzlePieceViewModel {
  final GameStatusEnum status;
  final int length;
  final Piece piece;
  final Position next;
  final bool loading;
  final Function(Position pos) handleTap;

  _PuzzlePieceViewModel({
    required this.status,
    required this.length,
    required this.piece,
    required this.next,
    required this.loading,
    required this.handleTap,
  });

  factory _PuzzlePieceViewModel.fromStore({
    required Store<AppState> store,
    required Piece piece,
  }) {
    final gameState = selectGameState(store);
    final game = gameState.game;

    return _PuzzlePieceViewModel(
      status: game.status,
      next: game.next,
      length: game.puzzle.length,
      piece: piece,
      loading: gameState.loading,
      handleTap: (pos) => store.dispatch(MovePiece(pos)),
    );
  }

  @override
  int get hashCode => piece.position.column + 1 + length * piece.position.row;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
