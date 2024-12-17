import 'package:flutter/material.dart';
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
          const AnimatedHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Buttoncomponents1(),
                      SizedBox(
                        height: 100,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                          width: 20,
                        ),
                      ),
                      Buttoncomponents2(),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            ImageButton(
                              imagePath: 'assets/images/button8.png',
                              width: 150,
                              height: 150,
                              onPressed: () {
                                // ボタン8の処理
                              },
                            ),
                            Row(
                              children: [
                                ImageButton(
                                  imagePath: 'assets/images/button5.png',
                                  width: 150,
                                  height: 150,
                                  onPressed: () {
                                    // ボタン8の処理
                                  },
                                ),
                                ButtonOi(),
                              ],
                            ),
                            ButtonFull(),
                          ],
                        ),
                        Expanded(child: ButtonUpdown()),
                        ButtonCircle(),
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
