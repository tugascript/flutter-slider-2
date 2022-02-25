import 'package:flutter/material.dart';
import '../../../utilities/sizes/timer_sizes.dart';

class ImageContainer extends StatefulWidget {
  final String? image;
  final VoidCallback onPressed;

  const ImageContainer({
    Key? key,
    required this.image,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  bool _entered = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sizes = TimerSizes.getTimerSizes(width);
    final onPrimary = Theme.of(context).colorScheme.onPrimary;
    // final spacing = _entered ? baseSpacing : baseSpacing / 2;
    late final double spacing;
    late final Color color;

    if (_entered) {
      spacing = sizes.spacing;
      color = onPrimary.withOpacity(0.5);
    } else {
      spacing = sizes.spacing / 2;
      color = onPrimary.withOpacity(0.3);
    }

    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _entered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _entered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 275),
        margin: EdgeInsets.all(spacing),
        decoration: BoxDecoration(
          image: widget.image != null
              ? DecorationImage(
                  image: AssetImage(widget.image!),
                  fit: BoxFit.contain,
                )
              : null,
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: Center(
          child: TextButton(
            onPressed: widget.onPressed,
            style: TextButton.styleFrom(
              backgroundColor: color,
              shape: const CircleBorder(),
            ),
            child: Icon(
              Icons.arrow_downward,
              size: sizes.fontSize * 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
