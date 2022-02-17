import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:v1/redux/actions/normal_game_actions.dart';

import '../../../models/enums/theme_enum.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';

class ImageSlider extends StatelessWidget {
  final Axis scrollDirection;

  const ImageSlider({
    Key? key,
    required this.scrollDirection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Column(
          children: [
            StoreConnector<AppState, _ImageSliderViewModel>(
                distinct: true,
                converter: (store) => _ImageSliderViewModel.fromStore(store),
                builder: (_, viewModel) {
                  final theme =
                      viewModel.theme == ThemeEnum.dark ? 'dark' : 'light';

                  return CarouselSlider(
                    items: ['_theme_dart', '_theme_flutter', '_theme_icon'].map(
                      (picture) {
                        final image = 'images/' + theme + picture + '.jpg';
                        return GestureDetector(
                          onTap: () {
                            viewModel.changePaint(image);
                          },
                          child: Image.asset(image),
                        );
                      },
                    ).toList(),
                    options: CarouselOptions(
                      autoPlay: false,
                      enableInfiniteScroll: false,
                      enlargeCenterPage: true,
                      viewportFraction: 0.65,
                      scrollDirection: scrollDirection,
                      aspectRatio: 1.0,
                      initialPage: 1,
                    ),
                  );
                }),
          ],
        );
      },
    );
  }
}

class _ImageSliderViewModel {
  final ThemeEnum theme;
  final Function(String) changePaint;

  _ImageSliderViewModel(
    this.theme,
    this.changePaint,
  );

  factory _ImageSliderViewModel.fromStore(Store<AppState> store) {
    return _ImageSliderViewModel(
      selectThemeState(store),
      (String name) {
        store.dispatch(addPaintersToPieces(name));
      },
    );
  }

  @override
  int get hashCode => theme.index;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
