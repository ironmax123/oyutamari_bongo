import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:oyutamaribondo/pages/ble/ble_test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await AudioPlayer.clearAssetCache();
  } catch (e) {
    debugPrint('No cache to delete.');
    debugPrint("Error: $e");
  }

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'お湯たまりボンゴ',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'DotGothic',
        ),
        home: const LoadBlePage());
  }
}
