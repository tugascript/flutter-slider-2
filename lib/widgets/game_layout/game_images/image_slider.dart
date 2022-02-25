import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:v1/utilities/sizes/break_point.dart';
import 'package:v1/widgets/game_layout/game_images/slider_button.dart';

import '../../../models/enums/theme_enum.dart';
import '../../../redux/actions/normal_game_actions.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../../../utilities/sizes/carousel_size.dart';
import 'image_container.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = CarouselSizes.getCarouselSizes(width);
    final breakPoint = BreakPoint(width).greatLG;

    return Column(
      children: [
        StoreConnector<AppState, _ImageSliderViewModel>(
            distinct: true,
            converter: (store) => _ImageSliderViewModel.fromStore(store),
            builder: (_, viewModel) {
              final _theme =
                  viewModel.theme == ThemeEnum.dark ? 'dark' : 'light';

              return SizedBox(
                width: sizes.carouselSize,
                child: Column(
                  children: [
                    SliderButton(
                      icon: Icons.arrow_upward,
                      buttonSize: sizes.carouselSize * 0.35,
                      iconSize: sizes.iconSize,
                      onPressed: () => carouselController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear,
                      ),
                    ),
                    CarouselSlider(
                      carouselController: carouselController,
                      items:
                          ['_theme_dart', '_theme_flutter', '_theme_icon'].map(
                        (picture) {
                          final image = 'images/' + _theme + picture + '.jpg';
                          return ImageContainer(
                            image: image,
                            onPressed: () => viewModel.changePaint(image),
                          );
                        },
                      ).toList(),
                      options: CarouselOptions(
                        autoPlay: false,
                        enableInfiniteScroll: true,
                        enlargeCenterPage: true,
                        viewportFraction: 0.6,
                        aspectRatio: 1.0,
                        initialPage: 0,
                        scrollDirection:
                            breakPoint ? Axis.vertical : Axis.horizontal,
                      ),
                    ),
                    SliderButton(
                      icon: Icons.arrow_downward,
                      iconSize: sizes.iconSize,
                      buttonSize: sizes.carouselSize * 0.35,
                      onPressed: () => carouselController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear,
                      ),
                    ),
                  ],
                ),
              );
            }),
      ],
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
