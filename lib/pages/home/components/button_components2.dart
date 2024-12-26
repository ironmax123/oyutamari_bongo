import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';
import 'package:oyutamaribondo/gen/assets.gen.dart';

class Buttoncomponents2 extends StatelessWidget {
  const Buttoncomponents2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageButton(
          imagePath: Assets.images.lightButton.path,
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
          imagePath: Assets.images.fanButton.path,
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
