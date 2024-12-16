import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';

class Buttoncomponents1 extends StatelessWidget {
  const Buttoncomponents1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageButton(
          imagePath: 'assets/images/button4.png',
          width: 100,
          height: 100,
          onPressed: () {
            // ボタン4の処理
          },
        ),
        ImageButton(
          imagePath: 'assets/images/button4.png',
          width: 100,
          height: 100,
          onPressed: () {
            // ボタン4の処理
          },
        ),
      ],
    );
  }
}
