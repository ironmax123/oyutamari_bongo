import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../enums/animation_path.dart'; // 変更箇所: AnimationPath をインポート

class AnimatedHeader extends StatefulWidget {
  const AnimatedHeader({Key? key}) : super(key: key);

  @override
  AnimatedHeaderState createState() => AnimatedHeaderState();
}

class AnimatedHeaderState extends State<AnimatedHeader> {
  late RiveAnimationController _controller;
  AnimationPath animationPath = AnimationPath.second;

  @override
  void initState() {
    super.initState();
    _controller = SimpleAnimation('Timeline 1'); // 変更箇所: SimpleAnimation に変更
  }

  void toggleAnimation() {
    setState(() {
      animationPath = animationPath == AnimationPath.second
          ? AnimationPath.third
          : AnimationPath.second;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Building AnimatedHeader widget');
    return Stack(
      children: [
        Container(
          height: 250,
          color: Colors.blue,
          child: Center(
            child: RiveAnimation.asset(
              animationPath.path,
              controllers: [_controller],
              fit: BoxFit.cover,
              onInit: (_) {
                debugPrint('Rive animation loaded');
              },
            ),
          ),
        ),
      ],
    );
  }
}
