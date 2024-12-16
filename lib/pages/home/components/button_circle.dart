import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';

class ButtonCircle extends StatelessWidget {
  const ButtonCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageButton(
          imagePath: 'assets/images/button3.png',
          width: 100,
          height: 50,
          onPressed: () {
            // ボタン3の処理
          },
        ),
        ImageButton(
          imagePath: 'assets/images/button3.png',
          width: 100,
          height: 100,
          onPressed: () {
            // ボタン3の処理
          },
        ),
        ImageButton(
          imagePath: 'assets/images/button3.png',
          width: 100,
          height: 100,
          onPressed: () {
            // ボタン3の処理
          },
        ),
        ImageButton(
          imagePath: 'assets/images/button3.png',
          width: 100,
          height: 100,
          onPressed: () {
            // ボタン3の処理
          },
        ),
        ImageButton(
          imagePath: 'assets/images/button3.png',
          width: 100,
          height: 100,
          onPressed: () {
            // ボタン3の処理
          },
        ),
      ],
    );
  }
}
