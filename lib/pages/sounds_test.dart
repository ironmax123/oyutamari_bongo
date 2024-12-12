import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';

//import '../enums/sound_sections.dart';
import '../gen/assets.gen.dart';
import 'components/sounds_settings.dart';

class SoundsTest extends HookWidget {
  const SoundsTest({super.key});

  @override
  Widget build(BuildContext context) {
    final audioPlayer = useMemoized(() => AudioPlayer());
    final audioPlayer2 = useMemoized(() => AudioPlayer());
    final setting = useMemoized(() => SoundsSettings());
    final isPlaying = useState(false);
    final filldNum = useState(80.0); //ラズパイの送信された数値の変数
    Future<void> setupSessionAndLoadAudio() async {
      try {
        final session = await AudioSession.instance;
        await session.configure(const AudioSessionConfiguration.speech());
        await audioPlayer.setAsset(Assets.sounds.audio);
        debugPrint('音声ファイルロード完了');
      } catch (e) {
        debugPrint('Error: $e');
      }
    }

    useEffect(() {
      setupSessionAndLoadAudio();
      return () => audioPlayer.dispose();
    }, [audioPlayer]);
    final playSpeed = useState(1.0);
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
                  audioPlayer.play();
                  setting.settings(filldNum.value, audioPlayer, audioPlayer2);
                  audioPlayer.setLoopMode(LoopMode.one);
                } else {}
              },
              iconSize: 128,
            ),
            ElevatedButton(
                onPressed: () {
                  playSpeed.value += 0.5;
                  if (playSpeed.value > 3) {
                    playSpeed.value = 1.0;
                  }
                  audioPlayer.setSpeed(playSpeed.value);
                },
                child: Text('×${playSpeed.value}')),
            const SizedBox(
              height: 16,
            ),
            /*...SButtonType.values.map((buttonType) {
              return buttonWidget(buttonType, audioPlayer);
            }).toList(),*/
          ],
        )));
  }
}
