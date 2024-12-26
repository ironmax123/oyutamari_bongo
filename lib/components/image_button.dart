import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final String? text;
  final bool isMini;

  const ImageButton({
    super.key,
    required this.imagePath,
    required this.onPressed,
    this.text,
    this.isMini = false,
    this.width = 100.0,
    this.height = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
            Center(
              child: Text(
                text ?? '',
                maxLines: 2,
                overflow: TextOverflow.visible,
                style: TextStyle(fontSize: isMini ? 16 : 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
