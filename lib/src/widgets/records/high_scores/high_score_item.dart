import 'package:flutter/material.dart';

import '../../../components/models/game_record.dart';
import '../../../components/sizes/break_point.dart';
import '../../../components/sizes/records/record_list_item_sizes.dart';
import '../../../utilities/helpers/time_stringify.dart';
import 'high_score_text.dart';
import 'high_score_user_button.dart';

class HighScoreItem extends StatelessWidget {
  final int rank;
  final GameRecord record;
  final BuildContext ctx;

  const HighScoreItem({
    Key? key,
    required this.rank,
    required this.record,
    required this.ctx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(ctx).colorScheme;
    final width = MediaQuery.of(ctx).size.width;
    final breakPoint = BreakPoint(width).greatMD;
    final sizes = RecordListItemSizes.getRecordListItemSizes(width);
    final color = colorScheme.primary.value == 0xFF02569B
        ? colorScheme.primary
        : colorScheme.onPrimary;

    final user = record.user!;

    final _rowChildren = <Widget>[
      Text(
        rank.toString(),
        style: TextStyle(
          fontSize: sizes.fontSize * 2,
          fontWeight: FontWeight.bold,
        ),
      ),
      HighScoreUserButton(
        avatarSize: sizes.avatar,
        fontSize: sizes.fontSize,
        borderWidth: sizes.borderWidth,
        spacing: sizes.spacing / 2,
        color: color,
        user: user,
      )
    ];

    final _colChildren = <Widget>[
      HighScoreText(
        param: 'Time',
        value: TimeStringify.getTimeString(record.time),
        fontSize: sizes.fontSize,
        breakPoint: breakPoint,
      ),
      SizedBox(height: sizes.spacing),
      HighScoreText(
        param: 'Moves',
        value: record.moves.toString(),
        fontSize: sizes.fontSize,
        breakPoint: breakPoint,
      ),
    ];

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: sizes.spacing * 1.5,
      ),
      child: breakPoint
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ..._rowChildren,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _colChildren,
                )
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < _rowChildren.length; i++) ...[
                  _rowChildren[i],
                  SizedBox(height: sizes.spacing),
                ],
                ..._colChildren,
              ],
            ),
    );
  }
}
