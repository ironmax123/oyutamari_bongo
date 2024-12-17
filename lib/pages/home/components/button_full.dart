import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';

class ButtonFull extends StatelessWidget {
  const ButtonFull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ImageButton(
              imagePath: 'assets/images/button2.png',
              width: 100,
              height: 50,
              onPressed: () {
                // ボタン7の処理
              },
            ),
            ImageButton(
              imagePath: 'assets/images/button2.png',
              width: 100,
              height: 50,
              onPressed: () {
                // ボタン7の処理
              },
            ),
          ],
        ),
        Row(
          children: [
            ImageButton(
              imagePath: 'assets/images/button2.png',
              width: 100,
              height: 50,
              onPressed: () {
                // ボタン7の処理
              },
            ),
            ImageButton(
              imagePath: 'assets/images/button2.png',
              width: 100,
              height: 50,
              onPressed: () {
                // ボタン7の処理
              },
            ),
          ],
        ),
      ],
    );
  }
}
