import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';

class ButtonCircle extends StatelessWidget {
  const ButtonCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double buttonSize = 80;
    return Column(
      children: [
        ImageButton(
          imagePath: 'assets/images/button3.png',
          width: buttonSize,
          height: buttonSize,
          onPressed: () {
            // ボタン3の処理
          },
        ),
        ImageButton(
          imagePath: 'assets/images/button3.png',
          width: buttonSize,
          height: buttonSize,
          onPressed: () {
            // ボタン3の処理
          },
        ),
        ImageButton(
          imagePath: 'assets/images/button3.png',
          width: buttonSize,
          height: buttonSize,
          onPressed: () {
            // ボタン3の処理
          },
        ),
        ImageButton(
          imagePath: 'assets/images/button3.png',
          width: buttonSize,
          height: buttonSize,
          onPressed: () {
            // ボタン3の処理
          },
        ),
      ],
    );
  }
}
