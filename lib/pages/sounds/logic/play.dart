import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'change_speed.dart';

class PlayAudio {
  AudioPlayer player = AudioPlayer();
  SoundsSettings setting = SoundsSettings();
  Future<void> setupSessionAndLoadAudio(path) async {
    try {
      final session = await AudioSession.instance;
      await session.configure(const AudioSessionConfiguration.speech());
      await player.setAsset(path);
      debugPrint('音声ファイルロード完了');
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  void play(filldNum) {
    player.play();
    setting.settings(filldNum, player);
    player.setLoopMode(LoopMode.one);
  }

  void stop(filldNum) {
    player.pause();
    setting.settings(filldNum, player);
  }

  void dispose() {
    player.dispose();
  }
}
