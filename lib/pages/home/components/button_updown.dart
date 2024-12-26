import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';

class ButtonUpdown extends StatelessWidget {
  const ButtonUpdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ImageButton(
          imagePath: 'assets/images/button7.png',
          width: 65,
          height: 65,
          onPressed: () {
            // ボタン7の処理
          },
        ),
        SizedBox(height: 10), // 変更箇所: 空白を追加

        ImageButton(
          imagePath: 'assets/images/button7.png',
          width: 65,
          height: 65,
          onPressed: () {
            // ボタン7の処理
          },
        ),
        ImageButton(
          imagePath: 'assets/images/button9.png',
          width: 100,
          height: 60,
          onPressed: () {
            // ボタン7の処理
          },
        ),
        ImageButton(
          imagePath: 'assets/images/button9.png',
          width: 100,
          height: 60,
          onPressed: () {
            // ボタン7の処理
          },
        ),
        ImageButton(
          imagePath: 'assets/images/button9.png',
          width: 100,
          height: 60,
          onPressed: () {
            // ボタン7の処理
          },
        ),
      ],
    );
  }
}