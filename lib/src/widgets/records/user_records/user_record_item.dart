import 'package:flutter/material.dart';
import 'package:v1/src/widgets/records/rank_text.dart';

import '../../../components/models/game_record.dart';
import '../../../components/sizes/break_point.dart';
import '../../../components/sizes/records/record_list_item_sizes.dart';
import '../../../utilities/helpers/time_stringify.dart';
import '../record_text.dart';

class UserRecordItem extends StatelessWidget {
  final int rank;
  final GameRecord record;
  final BuildContext ctx;

  const UserRecordItem({
    Key? key,
    required this.rank,
    required this.record,
    required this.ctx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(ctx).size.width;
    final breakPoint = BreakPoint(width).greatMD;
    final sizes = RecordListItemSizes.getRecordListItemSizes(width);

    final _rankText = RankText(
      rank: rank,
      fontSize: sizes.fontSize,
    );

    final _colChildren = <Widget>[
      RecordText(
        param: 'Time',
        value: TimeStringify.getTimeString(record.time),
        fontSize: sizes.fontSize,
        breakPoint: breakPoint,
      ),
      SizedBox(height: sizes.spacing),
      RecordText(
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
                _rankText,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _colChildren,
                )
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _rankText,
                SizedBox(height: sizes.spacing),
                ..._colChildren,
              ],
            ),
    );
  }
}
