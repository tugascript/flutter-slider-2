import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/normal_game_screen.dart';
import '../screens/not_found_screen.dart';
import 'arguments/normal_game_screen.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case NormalGameScreen.routeName:
        if (args is NormalGameScreenArguments) {
          return MaterialPageRoute(
            builder: (_) => NormalGameScreen(
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
