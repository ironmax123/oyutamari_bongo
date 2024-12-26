import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:oyutamaribondo/pages/sounds/logic/se_list.dart';
import 'package:oyutamaribondo/view_model.dart';

class ImageButton extends HookConsumerWidget {
  final String imagePath;
  final double width;
  final double height;
  final String? text;
  final bool isMini;
  final SE se;

  const ImageButton({
    super.key,
    required this.se,
    required this.imagePath,
    this.text,
    this.isMini = false,
    this.width = 100.0,
    this.height = 100.0,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sePlayer = useMemoized(() => AudioPlayer());

    return GestureDetector(
      onTap: () => ref.read(homePageVMProvider(sePlayer).notifier).playSe(se),
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
            Center(
              child: Text(
                text ?? '',
                maxLines: 2,
                overflow: TextOverflow.visible,
                style: TextStyle(fontSize: isMini ? 10 : 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
