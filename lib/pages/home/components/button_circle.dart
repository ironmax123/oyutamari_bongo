import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';
import 'package:oyutamaribondo/gen/assets.gen.dart';
import 'package:oyutamaribondo/pages/sounds/logic/se_list.dart';

class ButtonCircle extends StatelessWidget {
  const ButtonCircle({
    required this.se1,
    required this.se2,
    required this.se3,
    required this.se4,
    super.key,
  });
  final SE se1;
  final SE se2;
  final SE se3;
  final SE se4;

  @override
  Widget build(BuildContext context) {
    const double buttonSize = 80;
    return Column(
      children: [
        ImageButton(
          imagePath: Assets.images.circleRedButton.path,
          text: se1.displayName,
          width: buttonSize,
          height: buttonSize,
          se: se1,
        ),
        ImageButton(
          imagePath: Assets.images.circleGreen.path,
          text: se2.displayName,
          width: buttonSize,
          height: buttonSize,
          se: se2,
        ),
        ImageButton(
          imagePath: Assets.images.circlePink.path,
          text: se3.displayName,
          width: buttonSize,
          height: buttonSize,
          se: se3,
        ),
        ImageButton(
          imagePath: Assets.images.circleYellow.path,
          text: se4.displayName,
          width: buttonSize,
          height: buttonSize,
          se: se4,
        ),
      ],
    );
  }
}
