import 'package:flutter/material.dart';

import '../models/enums/difficulty_enum.dart';
import '../screens/home_screen.dart';
import '../screens/normal_game_screen.dart';
import '../screens/not_found_screen.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case NormalGameScreen.routeName:
        if (args is int) {
          return MaterialPageRoute(
            builder: (_) => NormalGameScreen(
              level: args,
              difficulty: DifficultyEnum.easy,
            ),
          );
        }
        return MaterialPageRoute(builder: (_) => const NotFoundScreen());
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundScreen());
    }
  }
}
