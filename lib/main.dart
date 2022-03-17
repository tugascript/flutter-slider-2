import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:v1/src/utilities/app_router.dart';
import 'package:worker_manager/worker_manager.dart';

import 'src/components/models/enums/theme_enum.dart';
import 'src/redux/actions/auth_actions.dart';
import 'src/redux/app_reducer.dart';
import 'src/redux/app_selectors.dart';
import 'src/redux/app_state.dart';
import 'src/utilities/theme_generator.dart';

void main() async {
  final store = Store<AppState>(
    appReducer,
    initialState: AppState.getInitialState(),
    middleware: [thunkMiddleware],
  );
  await Executor().warmUp();
  setUrlStrategy(PathUrlStrategy());
  runApp(MyApp(
    store: store,
    router: AppRouter.router,
  ));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;
  final GoRouter router;

  const MyApp({
    Key? key,
    required this.store,
    required this.router,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: StoreConnector<AppState, _ThemeDataViewModel>(
        distinct: true,
        converter: (store) => _ThemeDataViewModel.fromStore(store),
        onInit: (store) => store.dispatch(refreshSession()),
        builder: (_, viewModel) => MaterialApp.router(
          title: 'Flutter Slidder',
          theme: ThemeGenerator(viewModel.theme).getTheme,
          routerDelegate: router.routerDelegate,
          routeInformationParser: router.routeInformationParser,
        ),
      ),
    );
  }
}

class _ThemeDataViewModel {
  final ThemeEnum theme;

  _ThemeDataViewModel(this.theme);

  factory _ThemeDataViewModel.fromStore(Store<AppState> store) {
    return _ThemeDataViewModel(selectThemeState(store));
  }

  @override
  int get hashCode => theme.index;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
