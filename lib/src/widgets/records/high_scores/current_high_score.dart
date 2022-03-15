import 'package:flutter/material.dart';

import '../../../components/models/game_record.dart';
import '../../../components/sizes/records/record_list_item_sizes.dart';
import '../../../utilities/helpers/time_stringify.dart';
import '../record_text.dart';

class CurrentHighScore extends StatelessWidget {
  final int rank;
  final GameRecord record;
  final BuildContext ctx;

  const CurrentHighScore({
    Key? key,
    required this.rank,
    required this.record,
    required this.ctx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(ctx).size.width;
    final sizes = RecordListItemSizes.getRecordListItemSizes(width);

    return Center(
      child: SizedBox(
        height: sizes.avatar * 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: sizes.spacing * 1.5,
            ),
            Text(
              'YOU',
              style: TextStyle(
                fontSize: sizes.fontSize * 1.5,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  rank.toString(),
                  style: TextStyle(
                    fontSize: sizes.fontSize * 1.25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RecordText(
                      param: 'Time',
                      value: TimeStringify.getTimeString(record.time),
                      fontSize: sizes.fontSize,
                      breakPoint: true,
                    ),
                    SizedBox(height: sizes.spacing),
                    RecordText(
                      param: 'Moves',
                      value: record.moves.toString(),
                      fontSize: sizes.fontSize,
                      breakPoint: true,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
