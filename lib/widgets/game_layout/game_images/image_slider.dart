import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:v1/utilities/sizes/break_point.dart';

import '../../../models/enums/theme_enum.dart';
import '../../../redux/actions/normal_game_actions.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../../../utilities/sizes/carousel_size.dart';
import 'image_container.dart';

class ImageSlider extends StatelessWidget {
  final Axis scrollDirection;
  final CarouselController buttonCarouselController = CarouselController();

  ImageSlider({
    Key? key,
    required this.scrollDirection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = CarouselSizes.getCarouselSizes(width);
    final breakPoint = BreakPoint(width).greatLG;

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
                  final carousel = CarouselSlider(
                    items: ['_theme_dart', '_theme_flutter', '_theme_icon'].map(
                      (picture) {
                        final image = 'images/' + theme + picture + '.jpg';
                        return ImageContainer(
                          image: image,
                          onPressed: () => viewModel.changePaint(image),
                        );
                      },
                    ).toList(),
                    options: CarouselOptions(
                      autoPlay: false,
                      enableInfiniteScroll: false,
                      enlargeCenterPage: true,
                      viewportFraction: 0.6,
                      scrollDirection: scrollDirection,
                      aspectRatio: 1.0,
                      initialPage: 0,
                    ),
                  );

                  return SizedBox(
                    width: sizes.carouselSize,
                    child: CarouselSlider(
                      items:
                          ['_theme_dart', '_theme_flutter', '_theme_icon'].map(
                        (picture) {
                          final image = 'images/' + theme + picture + '.jpg';
                          return ImageContainer(
                            image: image,
                            onPressed: () => viewModel.changePaint(image),
                          );
                        },
                      ).toList(),
                      options: CarouselOptions(
                        autoPlay: false,
                        enableInfiniteScroll: false,
                        enlargeCenterPage: true,
                        viewportFraction: 0.6,
                        scrollDirection: scrollDirection,
                        aspectRatio: 1.0,
                        initialPage: 0,
                      ),
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
  final void Function(String) changePaint;

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
