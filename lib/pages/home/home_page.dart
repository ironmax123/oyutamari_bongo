import 'package:flutter/material.dart';
import 'package:oyutamaribondo/pages/home/components/button_circle.dart';
import 'package:oyutamaribondo/pages/home/components/button_components1.dart';
import 'package:oyutamaribondo/pages/home/components/button_components2.dart';
import 'package:oyutamaribondo/pages/home/components/button_updown.dart';
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
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Buttoncomponents1()),
                    Expanded(child: Buttoncomponents2()),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: ButtonCircle(),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ImageButton(
                          imagePath: 'assets/images/button8.png',
                          width: 100,
                          height: 100,
                          onPressed: () {
                            // ボタン8の処理
                          },
                        ),
                      ),
                      Expanded(child: ButtonUpdown()),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ImageButton(
                          imagePath: 'assets/images/button3.png',
                          width: 100,
                          height: 100,
                          onPressed: () {
                            // ボタン3の処理
                          },
                        ),
                      ),
                      Expanded(
                        child: ImageButton(
                          imagePath: 'assets/images/button4.png',
                          width: 100,
                          height: 100,
                          onPressed: () {
                            // ボタン4の処理
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
