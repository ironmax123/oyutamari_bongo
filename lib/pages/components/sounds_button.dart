import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../../enums/sound_button.dart';
import '../../enums/button_text.dart';

/// ボタンウィジェット
Widget buttonWidget(SButtonType buttonType, AudioPlayer audioPlayer) {
  return ElevatedButton(
    onPressed: () async {
      try {
        for (String path in buttonType.soundPaths) {
          final audioPlayer2 = AudioPlayer();
          await audioPlayer2.setAsset(path);
          audioPlayer2.play();
        }
        await audioPlayer.setSpeed(buttonType.soundSpeed);
      } catch (e) {
        debugPrint('Error playing sound: $e');
      }
    },
    child: Text(buttonType.buttonText),
  );
}
