import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:oyutamaribondo/pages/sounds_test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AudioPlayer.clearAssetCache();
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
      home: const SoundsTest(),
    );
  }
}
