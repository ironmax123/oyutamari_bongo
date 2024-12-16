import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';

class ButtonOi extends StatelessWidget {
  const ButtonOi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageButton(
          imagePath: 'assets/images/button1.png',
          width: 50,
          height: 50,
          onPressed: () {
            // ボタン7の処理
          },
        ),
        ImageButton(
          imagePath: 'assets/images/button1.png',
          width: 50,
          height: 50,
          onPressed: () {
            // ボタン7の処理
          },
        ),
      ],
    );
  }
}
