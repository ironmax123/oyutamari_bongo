import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

Widget buttonWidget(Map<String, dynamic> mapData) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: mapData.entries.map<Widget>((entry) {
      // <Widget> 型を明示
      return ElevatedButton(
        onPressed: () async {
          try {
            final subPlayer = AudioPlayer();
            await subPlayer.setAsset(entry.value);
            subPlayer.play();
          } catch (e) {
            debugPrint('Error playing sound: $e');
          }
        },
        child: Text(entry.key), // ボタンには key を表示
      );
    }).toList(), // 明示的に List<Widget> に変換
  );
}
