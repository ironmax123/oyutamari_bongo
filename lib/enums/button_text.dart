import '../gen/assets.gen.dart';
import 'sound_button.dart';

extension SButtonTypeExt on SButtonType {
  String get buttonText {
    switch (this) {
      case SButtonType.sound1:
        return 'おんせい１';
      case SButtonType.sound2:
        return 'おんせい２';
    }
  }

  String get soundPath {
    switch (this) {
      case SButtonType.sound1:
        return Assets.sounds.se1;
      case SButtonType.sound2:
        return Assets.sounds.se2;
    }
  }
}
