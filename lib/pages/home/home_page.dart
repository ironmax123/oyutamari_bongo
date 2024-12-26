import 'package:flutter/material.dart';
import 'package:oyutamaribondo/pages/home/components/button_components1.dart';
import 'package:oyutamaribondo/pages/home/components/button_components2.dart';
import 'package:oyutamaribondo/pages/home/components/button_full.dart';
import 'package:oyutamaribondo/pages/home/components/button_oi.dart';
import 'package:oyutamaribondo/pages/home/components/button_updown.dart';
import 'package:oyutamaribondo/pages/home/components/button_circle.dart';
import 'package:oyutamaribondo/components/animated_header.dart';
import 'package:oyutamaribondo/components/image_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _keyAnimatedHeaderWidget = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(20.0), // 変更箇所: AppBarの高さを指定
        child: AppBar(
          title: const Text('お湯たまりボンゴ'),
        ),
      ),
      body: Column(
        children: [
          AnimatedHeader(key: _keyAnimatedHeaderWidget),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Divider(
                    color: Colors.grey[150],
                    thickness: 3,
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Buttoncomponents1(),
                      SizedBox(
                        height: 100,
                        child: VerticalDivider(
                          color: Colors.grey[150],
                          thickness: 3,
                          width: 10,
                        ),
                      ),
                      const Expanded(
                        child: Buttoncomponents2(),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[150],
                    thickness: 3,
                    height: 5,
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 16),
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
                          const SizedBox(width: 16),
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
                              const SizedBox(width: 16),
                              const ButtonOi(),
                            ],
                          ),
                          const SizedBox(width: 16),
                          const ButtonFull(),
                          const SizedBox(width: 16),
                        ],
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: ButtonUpdown(),
                      ),
                      const SizedBox(width: 6),
                      const ButtonCircle(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/danger_image.png',
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'フッターのテキスト' * 100,
                            maxLines: 2,
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
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
