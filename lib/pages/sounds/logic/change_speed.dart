import 'package:flutter/material.dart';

import '../../../enums/extension.dart';
import '../../../enums/sound_enum.dart';

class FillBath {
  Sections filled(double ratio) {
    if (ratio < 25) {
      return Sections.low;
    } else if (ratio >= 25 && ratio < 50) {
      return Sections.mid;
    } else if (ratio >= 50 && ratio < 75) {
      return Sections.high;
    } else if (ratio >= 75) {
      return Sections.above;
    } else {
      debugPrint('Invalid ratio value: $ratio');
      return Sections.low;
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
