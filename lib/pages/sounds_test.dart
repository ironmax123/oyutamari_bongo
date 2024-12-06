import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';

class SoundsTest extends HookWidget {
  const SoundsTest({super.key});

  @override
  Widget build(BuildContext context) {
    const text = 'スタート';
    final audioPlayer = useMemoized(() => AudioPlayer());

    Future<void> setupSessionAndLoadAudio() async {
      try {
        final session = await AudioSession.instance;
        await session.configure(const AudioSessionConfiguration.speech());
        await audioPlayer.setAsset('assets/sounds/audio.mp3');
        debugPrint('音声ファイルロード完了');
      } catch (e) {
        debugPrint('Error: $e');
      }
    }

    useEffect(() {
      setupSessionAndLoadAudio();
      return () => audioPlayer.dispose(); // コンポーネント破棄時に解放
    }, [audioPlayer]);

    return Scaffold(
      appBar: AppBar(title: const Text('BGMテスト')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              await audioPlayer.play();
              debugPrint('再生');
            } catch (e) {
              debugPrint('エラー: $e');
            }
          },
          child: const Text(text),
        ),
      ),
    );
  }
}
