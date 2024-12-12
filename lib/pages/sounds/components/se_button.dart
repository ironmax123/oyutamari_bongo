import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import '/enums/sections_text.dart';

import '/enums/sound_sections.dart';

/// ボタンウィジェット
Widget buttonWidget(SButtonType buttonType, AudioPlayer audioPlayer) {
  return ElevatedButton(
    onPressed: () async {
      try {
        final subPlayer = AudioPlayer();
        await subPlayer.setAsset(buttonType.soundPaths);
        subPlayer.play();
      } catch (e) {
        debugPrint('Error playing sound: $e');
      }
    },
    child: Text(buttonType.buttonText),
  );
}
