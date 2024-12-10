import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../../enums/sound_button.dart';
import '../../enums/button_text.dart';

/// ボタンウィジェット
Widget buttonWidget(SButtonType buttonType, AudioPlayer audioPlayer) {
  return ElevatedButton(
    onPressed: () async {
      try {
        // 音声ファイルを設定して再生
        await audioPlayer.setAsset(buttonType.soundPath);
        await audioPlayer.play();
      } catch (e) {
        debugPrint('Error playing sound: $e');
      }
    },
    child: Text(buttonType.buttonText),
  );
}
