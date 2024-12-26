import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';
import 'package:oyutamaribondo/gen/assets.gen.dart';

class ButtonCircle extends StatelessWidget {
  const ButtonCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double buttonSize = 80;
    return Column(
      children: [
        ImageButton(
          imagePath: Assets.images.circleRedButton.path,
          text: 'マル',
          width: buttonSize,
          height: buttonSize,
          onPressed: () {
            // ボタン3の処理
          },
        ),
        ImageButton(
          imagePath: Assets.images.circleGreen.path,
          text: 'マル',
          width: buttonSize,
          height: buttonSize,
          onPressed: () {
            // ボタン3の処理
          },
        ),
        ImageButton(
          imagePath: Assets.images.circlePink.path,
          text: 'マル',
          width: buttonSize,
          height: buttonSize,
          onPressed: () {
            // ボタン3の処理
          },
        ),
        ImageButton(
          imagePath: Assets.images.circleYellow.path,
          text: 'マル',
          width: buttonSize,
          height: buttonSize,
          onPressed: () {
            // ボタン3の処理
          },
        ),
      ],
    );
  }
}
