import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../../models/game_record.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../../../utilities/helpers/time_stringify.dart';
import '../../../utilities/sizes/puzzle/timer_font_size.dart';

class GameRecords extends StatelessWidget {
  const GameRecords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final fontSize = TimerFontSize.getTimerFontSize(width);

    return StoreConnector<AppState, _GameRecordsScreenView>(
      distinct: true,
      converter: (store) => _GameRecordsScreenView.fromStore(store),
      builder: (_, viewModel) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _getModelsList(viewModel.records, fontSize),
      ),
    );
  }
}

List<Row> _getModelsList(Map<int, GameRecord> records, double fontSize) {
  final rows = <Row>[];

  for (int i = 1; i <= records.length; i++) {
    final record = records[i]!;

    rows.add(Row(
      children: [
        _RecordTitle(fontSize: fontSize, text: 'Level: '),
        _RecordValue(fontSize: fontSize, value: i),
        _RecordTitle(fontSize: fontSize, text: 'Moves: '),
        _RecordValue(fontSize: fontSize, value: record.moves),
        _RecordTitle(fontSize: fontSize, text: 'Time: '),
        Text(
          TimeStringify.getTimeString(record.time),
          style: TextStyle(
            fontSize: fontSize * 0.5,
          ),
        )
      ],
    ));
  }

  return rows;
}

class _RecordTitle extends StatelessWidget {
  final double fontSize;
  final String text;

  const _RecordTitle({
    Key? key,
    required this.fontSize,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize * 0.5,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _RecordValue extends StatelessWidget {
  final double fontSize;
  final int value;

  const _RecordValue({
    Key? key,
    required this.fontSize,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value.toString() + ';',
      style: TextStyle(
        fontSize: fontSize * 0.5,
      ),
    );
  }
}

class _GameRecordsScreenView {
  final Map<int, GameRecord> records;

  _GameRecordsScreenView(this.records);

  factory _GameRecordsScreenView.fromStore(Store<AppState> store) {
    return _GameRecordsScreenView(selectGameState(store).records);
  }

  @override
  int get hashCode => records.length;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
