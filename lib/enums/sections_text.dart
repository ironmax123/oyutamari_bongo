import '../gen/assets.gen.dart';
import 'sound_sections.dart';

extension SectionsExt on Sections {
  String get buttonText {
    switch (this) {
      case Sections.low:
        return 'low';
      case Sections.mid:
        return 'mid';
      case Sections.high:
        return 'high';
      case Sections.above:
        return 'above';
    }
  }

  List<String> get soundPaths {
    switch (this) {
      case Sections.low:
        return [Assets.sounds.se1];
      case Sections.mid:
        return [Assets.sounds.se1, Assets.sounds.se2];
      case Sections.high:
        return [Assets.sounds.se1, Assets.sounds.se2, Assets.sounds.se3];
      case Sections.above:
        return [
          Assets.sounds.se1,
          Assets.sounds.se2,
          Assets.sounds.se3,
          Assets.sounds.se4,
        ];
    }
  }

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
