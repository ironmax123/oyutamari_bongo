import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';

class SoundsTest extends HookWidget {
  const SoundsTest({super.key});

  @override
  Widget build(BuildContext context) {
    final audioPlayer = useMemoized(() => AudioPlayer());
    final audioPlayer2 = useMemoized(() => AudioPlayer());
    final isPlaying = useState(false);

    Future<void> setupSessionAndLoadAudio() async {
      try {
        final session = await AudioSession.instance;
        await session.configure(const AudioSessionConfiguration.speech());
        await audioPlayer.setAsset('assets/sounds/audio.mp3');
        await audioPlayer2.setAsset('assets/sounds/se1.mp3');
        debugPrint('音声ファイルロード完了');
      } catch (e) {
        debugPrint('Error: $e');
      }
    }

    useEffect(() {
      setupSessionAndLoadAudio();
      return () => audioPlayer.dispose(); // コンポーネント破棄時に解放
    }, [audioPlayer]);
    final playSpeed = useState(1.0);
    return Scaffold(
        appBar: AppBar(title: const Text('BGMテスト')),
        body: Column(
          children: [
            IconButton(
              icon: Icon(isPlaying.value ? Icons.pause : Icons.play_arrow),
              onPressed: () async {
                if (isPlaying.value) {
                  await audioPlayer.pause();
                  await audioPlayer2.pause();
                } else {
                  await audioPlayer.play();
                  // 2秒後に別の音声を再生
                  Future.delayed(const Duration(seconds: 2), () async {
                    await audioPlayer2.play();
                    audioPlayer2.setLoopMode(LoopMode.one); // ループ再生設定
                  });
                  audioPlayer.setLoopMode(LoopMode.one); // ループ再生設定
                }
                isPlaying.value = !isPlaying.value;
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
                  audioPlayer2.setSpeed(playSpeed.value);
                },
                child: Text('×${playSpeed.value}'))
          ],
        ));
  }
}
