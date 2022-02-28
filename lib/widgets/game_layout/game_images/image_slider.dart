import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';
import 'package:redux/redux.dart';
import 'package:v1/widgets/game_layout/game_images/image_adder.dart';

import '../../../models/enums/game_status_enum.dart';
import '../../../models/enums/theme_enum.dart';
import '../../../redux/actions/image_editor_actions.dart';
import '../../../redux/actions/single_player_actions.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../../../utilities/sizes/break_point.dart';
import '../../../utilities/sizes/carousel_size.dart';
import '../../../widgets/game_layout/game_images/slider_button.dart';
import 'image_container.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final CarouselController _carouselController = CarouselController();

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

              final _carouselSlider = CarouselSlider(
                carouselController: _carouselController,
                items: [
                  const ImageAdder(),
                  ...['_theme_dart', '_theme_flutter', '_theme_icon'].map(
                    (picture) {
                      final image = 'images/' + _theme + picture + '.jpg';
                      return ImageContainer(
                        image: image,
                        onPressed: () => viewModel.changePaint(image),
                      );
                    },
                  ),
                ],
                options: CarouselOptions(
                  autoPlay: false,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 1.0,
                  initialPage: 2,
                  scrollDirection: breakPoint ? Axis.vertical : Axis.horizontal,
                ),
              );
              return SizedBox(
                width: sizes.carouselSize,
                child: Column(
                  children: [
                    SliderButton(
                      icon: Icons.arrow_upward,
                      buttonSize: sizes.carouselSize / 2,
                      iconSize: sizes.iconSize,
                      onPressed: () => _carouselController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear,
                      ),
                    ),
                    _carouselSlider,
                    SliderButton(
                      icon: Icons.arrow_downward,
                      iconSize: sizes.iconSize,
                      buttonSize: sizes.carouselSize / 2,
                      onPressed: () => _carouselController.nextPage(
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

  _ImageSliderViewModel({
    required this.theme,
    required this.changePaint,
  });

  factory _ImageSliderViewModel.fromStore(Store<AppState> store) {
    return _ImageSliderViewModel(
      theme: selectThemeState(store),
      changePaint: (String name) {
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
