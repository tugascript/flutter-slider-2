import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/enums/game_status_enum.dart';
import '../../models/enums/theme_enum.dart';
import '../../models/game/piece.dart';
import '../../models/game/position.dart';
import '../../redux/actions/single_player_actions.dart';
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
        final _isHover = _entered && viewModel.status == GameStatusEnum.ongoing;
        late final Color _bgColor;
        late final Widget _child;

        if (viewModel.loading) {
          _bgColor = viewModel.theme == ThemeEnum.dark
              ? Colors.grey.shade300
              : Colors.grey.shade700;
        } else if (_isHover) {
          _bgColor = primaryColor.withOpacity(0.7);
        } else if (viewModel.piece.painter != null &&
            viewModel.status != GameStatusEnum.paused &&
            viewModel.showPaint) {
          _bgColor = Colors.transparent;
        } else {
          _bgColor = primaryColor;
        }

        if (viewModel.loading) {
          _child = const SizedBox.expand();
        } else if (viewModel.piece.painter != null && viewModel.showPaint) {
          _child = ClipRRect(
            borderRadius: BorderRadius.circular(widget.radius),
            child: CustomPaint(
              painter: viewModel.piece.painter,
              child: Container(),
            ),
          );
        } else {
          _child = Center(
            child: Text(
              viewModel.number.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: widget.fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }

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
                          color: _bgColor,
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
                          _isHover ? widget.margin * 2.5 : widget.margin,
                        ),
                        child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 250),
                          opacity:
                              viewModel.status == GameStatusEnum.paused ? 0 : 1,
                          child: _child,
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
  final ThemeEnum theme;
  final int length;
  final Piece piece;
  final Position next;
  final bool loading;
  final bool showPaint;
  final int number;
  final Function(Position pos) handleTap;

  _PuzzlePieceViewModel({
    required this.status,
    required this.theme,
    required this.length,
    required this.piece,
    required this.next,
    required this.loading,
    required this.showPaint,
    required this.number,
    required this.handleTap,
  });

  factory _PuzzlePieceViewModel.fromStore({
    required Store<AppState> store,
    required Piece piece,
  }) {
    final singlePlayerState = selectSinglePlayerState(store);
    final game = singlePlayerState.game;
    final len = game.puzzle.length;

    return _PuzzlePieceViewModel(
      theme: selectThemeState(store),
      status: game.status,
      next: game.next,
      length: len,
      piece: piece,
      loading: singlePlayerState.loading,
      showPaint: singlePlayerState.showPaint,
      number: piece.position.column + 1 + len * piece.position.row,
      handleTap: (pos) => store.dispatch(MovePiece(pos)),
    );
  }

  @override
  int get hashCode => number + (loading ? 1 : 0) + (showPaint ? 1 : 0);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
