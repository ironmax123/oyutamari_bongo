enum AnimationPath {
  first('assets/animation/first.riv'),
  second('assets/animation/second.riv'),
  third('assets/animation/third.riv'),
  fourth('assets/animation/fourth.riv');

  const AnimationPath(this.path);

  final String path;
}
