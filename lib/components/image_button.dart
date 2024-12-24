import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const ImageButton({
    Key? key,
    required this.imagePath,
    required this.onPressed,
    this.width = 100.0,
    this.height = 100.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: onPressed,
        child: Image.asset(
          imagePath,
          width: width,
          height: height,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
