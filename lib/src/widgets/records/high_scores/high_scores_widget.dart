import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:v1/src/components/models/enums/theme_enum.dart';

import '../../../components/models/game_record.dart';
import '../../../components/models/user.dart';
import '../../../components/sizes/records/high_scores_sizes.dart';
import '../../../components/sizes/records/record_list_item_sizes.dart';
import '../../../redux/actions/high_scores_actions.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../level_select_field.dart';
import 'current_high_score.dart';
import 'high_score_item.dart';

class HighScoresWidget extends StatelessWidget {
  static const route = '/high-scores-modal';
  final BuildContext ctx;

  const HighScoresWidget({
    Key? key,
    required this.ctx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _HighScoresWidgetViewModel _viewModel;
    final _scrollController = ScrollController();

    final size = MediaQuery.of(ctx).size;
    final sizes = HighScoresSizes.getHighScoresSizes(size.width);
    final itemSizes = RecordListItemSizes.getRecordListItemSizes(size.width);
    final colorScheme = Theme.of(ctx).colorScheme;
    final isLightTheme = colorScheme.primary.value == 0xFF02569B;

    return StoreConnector<AppState, _HighScoresWidgetViewModel>(
      distinct: true,
      converter: (store) => _HighScoresWidgetViewModel.fromStore(store),
      onInit: (store) {
        final highScoreState = selectHighScoresState(store);
        _viewModel = _HighScoresWidgetViewModel.fromStore(store);

        if (highScoreState.records.isEmpty) {
          store.dispatch(loadHighScores(highScoreState.level));
        }

        _scrollController.addListener(() {
          final currentPos = _scrollController.position.pixels;
          final maxExtent = _scrollController.position.maxScrollExtent;

          if (currentPos >= maxExtent) {
            if (_viewModel.hasNextPage &&
                _viewModel.cursor != null &&
                !_viewModel.loading) {
              _viewModel.changeLevel(
                _viewModel.level,
                after: _viewModel.cursor,
              );
            }
          }
        });
      },
      onDispose: (_) {
        _scrollController.dispose();
      },
      onWillChange: (_, viewModel) {
        _viewModel = viewModel;
      },
      builder: (_, viewModel) {
        final _rank = viewModel.currentRank;
        final _record = viewModel.currentRecord;
        final _hasRank = _rank != null && _record != null;
        final _mainSize = size.height * 0.8;
        final _size = _mainSize - itemSizes.avatar * 3.5;

        return AlertDialog(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    'Level: ',
                    style: TextStyle(
                      fontSize: sizes.fontSize * 1.75,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: LevelSelectField(
                      maxLevel: viewModel.currentUser?.maxLevel ?? 0,
                      loading: viewModel.loading,
                      changeLevel: viewModel.changeLevel,
                      fontSize: sizes.fontSize,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _SubTitle(
                    text: '     Rank',
                    fontSize: sizes.fontSize,
                  ),
                  _SubTitle(
                    text: 'User',
                    fontSize: sizes.fontSize,
                  ),
                  _SubTitle(
                    text: 'Score     ',
                    fontSize: sizes.fontSize,
                  ),
                ],
              )
            ],
          ),
          content: SizedBox(
            width: sizes.width,
            height: _mainSize,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: itemSizes.borderWidth,
                        color: isLightTheme
                            ? colorScheme.onSurface
                            : colorScheme.onPrimary,
                      ),
                      borderRadius:
                          BorderRadius.circular(itemSizes.borderRadius),
                    ),
                    height: _size,
                    child: ListView.builder(
                      controller: _scrollController,
                      itemBuilder: (_, i) => HighScoreItem(
                        rank: i + 1,
                        record: viewModel.records[i],
                        ctx: ctx,
                      ),
                      itemCount: viewModel.records.length,
                    ),
                  ),
                  if (_hasRank)
                    CurrentHighScore(
                      rank: viewModel.currentRank!,
                      record: viewModel.currentRecord!,
                      ctx: ctx,
                    ),
                ],
              ),
            ),
          ),
          actions: [
            if (viewModel.loading)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [CircularProgressIndicator()],
              ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, route);
              },
              child: Text(
                'Close',
                style: TextStyle(
                  fontSize: sizes.fontSize,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _SubTitle extends StatelessWidget {
  final String text;
  final double fontSize;

  const _SubTitle({
    Key? key,
    required this.text,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize * 1.5,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class _HighScoresWidgetViewModel {
  final int level;
  final List<GameRecord> records;
  final bool hasNextPage;
  final bool loading;
  final String? cursor;
  final GameRecord? currentRecord;
  final int? currentRank;
  final User? currentUser;
  final void Function(int, {String? after}) changeLevel;

  _HighScoresWidgetViewModel({
    required this.level,
    required this.records,
    required this.hasNextPage,
    required this.loading,
    required this.cursor,
    required this.currentRecord,
    required this.currentRank,
    required this.currentUser,
    required this.changeLevel,
  });

  factory _HighScoresWidgetViewModel.fromStore(Store<AppState> store) {
    final highScoreState = selectHighScoresState(store);

    return _HighScoresWidgetViewModel(
      level: highScoreState.level,
      records: highScoreState.records,
      hasNextPage: highScoreState.hasNextPage,
      cursor: highScoreState.cursor,
      loading: highScoreState.loading,
      currentRecord: highScoreState.currentRecord,
      currentRank: highScoreState.currentRank,
      currentUser: selectAuthState(store).user,
      changeLevel: (level, {after}) => store.dispatch(
        loadHighScores(level, after: after),
      ),
    );
  }

  @override
  int get hashCode => (loading ? 1 : 0);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
