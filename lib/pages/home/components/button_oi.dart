import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';
import 'package:oyutamaribondo/gen/assets.gen.dart';

class ButtonOi extends StatelessWidget {
  const ButtonOi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageButton(
          imagePath: Assets.images.miniButton.path,
          text: 'ミニ',
          width: 50,
          height: 50,
          onPressed: () {},
        ),
        ImageButton(
          imagePath: Assets.images.miniButton.path,
          text: 'ミニ',
          width: 50,
          height: 50,
          onPressed: () {},
        ),
      ],
    );
  }
}
