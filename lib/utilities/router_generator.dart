import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/game_screen.dart';
import '../screens/not_found_screen.dart';
import 'arguments/game_screen_arguments.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case GameScreen.routeName:
        if (args is GameScreenArguments) {
          return MaterialPageRoute(
            builder: (_) => GameScreen(
              newGame: args.newGame,
              level: args.level,
              difficulty: args.difficulty,
            ),
          );
        }
        return MaterialPageRoute(builder: (_) => const NotFoundScreen());
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundScreen());
    }
  }
}
