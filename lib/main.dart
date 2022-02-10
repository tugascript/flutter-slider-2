import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../models/enums/theme_enum.dart';
import '../redux/app_reducer.dart';
import '../redux/app_selectors.dart';
import '../redux/app_state.dart';
import '../utilities/router_generator.dart';
import '../utilities/theme_generator.dart';

void main() {
  final store = Store<AppState>(
    appReducer,
    initialState: AppState.getInitialState(),
    middleware: [thunkMiddleware],
  );

  runApp(MyApp(
    store: store,
  ));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  const MyApp({
    Key? key,
    required this.store,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: StoreConnector<AppState, _ThemeDataViewModel>(
        distinct: true,
        converter: (store) => _ThemeDataViewModel.fromStore(store),
        builder: (_, viewModel) => MaterialApp(
          title: 'Flutter Shuffle',
          theme: ThemeGenerator(viewModel.theme).getTheme(),
          initialRoute: '/',
          onGenerateRoute: RouterGenerator.generateRoute,
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
