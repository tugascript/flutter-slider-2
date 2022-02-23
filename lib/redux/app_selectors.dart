import 'package:redux/redux.dart';

import '../models/enums/theme_enum.dart';
import '../models/game/game.dart';
import 'app_state.dart';
import 'states/game_state.dart';

GameState selectGameState(Store<AppState> store) => store.state.gameState;
Game selectNormalGameState(Store<AppState> store) => store.state.gameState.game;
ThemeEnum selectThemeState(Store<AppState> store) => store.state.themeState;
