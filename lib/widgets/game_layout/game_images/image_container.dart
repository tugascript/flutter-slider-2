import 'package:flutter/material.dart';
import 'package:v1/utilities/sizes/spacing.dart';

class ImageContainer extends StatefulWidget {
  final String image;

  const ImageContainer({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  bool _entered = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final baseSpacing = LocalSpacing.getSpacing(width);
    final spacing = _entered ? baseSpacing : baseSpacing / 2;

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
        padding: EdgeInsets.all(spacing),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
