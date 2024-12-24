import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:just_audio/just_audio.dart';
import '../../gen/assets.gen.dart';
import 'components/se_button.dart';
import 'logic/play.dart';

class SoundsTest extends HookWidget {
  const SoundsTest({super.key});

  @override
  Widget build(BuildContext context) {
    final sePlayer = useMemoized(() => AudioPlayer());
    final playAudio = useMemoized(() => PlayAudio());
    final isPlaying = useState(false);
    final filldNum = useState(0.0); //ラズパイの送信された数値の変数
    useEffect(() {
      playAudio.setPath();
      return () => playAudio.dispose();
    }, [playAudio.player]);
    return Scaffold(
        appBar: AppBar(title: const Text('BGMテスト')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(isPlaying.value ? Icons.pause : Icons.play_arrow),
              onPressed: () async {
                isPlaying.value = !isPlaying.value;
                if (isPlaying.value) {
                  playAudio.play(
                    filldNum.value,
                  );
                } else {
                  playAudio.stop(
                    filldNum.value,
                  );
                }
              },
              iconSize: 128,
            ),
            //buttonWidget(mapData),
            const SizedBox(
              height: 16,
            ),
            soundButtonWidget(sePlayer),
            /*...SButtonType.values.map((buttonType) {
              return buttonWidget(buttonType, subPlayer);
            }).toList(),*/
          ],
        )));
  }
}
