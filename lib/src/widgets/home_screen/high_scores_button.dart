import 'package:flutter/material.dart';

import '../../components/sizes/layout/home_screen_sizes.dart';
import '../records/high_scores/high_scores_widget.dart';

class HighScoresButton extends StatelessWidget {
  const HighScoresButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = HomeScreenSizes.getHomeScreenSizes(width);
    final colorScheme = Theme.of(context).colorScheme;
    final color = colorScheme.primary.value == 0xFF02569B
        ? colorScheme.primary
        : colorScheme.onPrimary;

    return SizedBox(
      width: sizes.buttonWidth,
      height: sizes.buttonHeight,
      child: OutlinedButton(
        onPressed: () => showDialog<String>(
          context: context,
          builder: (context) => HighScoresWidget(ctx: context),
        ),
        style: OutlinedButton.styleFrom(
          elevation: 0,
          side: BorderSide(
            width: sizes.borderWidth,
            color: color,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                sizes.borderRadius,
              ),
            ),
          ),
        ),
        child: Container(
          margin: EdgeInsets.fromLTRB(
            0,
            sizes.fontSize * 0.25,
            0,
            0,
          ),
          child: Text(
            'HIGH SCORES',
            style: TextStyle(
              fontSize: sizes.fontSize,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
