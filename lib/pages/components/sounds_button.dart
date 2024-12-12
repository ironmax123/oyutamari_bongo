import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../../enums/sound_button.dart';
import '../../enums/button_text.dart';

/// ボタンウィジェット
Widget buttonWidget(SButtonType buttonType, AudioPlayer audioPlayer2) {
  return ElevatedButton(
    onPressed: () async {
      try {
        for (String path in buttonType.soundPaths) {
          final audioPlayer = AudioPlayer();
          await audioPlayer.setAsset(path);
          audioPlayer.play();
        }
      } catch (e) {
        debugPrint('Error playing sound: $e');
      }
    },
    child: Text(buttonType.buttonText),
  );
}
