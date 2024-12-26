import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';

class Buttoncomponents2 extends StatelessWidget {
  const Buttoncomponents2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageButton(
          imagePath: 'assets/images/button6.png',
          width: 100,
          height: 50,
          onPressed: () {
            // ボタン6の処理
          },
        ),
        Divider(
          color: Colors.grey[150],
          thickness: 3,
          height: 3,
        ),
        ImageButton(
          imagePath: 'assets/images/button6.png',
          width: 100,
          height: 50,
          onPressed: () {
            // ボタン6の処理
          },
        ),
      ],
    );
  }
}
