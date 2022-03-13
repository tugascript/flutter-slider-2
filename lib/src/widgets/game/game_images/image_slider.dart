import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../../components/models/enums/theme_enum.dart';
import '../../../components/sizes/break_point.dart';
import '../../../components/sizes/game/carousel_sizes.dart';
import '../../../redux/actions/game_actions.dart';
import '../../../redux/actions/server_images_actions.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../../../redux/states/server_images_state.dart';
import 'image_adder.dart';
import 'image_container.dart';
import 'image_numbers.dart';
import 'slider_button.dart';

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
            onInit: (store) => store.dispatch(loadImagesAction(null)),
            converter: (store) => _ImageSliderViewModel.fromStore(store),
            builder: (_, viewModel) {
              final _theme =
                  viewModel.theme == ThemeEnum.dark ? 'dark' : 'light';

              final _carouselSlider = CarouselSlider(
                carouselController: _carouselController,
                items: [
                  const ImageAdder(),
                  const ImageNumbers(),
                  ...['_theme_dart', '_theme_flutter', '_theme_icon'].map(
                    (picture) {
                      final image = 'images/' + _theme + picture + '.jpg';
                      return ImageContainer(
                        image: image,
                        network: false,
                        onPressed: () => viewModel.changePaint(image, false),
                      );
                    },
                  ),
                  ...viewModel.images.images.map((img) {
                    return ImageContainer(
                      image: img.url,
                      network: true,
                      onPressed: () => viewModel.changePaint(img.url, true),
                    );
                  })
                ],
                options: CarouselOptions(
                  autoPlay: false,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 1.0,
                  initialPage: 3,
                  scrollDirection: breakPoint ? Axis.vertical : Axis.horizontal,
                ),
              );

              final _children = [
                SliderButton(
                  icon: breakPoint
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_left,
                  breakPoint: breakPoint,
                  buttonSize: sizes.carouselSize / 2,
                  iconSize: sizes.iconSize,
                  onPressed: () => _carouselController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear,
                  ),
                ),
                SizedBox(
                  width: sizes.carouselSize,
                  child: _carouselSlider,
                ),
                SliderButton(
                  icon: breakPoint
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_right,
                  breakPoint: breakPoint,
                  iconSize: sizes.iconSize,
                  buttonSize: sizes.carouselSize / 2,
                  onPressed: () => _carouselController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear,
                  ),
                ),
              ];

              return breakPoint
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: _children,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: _children,
                    );
            }),
      ],
    );
  }
}

class _ImageSliderViewModel {
  final ThemeEnum theme;
  final ServerImagesState images;
  final void Function(String, bool) changePaint;

  _ImageSliderViewModel({
    required this.theme,
    required this.images,
    required this.changePaint,
  });

  factory _ImageSliderViewModel.fromStore(Store<AppState> store) {
    return _ImageSliderViewModel(
      theme: selectThemeState(store),
      images: selectServerImagesState(store),
      changePaint: (String name, bool network) {
        store.dispatch(addPaintersToPieces(name, network));
      },
    );
  }

  @override
  int get hashCode => theme.index + (images.loading ? 1 : 0);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
