import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:oyutamaribondo/gen/assets.gen.dart';
import 'change_speed.dart';
import 'dart:math';

class PlayAudio {
  SoundsSettings setting = SoundsSettings();
  final random = Random();
  void setPath(player) {
    final List<String> bgmList = Assets.bgm.values.toList();
    final path = bgmList[random.nextInt(bgmList.length)];
    setupSessionAndLoadAudio(path, player);
  }

  Future<void> setupSessionAndLoadAudio(path, player) async {
    try {
      final session = await AudioSession.instance;
      await session.configure(const AudioSessionConfiguration.speech());
      await player.setAsset(path);
      debugPrint('音声ファイルロード完了');
      player.play();
      player.setLoopMode(LoopMode.one);
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  void stop(filldNum, player) {
    player.pause();
    setting.settings(filldNum, player);
  }

  void dispose(player) {
    player.dispose();
  }
}
