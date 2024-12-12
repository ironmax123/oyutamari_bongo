import '../gen/assets.gen.dart';
import 'sound_enum.dart';

extension SectionsType on Sections {
  double get soundSpeed {
    switch (this) {
      case Sections.low:
        return 1;
      case Sections.mid:
        return 1.5;
      case Sections.high:
        return 2;
      case Sections.above:
        return 3;
    }
  }
}

extension SButtonText on SButtonType {
  String get buttonText {
    switch (this) {
      case SButtonType.se1:
        return 'se1';
      case SButtonType.se2:
        return 'se2';
      case SButtonType.se3:
        return 'se3';
      case SButtonType.se4:
        return 'se4';
    }
  }

  String get soundPaths {
    switch (this) {
      case SButtonType.se1:
        return Assets.sounds.se1;
      case SButtonType.se2:
        return Assets.sounds.se2;
      case SButtonType.se3:
        return Assets.sounds.se3;
      case SButtonType.se4:
        return Assets.sounds.se4;
    }
  }
}
