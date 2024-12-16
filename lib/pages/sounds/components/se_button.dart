import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../logic/audio_map.dart';

Widget soundButtonWidget(AudioPlayer audioPlayer) {
  return Column(
    children: AudioMap.buttons.map((button) {
      return ElevatedButton(
        onPressed: () async {
          await audioPlayer.setAsset(button.soundPath);
          await audioPlayer.play();
        },
        child: Text(button.name),
      );
    }).toList(),
  );
}
