import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../../components/models/enums/theme_enum.dart';
import '../../../redux/actions/game_actions.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import 'image_container.dart';

class ImageNumbers extends StatelessWidget {
  const ImageNumbers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ImageNumbersViewModel>(
      distinct: true,
      converter: (store) => _ImageNumbersViewModel.fromStore(store),
      builder: (_, viewModel) {
        final _theme = viewModel.theme == ThemeEnum.dark ? 'dark' : 'light';

        return ImageContainer(
          image: 'images/' + _theme + '_theme_numbers.jpg',
          network: false,
          onPressed: viewModel.hidePaint,
        );
      },
    );
  }
}

class _ImageNumbersViewModel {
  final ThemeEnum theme;
  final VoidCallback hidePaint;

  _ImageNumbersViewModel({
    required this.theme,
    required this.hidePaint,
  });

  factory _ImageNumbersViewModel.fromStore(Store<AppState> store) {
    return _ImageNumbersViewModel(
      theme: selectThemeState(store),
      hidePaint: () => store.dispatch(HidePaint()),
    );
  }

  @override
  int get hashCode => theme.index;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
