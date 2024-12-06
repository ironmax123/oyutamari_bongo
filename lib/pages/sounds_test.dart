import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:just_audio/just_audio.dart';
import 'package:flutter/services.dart';

class SoundsTest extends HookWidget {
  const SoundsTest({super.key});
  @override
  Widget build(BuildContext context) {
    const text = 'スタート';
    final audioPlayer = useMemoized(() => AudioPlayer());
    useEffect(() {
      Future<void> initAudio() async {
        try {
          final data = await rootBundle.load('assets/sounds/audio.mp3');
          debugPrint('Asset loaded: ${data.lengthInBytes} bytes');
        } catch (e) {
          debugPrint('Error loading asset: $e');
        }
      }

      initAudio();
      return () => audioPlayer.dispose();
    }, [audioPlayer]);

    return Scaffold(
      appBar: AppBar(title: const Text('BGMテスト')),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                await audioPlayer.play();
                debugPrint('aa');
              },
              child: const Text(text))
        ],
      ),
    );
  }
}
