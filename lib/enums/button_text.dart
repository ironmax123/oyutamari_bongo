import '../gen/assets.gen.dart';
import 'sound_button.dart';

extension SButtonTypeExt on SButtonType {
  String get buttonText {
    switch (this) {
      case SButtonType.low:
        return 'low';
      case SButtonType.mid:
        return 'mid';
      case SButtonType.high:
        return 'high';
      case SButtonType.above:
        return 'above';
    }
  }

  List<String> get soundPaths {
    switch (this) {
      case SButtonType.low:
        return [Assets.sounds.se1];
      case SButtonType.mid:
        return [Assets.sounds.se1, Assets.sounds.se2];
      case SButtonType.high:
        return [Assets.sounds.se1, Assets.sounds.se2, Assets.sounds.se3];
      case SButtonType.above:
        return [
          Assets.sounds.se1,
          Assets.sounds.se2,
          Assets.sounds.se3,
          Assets.sounds.se4,
        ];
    }
  }
}
