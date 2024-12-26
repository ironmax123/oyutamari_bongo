import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../enums/animation_path.dart'; // 変更箇所: AnimationPath をインポート

class AnimatedHeader extends StatefulWidget {
  final AnimationPath animationPath; // 変更箇所: AnimationPath をプロパティとして追加
  const AnimatedHeader({Key? key, required this.animationPath})
      : super(key: key);

  @override
  _AnimatedHeaderState createState() => _AnimatedHeaderState();
}

class _AnimatedHeaderState extends State<AnimatedHeader> {
  late RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SimpleAnimation('Timeline 1'); // 変更箇所: SimpleAnimation に変更
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
              widget.animationPath.path,
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
