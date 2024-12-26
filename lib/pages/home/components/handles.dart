import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';
import 'package:oyutamaribondo/gen/assets.gen.dart';

class Handles extends StatelessWidget {
  const Handles({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        ImageButton(
          imagePath: Assets.images.handleRed.path,
          width: 100,
          height: 100,
          onPressed: () {},
        ),
        const SizedBox(width: 16),
        ImageButton(
          imagePath: Assets.images.handleBlue.path,
          width: 100,
          height: 100,
          onPressed: () {
            // ボタン4の処理
          },
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
