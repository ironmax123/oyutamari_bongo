import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:oyutamaribondo/compornents/animated_header.dart';
import 'package:oyutamaribondo/compornents/image_button.dart';
import 'package:oyutamaribondo/pages/sounds_test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await AudioPlayer.clearAssetCache();
  } catch (e) {
    debugPrint('No cache to delete.');
    debugPrint("Error: $e");
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'お湯たまりボンゴ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

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
