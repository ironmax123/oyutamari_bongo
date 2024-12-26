import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';
import 'package:oyutamaribondo/gen/assets.gen.dart';
import 'package:oyutamaribondo/pages/sounds/logic/se_list.dart';

class ButtonUpdown extends StatelessWidget {
  const ButtonUpdown({
    required this.se1,
    required this.se2,
    required this.se3,
    super.key,
  });
  final SE se1;
  final SE se2;
  final SE se3;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ImageButton(
          imagePath: Assets.images.tempUp.path,
          width: 65,
          height: 65,
          se: SE(seid: 'age', displayName: 'age'),
          isConstant: true,
        ),
        const SizedBox(height: 16),
        ImageButton(
          imagePath: Assets.images.tempDown.path,
          width: 65,
          height: 65,
          se: SE(seid: 'sage', displayName: 'sage'),
          isConstant: true,
        ),
        ImageButton(
          imagePath: Assets.images.normalButton.path,
          width: 100,
          height: 60,
          text: se1.displayName,
          se: se1,
        ),
        ImageButton(
          imagePath: Assets.images.normalButton.path,
          width: 100,
          height: 60,
          text: se2.displayName,
          se: se2,
        ),
        ImageButton(
          imagePath: Assets.images.normalButton.path,
          width: 100,
          height: 60,
          text: se3.displayName,
          se: se3,
        ),
      ],
    );
  }
}
