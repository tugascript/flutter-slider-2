import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './game_info_button.dart';
import './game_info_column.dart';
import './game_lost_info.dart';
import '../../../models/enums/game_status_enum.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';

class GameInfo extends StatelessWidget {
  const GameInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget? _changeWidget;

    return StoreConnector<AppState, _GameInfoScreenView>(
      distinct: true,
      converter: (store) => _GameInfoScreenView.fromStore(store),
      onInit: (store) {
        _changeWidget = const GameInfoButton();
      },
      builder: (_, viewModel) {
        switch (viewModel.status) {
          case GameStatusEnum.ongoing:
          case GameStatusEnum.paused:
            _changeWidget = const InfoColumn();
            break;
          case GameStatusEnum.lost:
            _changeWidget = const LostInfo();
            break;
          case GameStatusEnum.starting:
          case GameStatusEnum.completed:
          default:
            _changeWidget = const GameInfoButton();
            break;
        }

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: _changeWidget!,
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: animation,
            child: child,
          ),
        );
      },
    );
  }
}

class _GameInfoScreenView {
  final GameStatusEnum status;

  _GameInfoScreenView(this.status);

  factory _GameInfoScreenView.fromStore(Store<AppState> store) {
    final game = selectSingleGameState(store);

    return _GameInfoScreenView(game.status);
  }

  @override
  int get hashCode => status.index;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
