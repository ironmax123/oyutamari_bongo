import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';
import 'package:oyutamaribondo/gen/assets.gen.dart';
import 'package:oyutamaribondo/pages/sounds/logic/se_list.dart';

class ButtonOi extends StatelessWidget {
  const ButtonOi({
    required this.se1,
    required this.se2,
    super.key,
  });
  final SE se1;
  final SE se2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageButton(
          imagePath: Assets.images.miniButton.path,
          isMini: true,
          text: se1.displayName,
          se: se1,
          width: 120,
          height: 50,
        ),
        ImageButton(
          imagePath: Assets.images.miniButton.path,
          isMini: true,
          text: se2.displayName,
          se: se2,
          width: 120,
          height: 50,
        ),
      ],
    );
  }
}
