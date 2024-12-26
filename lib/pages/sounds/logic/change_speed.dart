import 'package:flutter/material.dart';

import '../../../enums/extension.dart';
import '../../../enums/sound_enum.dart';

class FillBath {
  Sections filled(double ratio) {
    // 上限を50に制限
    ratio = ratio > 50 ? 50 : ratio;

    if (ratio == 0) {
      return Sections.low;
    } else if (ratio <= 15) {
      return Sections.above;
    } else if (ratio <= 30) {
      return Sections.high;
    } else if (ratio <= 40) {
      return Sections.mid;
    } else if (ratio <= 50) {
      return Sections.low;
    } else {
      debugPrint('Invalid ratio value: $ratio');
      return Sections.low; // デフォルト
    }
  }
}

class SoundsSettings {
  FillBath fillRatio = FillBath();
  Future<void> settings(double ratio, mainPlayer) async {
    final section = fillRatio.filled(ratio);
    await mainPlayer.setSpeed(section.soundSpeed);
  }
}
