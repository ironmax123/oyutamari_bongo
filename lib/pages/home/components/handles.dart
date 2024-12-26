import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';
import 'package:oyutamaribondo/gen/assets.gen.dart';
import 'package:oyutamaribondo/pages/sounds/logic/se_list.dart';

class Handles extends StatelessWidget {
  const Handles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        ImageButton(
          imagePath: Assets.images.handleRed.path,
          isConstant: true,
          se: SE(seid: 'scratch1', displayName: ''),
          width: 100,
          height: 100,
        ),
        const SizedBox(width: 16),
        ImageButton(
          imagePath: Assets.images.handleBlue.path,
          se: SE(seid: 'scratch2', displayName: ''),
          isConstant: true,
          width: 100,
          height: 100,
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
