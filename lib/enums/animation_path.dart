enum AnimationPath {
  first,
  second,
  third,
  fourth,
}

extension AnimationPathExtension on AnimationPath {
  String get path {
    switch (this) {
      case AnimationPath.first:
        return 'assets/animation/first.riv';
      case AnimationPath.second:
        return 'assets/animation/second.riv';
      case AnimationPath.third:
        return 'assets/animation/third.riv';
      case AnimationPath.fourth:
        return 'assets/animation/fourth.riv';
    }
  }
}
