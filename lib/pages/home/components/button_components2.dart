import 'package:flutter/material.dart';
import 'package:oyutamaribondo/components/image_button.dart';
import 'package:oyutamaribondo/gen/assets.gen.dart';
import 'package:oyutamaribondo/pages/sounds/logic/se_list.dart';

class Buttoncomponents2 extends StatelessWidget {
  const Buttoncomponents2({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageButton(
          imagePath: Assets.images.lightButton.path,
          width: 100,
          height: 50,
          se: SE(seid: 'lightUp', displayName: ''),
          isConstant: true,
        ),
        Divider(
          color: Colors.grey[150],
          thickness: 3,
          height: 3,
        ),
        ImageButton(
          imagePath: Assets.images.fanButton.path,
          width: 100,
          height: 50,
          se: SE(seid: 'wind', displayName: ''),
          isConstant: true,
        ),
      ],
    );
  }
}
