import 'package:just_audio/just_audio.dart';
import '../../../enums/sections_text.dart';
import 'fill_bath.dart';

//import '../../enums/sound_sections.dart';
//import 'package:flutter/material.dart';

/// ボタンウィジェット
/*Widget buttonWidget(SButtonType buttonType, AudioPlayer audioPlayer) {
  return ElevatedButton(
    onPressed: () async {
      try {
        for (String path in buttonType.soundPaths) {
          final subPlayer = AudioPlayer();
          await subPlayer.setAsset(path);
          subPlayer.play();
        }
        await audioPlayer.setSpeed(buttonType.soundSpeed);
      } catch (e) {
        debugPrint('Error playing sound: $e');
      }
    },
    child: Text(buttonType.buttonText),
  );
}*/

class SoundsSettings {
  FillBath fillRatio = FillBath();
  Future<void> settings(double ratio, mainPlayer, subPlayer) async {
    final section = fillRatio.filled(ratio);
    await mainPlayer.setSpeed(section.soundSpeed);
    subPlayer = section.soundPaths.map((path) => AudioPlayer()).toList();
    await Future.wait(subPlayer.map((subPlayer) async {
      final index = subPlayer.indexOf(subPlayer);
      final path = section.soundPaths[index];
      await subPlayer.setAsset(path);
      await subPlayer.play();
      subPlayer.setLoopMode(LoopMode.one);
    }));
  }
}
