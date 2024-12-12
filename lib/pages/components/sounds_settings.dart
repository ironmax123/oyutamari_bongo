//import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

//import '../../enums/sound_sections.dart';
import '../../enums/sections_text.dart';
import './fill_bath.dart';

/// ボタンウィジェット
/*Widget buttonWidget(SButtonType buttonType, AudioPlayer audioPlayer) {
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
}*/

class SoundsSettings {
  FillBath fillRatio = FillBath();
  Future<void> settings(double ratio, audioPlayer, audioPlayer2) async {
    final section = fillRatio.filled(ratio);
    await audioPlayer.setSpeed(section.soundSpeed);
    final audioPlayers =
        section.soundPaths.map((path) => AudioPlayer()).toList();
    await Future.wait(audioPlayers.map((audioPlayer2) async {
      final index = audioPlayers.indexOf(audioPlayer2);
      final path = section.soundPaths[index];
      await audioPlayer2.setAsset(path);
      await audioPlayer2.play();
      audioPlayer2.setLoopMode(LoopMode.one);
    }));
  }
}
