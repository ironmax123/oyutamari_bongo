import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';
import 'package:oyutamaribondo/gen/assets.gen.dart';

class ButtonFull extends StatelessWidget {
  const ButtonFull({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ImageButton(
              imagePath: Assets.images.roundButton.path,
              text: 'サークル',
              width: 100,
              height: 50,
              onPressed: () {},
            ),
            ImageButton(
              imagePath: Assets.images.roundButton.path,
              text: 'サークル',
              width: 100,
              height: 50,
              onPressed: () {},
            ),
          ],
        ),
        Row(
          children: [
            ImageButton(
              imagePath: Assets.images.roundButton.path,
              text: 'サークル',
              width: 100,
              height: 50,
              onPressed: () {},
            ),
            ImageButton(
              imagePath: Assets.images.roundButton.path,
              text: 'サークル',
              width: 100,
              height: 50,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
