import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';
import 'package:v1/screens/profiles_screen.dart';

import '../../screens/game_screen.dart';
import '../../screens/home_screen.dart';
import '../../screens/image_editor_screen.dart';
import '../../screens/not_found_screen.dart';
import '../../screens/profile_screen.dart';
import '../components/models/enums/difficulty_enum.dart';
import '../redux/app_selectors.dart';
import '../redux/app_state.dart';
import 'arguments/game_screen_arguments.dart';
import 'arguments/image_editor_screen_arguments.dart';

class AppRouter {
  static final _routes = <GoRoute>[
    GoRoute(
      path: HomeScreen.routeName,
      builder: (_, state) => const HomeScreen(),
    ),
    GoRoute(
      path: GameScreen.routeName,
      builder: (_, state) {
        final args = state.extra;

        if (args is GameScreenArguments) {
          return GameScreen(
            newGame: args.newGame,
            level: args.level,
            difficulty: args.difficulty,
          );
        }

        return StoreConnector<AppState, _GameViewModel>(
          distinct: true,
          converter: (store) => _GameViewModel.fromStore(store),
          builder: (_, viewModel) => GameScreen(
            newGame: false,
            level: viewModel.level,
            difficulty: viewModel.difficulty,
          ),
        );
      },
    ),
    GoRoute(
      path: ProfileScreen.routeName,
      builder: (_, state) => ProfileScreen(username: state.params['username']!),
    ),
    GoRoute(
      path: ProfilesScreen.routeName,
      builder: (_, state) => const ProfilesScreen(),
    ),
    GoRoute(
      path: ImageEditorScreen.routeName,
      builder: (_, state) {
        final args = state.extra;

        if (args is ImageEditorScreenArguments) {
          return ImageEditorScreen(
            profilePicture: args.profilePicture,
          );
        }

        return const ImageEditorScreen(profilePicture: false);
      },
    ),
  ];

  static GoRouter get router => GoRouter(
        routes: _routes,
        initialLocation: HomeScreen.routeName,
        errorBuilder: (_, state) => const NotFoundScreen(),
      );
}

class _GameViewModel {
  final int level;
  final DifficultyEnum difficulty;

  _GameViewModel({
    required this.level,
    required this.difficulty,
  });

  factory _GameViewModel.fromStore(Store<AppState> store) {
    final gameState = selectGameState(store);

    return _GameViewModel(
      level: gameState.level,
      difficulty: gameState.difficulty.difficultyEnum,
    );
  }

  @override
  int get hashCode => level + difficulty.index;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
