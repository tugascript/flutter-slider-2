import 'package:flutter/material.dart';

import '../../../screens/home_screen.dart';
import '../../../screens/profile_screen.dart';
import '../arguments/profile_screen_arguments.dart';

class AppRouteInformationParser
    extends RouteInformationParser<List<RouteSettings>> {
  const AppRouteInformationParser() : super();

  @override
  Future<List<RouteSettings>> parseRouteInformation(
      RouteInformation routeInformation) {
    final uri = Uri.parse(routeInformation.location!);

    if (uri.pathSegments.isEmpty) {
      return Future.value([
        const RouteSettings(name: HomeScreen.routeName),
      ]);
    }

    final routeSettings = uri.pathSegments
        .map((pathSegment) => RouteSettings(
              name: '/$pathSegment',
              arguments: pathSegment == uri.pathSegments.last
                  ? uri.queryParameters
                  : null,
            ))
        .toList();

    return Future.value(routeSettings);
  }

  @override
  RouteInformation restoreRouteInformation(List<RouteSettings> configuration) {
    final location = configuration.last.name;
    final arguments = _restoreArguments(configuration.last);
    return RouteInformation(location: '$location$arguments');
  }

  String _restoreArguments(RouteSettings routeSettings) {
    final name = routeSettings.name!;
    final args = routeSettings.arguments;

    if (args is ProfileScreenArguments && name == ProfileScreen.routeName) {
      return '?username=${args.username}';
    }

    return '';
  }
}
