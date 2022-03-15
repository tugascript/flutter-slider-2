import 'package:flutter/material.dart';
import 'package:v1/src/utilities/router/app_transition_delegate.dart';

import '../../../screens/game_screen.dart';
import '../../../screens/home_screen.dart';
import '../../../screens/image_editor_screen.dart';
import '../../../screens/not_found_screen.dart';
import '../../../screens/profile_screen.dart';
import '../arguments/game_screen_arguments.dart';
import '../arguments/image_editor_screen_arguments.dart';
import '../arguments/profile_screen_arguments.dart';

class AppRouterDelegate extends RouterDelegate<List<RouteSettings>>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<List<RouteSettings>> {
  final _pages = <Page>[];

  @override
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();

  @override
  List<Page> get currentConfiguration => List.of(_pages);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: List.of(_pages),
      onPopPage: _onPopPage,
      transitionDelegate: const AppTransitionDelegate(),
    );
  }

  @override
  Future<bool> popRoute() {
    if (_pages.length > 1) {
      _pages.removeLast();
      notifyListeners();
      return Future.value(true);
    } else {
      return _confirmAppExit();
    }
  }

  @override
  Future<void> setNewRoutePath(List<RouteSettings> configuration) async {
    _setPath(
      configuration
          .map(
            (routeSettings) => _createPage(routeSettings),
          )
          .toList(),
    );

    return Future.value(null);
  }

  void pushPage({required String name, Object? arguments}) {
    _pages.add(_createPage(RouteSettings(name: name, arguments: arguments)));
    notifyListeners();
  }

  MaterialPage _createPage(RouteSettings routeSettings) {
    late final Widget child;
    final name = routeSettings.name!;
    final args = routeSettings.arguments;

    switch (name) {
      case HomeScreen.routeName:
        child = const HomeScreen();
        break;
      case GameScreen.routeName:
        if (args is GameScreenArguments) {
          child = GameScreen(
            newGame: args.newGame,
            level: args.level,
            difficulty: args.difficulty,
          );
        } else {
          child = const NotFoundScreen();
        }
        break;
      case ProfileScreen.routeName:
        if (args is ProfileScreenArguments) {
          child = ProfileScreen(username: args.username);
        } else {
          child = const NotFoundScreen();
        }
        break;
      case ImageEditorScreen.routeName:
        if (args is ImageEditorScreenArguments) {
          child = ImageEditorScreen(
            profilePicture: args.profilePicture,
          );
        } else {
          child = const NotFoundScreen();
        }
        break;
      default:
        child = const NotFoundScreen();
        break;
    }

    return MaterialPage(
      child: child,
      name: name,
      arguments: args,
    );
  }

  void _setPath(List<Page> pages) {
    _pages.clear();
    _pages.addAll(pages);

    if (_pages.first.name != HomeScreen.routeName) {
      _pages.insert(
        0,
        _createPage(
          const RouteSettings(name: HomeScreen.routeName),
        ),
      );
    }

    notifyListeners();
  }

  Future<bool> _confirmAppExit() {
    return showDialog<bool>(
        context: navigatorKey.currentContext!,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: const Text('Exit App'),
            content: const Text('Are you sure you want to exit the app?'),
            actions: [
              TextButton(
                child: const Text('Cancel'),
                onPressed: () => Navigator.pop(context, true),
              ),
              TextButton(
                child: const Text('Confirm'),
                onPressed: () => Navigator.pop(context, false),
              ),
            ],
          );
        }) as Future<bool>;
  }

  bool _onPopPage(Route route, dynamic result) {
    if (!route.didPop(result)) return false;
    popRoute();
    return true;
  }
}
