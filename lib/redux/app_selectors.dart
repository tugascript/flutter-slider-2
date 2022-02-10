import 'package:redux/redux.dart';
import 'package:v1/models/normal_game.dart';

import './app_state.dart';
import './states/game_state.dart';
import '../models/enums/theme_enum.dart';

GameState selectGameState(Store<AppState> store) => store.state.gameState;
NormalGame selectNormalGameState(Store<AppState> store) =>
    store.state.gameState.game;
ThemeEnum selectThemeState(Store<AppState> store) => store.state.themeState;
