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
