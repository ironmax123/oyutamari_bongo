import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:oyutamaribondo/gen/assets.gen.dart';
import 'change_speed.dart';
import 'dart:math';

class PlayAudio {
  AudioPlayer player = AudioPlayer();
  SoundsSettings setting = SoundsSettings();
  final random = Random();
  void setPath() {
    final List<String> bgmList = Assets.bgm.values.toList();
    final path = bgmList[random.nextInt(bgmList.length)];
    setupSessionAndLoadAudio(path);
  }

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
