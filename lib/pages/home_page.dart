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
                  imagePath: 'assets/images/button1.png',
                  onPressed: () {
                    // ボタン1の処理
                  },
                ),
                ImageButton(
                  imagePath: 'assets/images/button2.png',
                  onPressed: () {
                    // ボタン2の処理
                  },
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
