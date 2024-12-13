import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';
import '/pages/sounds/logic/audio_map.dart';
import '../../gen/assets.gen.dart';
import 'components/se_button.dart';
import 'logic/change_speed.dart';

class SoundsTest extends HookWidget {
  const SoundsTest({super.key});

  @override
  Widget build(BuildContext context) {
    final mainPlayer = useMemoized(() => AudioPlayer());
    //final subPlayer = useMemoized(() => AudioPlayer());
    final audioMap = useMemoized(() => AudioMap());
    final mapData = useMemoized(() => audioMap.getidPath());
    final setting = useMemoized(() => SoundsSettings());
    final isPlaying = useState(false);
    final filldNum = useState(0.0); //ラズパイの送信された数値の変数
    Future<void> setupSessionAndLoadAudio() async {
      try {
        final session = await AudioSession.instance;
        await session.configure(const AudioSessionConfiguration.speech());
        await mainPlayer.setAsset(Assets.sounds.audio);
        debugPrint('音声ファイルロード完了');
      } catch (e) {
        debugPrint('Error: $e');
      }
    }

    useEffect(() {
      setupSessionAndLoadAudio();
      return () => mainPlayer.dispose();
    }, [mainPlayer]);
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
                  mainPlayer.play();
                  setting.settings(
                    filldNum.value,
                    mainPlayer,
                  );
                  mainPlayer.setLoopMode(LoopMode.one);
                } else {
                  await mainPlayer.pause();
                  setting.settings(
                    filldNum.value,
                    mainPlayer,
                  );
                }
              },
              iconSize: 128,
            ),
            buttonWidget(mapData),
            const SizedBox(
              height: 16,
            ),
            /*...SButtonType.values.map((buttonType) {
              return buttonWidget(buttonType, subPlayer);
            }).toList(),*/
          ],
        )));
  }
}
