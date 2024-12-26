import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';
import 'package:oyutamaribondo/gen/assets.gen.dart';
import 'package:oyutamaribondo/pages/sounds/logic/se_list.dart';

class ButtonFull extends StatelessWidget {
  const ButtonFull({
    super.key,
    required this.se1,
    required this.se2,
    required this.se3,
    required this.se4,
  });
  final SE se1;
  final SE se2;
  final SE se3;
  final SE se4;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ImageButton(
              imagePath: Assets.images.roundButton.path,
              text: se1.displayName,
              width: 100,
              height: 50,
              se: se1,
            ),
            ImageButton(
              imagePath: Assets.images.roundButton.path,
              text: se2.displayName,
              se: se2,
              width: 100,
              height: 50,
            ),
          ],
        ),
        Row(
          children: [
            ImageButton(
              imagePath: Assets.images.roundButton.path,
              text: se3.displayName,
              se: se3,
              width: 100,
              height: 50,
            ),
            ImageButton(
              imagePath: Assets.images.roundButton.path,
              text: se4.displayName,
              se: se4,
              width: 100,
              height: 50,
            ),
          ],
        ),
      ],
    );
  }
}
