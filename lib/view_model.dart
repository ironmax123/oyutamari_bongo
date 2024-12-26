import 'dart:math';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:oyutamaribondo/pages/sounds/logic/se_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:oyutamaribondo/state.dart';

part 'view_model.g.dart';

@riverpod
class HomePageVM extends _$HomePageVM {
  @override
  Future<HomePageState> build(AudioPlayer audioPlayer) async {
    final random = Random();
    final randomOptions = List<SE>.from(SEList.seOptions)..shuffle(random);
    final selectedOptions = randomOptions.take(13).toList();

    return HomePageState(seList: selectedOptions);
  }

  Future<void> playSe(SE se, {bool isConstant = false}) async {
    try {
      final path = isConstant
          ? SEList.getConstPathBySeId(se.seid)
          : SEList.getPathBySeId(se.seid);

      if (path == null) {
        return;
      }

      await audioPlayer.setAsset(path);
      await audioPlayer.play();
    } catch (e, stackTrace) {
      debugPrint('Error while playing SE: ${se.displayName}');
      debugPrint('Exception: $e');
      debugPrint('StackTrace: $stackTrace');
    }
  }
}
