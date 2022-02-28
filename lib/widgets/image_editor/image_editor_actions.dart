import 'package:flutter/material.dart';
import 'package:v1/widgets/image_editor/close_editor_button.dart';

import '../../utilities/sizes/image_editor_action_sizes.dart';

class ImageEditorActions extends StatelessWidget {
  const ImageEditorActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = ImgEditorActSizes.getImgEditorActSizes(width);
    final colorScheme = Theme.of(context).colorScheme;
    final isLightTheme = colorScheme.primary.value == 0xFF02569B;

    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: [
        CloseEditorButton(
          width: sizes.width,
          height: sizes.height,
          borderRadius: sizes.borderRadius,
          iconSize: sizes.iconSize,
          borderWidth: sizes.borderWidth,
          mainColor: isLightTheme ? colorScheme.primary : colorScheme.onPrimary,
        ),
        SizedBox(
          width: sizes.spacing,
        ),
        SizedBox(
          width: sizes.width,
          height: sizes.height,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    sizes.borderRadius,
                  ),
                ),
              ),
              primary: isLightTheme ? null : colorScheme.onPrimary,
              onPrimary: isLightTheme ? null : colorScheme.primary,
            ),
            child: Icon(
              Icons.done_rounded,
              size: sizes.iconSize,
            ),
          ),
        ),
      ],
    );
  }
}
