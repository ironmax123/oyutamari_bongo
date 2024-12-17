import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';

class ButtonUpdown extends StatelessWidget {
  const ButtonUpdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ImageButton(
          imagePath: 'assets/images/button7.png',
          width: 50,
          height: 50,
          onPressed: () {
            // ボタン7の処理
          },
        ),
        ImageButton(
          imagePath: 'assets/images/button7.png',
          width: 50,
          height: 50,
          onPressed: () {
            // ボタン7の処理
          },
        ),
        ImageButton(
          imagePath: 'assets/images/button9.png',
          width: 100,
          height: 50,
          onPressed: () {
            // ボタン7の処理
          },
        ),
        ImageButton(
          imagePath: 'assets/images/button9.png',
          width: 100,
          height: 50,
          onPressed: () {
            // ボタン7の処理
          },
        ),
        ImageButton(
          imagePath: 'assets/images/button9.png',
          width: 100,
          height: 50,
          onPressed: () {
            // ボタン7の処理
          },
        ),
      ],
    );
  }
}
