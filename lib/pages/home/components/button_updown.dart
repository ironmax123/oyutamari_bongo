import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';
import 'package:oyutamaribondo/gen/assets.gen.dart';

class ButtonUpdown extends StatelessWidget {
  const ButtonUpdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ImageButton(
          imagePath: Assets.images.tempUp.path,
          width: 65,
          height: 65,
          onPressed: () {},
        ),
        const SizedBox(height: 16),
        ImageButton(
          imagePath: Assets.images.tempDown.path,
          width: 65,
          height: 65,
          onPressed: () {},
        ),
        ImageButton(
          imagePath: Assets.images.normalButton.path,
          width: 100,
          height: 60,
          text: 'ふつう',
          onPressed: () {},
        ),
        ImageButton(
          imagePath: Assets.images.normalButton.path,
          width: 100,
          height: 60,
          text: 'ふつう',
          onPressed: () {},
        ),
        ImageButton(
          imagePath: Assets.images.normalButton.path,
          width: 100,
          height: 60,
          text: 'ふつう',
          onPressed: () {},
        ),
      ],
    );
  }
}
