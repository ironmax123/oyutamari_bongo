import 'package:flutter/material.dart';
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
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                ImageButton(
                  imagePath: 'assets/images/button4.png',
                  width: 100,
                  height: 100,
                  onPressed: () {
                    // ボタン4の処理
                  },
                ),
                ImageButton(
                  imagePath: 'assets/images/button4.png',
                  width: 100,
                  height: 100,
                  onPressed: () {
                    // ボタン4の処理
                  },
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ImageButton(
                        imagePath: 'assets/images/button6.png',
                        width: 100,
                        height: 50,
                        onPressed: () {
                          // ボタン6の処理
                        },
                      ),
                      ImageButton(
                        imagePath: 'assets/images/button6.png',
                        width: 100,
                        height: 50,
                        onPressed: () {
                          // ボタン6の処理
                        },
                      ),
                    ],
                  ),
                ),
                ImageButton(
                  imagePath: 'assets/images/button8.png',
                  width: 100,
                  height: 100,
                  onPressed: () {
                    // ボタン1の処理
                  },
                ),

                SingleChildScrollView(
                  child: Column(
                    children: [
                      ImageButton(
                        imagePath: 'assets/images/button7.png',
                        width: 100,
                        height: 50,
                        onPressed: () {
                          // ボタン6の処理
                        },
                      ),
                      ImageButton(
                        imagePath: 'assets/images/button7.png',
                        width: 100,
                        height: 50,
                        onPressed: () {
                          // ボタン6の処理
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Expanded(
                    child: Column(
                      children: [
                        ImageButton(
                          imagePath: 'assets/images/button3.png',
                          width: 100,
                          height: 50,
                          onPressed: () {
                            // ボタン6の処理
                          },
                        ),
                        ImageButton(
                          imagePath: 'assets/images/button3.png',
                          width: 100,
                          height: 100,
                          onPressed: () {
                            // ボタン6の処理
                          },
                        ),
                        ImageButton(
                          imagePath: 'assets/images/button3.png',
                          width: 100,
                          height: 100,
                          onPressed: () {
                            // ボタン6の処理
                          },
                        ),
                        ImageButton(
                          imagePath: 'assets/images/button3.png',
                          width: 100,
                          height: 100,
                          onPressed: () {
                            // ボタン6の処理
                          },
                        ),
                        ImageButton(
                          imagePath: 'assets/images/button3.png',
                          width: 100,
                          height: 100,
                          onPressed: () {
                            // ボタン6の処理
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                ImageButton(
                  imagePath: 'assets/images/button5.png',
                  width: 100,
                  height: 100,
                  onPressed: () {
                    // ボタン2の処理
                  },
                ),

                SingleChildScrollView(
                  child: Column(
                    children: [
                      ImageButton(
                        imagePath: 'assets/images/button1.png',
                        width: 50,
                        height: 50,
                        onPressed: () {
                          // ボタン6の処理
                        },
                      ),
                      ImageButton(
                        imagePath: 'assets/images/button1.png',
                        width: 50,
                        height: 50,
                        onPressed: () {
                          // ボタン6の処理
                        },
                      ),
                    ],
                  ),
                ),
               
                // 他のボタンも同様に追加
              ],
            ),
          ),
        ],
      ),
    );
  }
}
