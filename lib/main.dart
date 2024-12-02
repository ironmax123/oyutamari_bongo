import 'package:flutter/material.dart';
import 'package:oyutamaribondo/pages/sounds_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // デバッグバナーを非表示にする
      title: 'お湯たまりボンゴ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SoundsTest(), // アプリのホームページを指定
    );
  }
}
