import 'package:flutter/material.dart';
import 'package:oyutamaribondo/enums/animation_path.dart';
import 'package:oyutamaribondo/pages/home/components/button_components1.dart';
import 'package:oyutamaribondo/pages/home/components/button_components2.dart';
import 'package:oyutamaribondo/pages/home/components/button_full.dart';
import 'package:oyutamaribondo/pages/home/components/button_oi.dart';
import 'package:oyutamaribondo/pages/home/components/button_updown.dart';
import 'package:oyutamaribondo/pages/home/components/button_circle.dart';
import 'package:oyutamaribondo/components/animated_header.dart';
import 'package:oyutamaribondo/components/image_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お湯たまりボンゴ'),
      ),
      body: Column(
        children: [
          const AnimatedHeader(
            animationPath: AnimationPath.first,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Divider(
                    color: Colors.grey,
                    thickness: 5,
                    height: 5,
                  ),
                  Row(
                    children: [
                      Buttoncomponents1(),
                      SizedBox(
                        height: 100,
                        child: VerticalDivider(
                          color: Colors.grey,
                          thickness: 5,
                          width: 10,
                        ),
                      ),
                      Expanded(
                        child: Buttoncomponents2(),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 5,
                    height: 5,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            ImageButton(
                              imagePath: 'assets/images/button8.png',
                              width: 200,
                              height: 110,
                              onPressed: () {
                                // ボタン8の処理
                              },
                            ),
                            Row(
                              children: [
                                ImageButton(
                                  imagePath: 'assets/images/button5.png',
                                  width: 100,
                                  height: 100,
                                  onPressed: () {
                                    // ボタン8の処理
                                  },
                                ),
                                SizedBox(width: 10), // 変更箇所: 空白を追加
                                ButtonOi(),
                              ],
                            ),
                            ButtonFull(),
                          ],
                        ),
                        Expanded(
                          child: ButtonUpdown(),
                        ),
                        ButtonCircle(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/danger_image.png',
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          'フッターのテキスト',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
