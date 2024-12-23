import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:just_audio/just_audio.dart';
import 'package:oyutamaribondo/pages/sounds/logic/rpData.dart';

import '../../gen/assets.gen.dart';
import 'package:oyutamaribondo/view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SoundsRp extends HookConsumerWidget {
  const SoundsRp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainPlayer = useMemoized(() => AudioPlayer());
    final device = useMemoized(() => MockDevice());
    final filldNum = ref.watch(homePageVMProvider).when(
          data: (data) => data.filldNum,
          loading: () => 0.0, // デフォルト値
          error: (err, stack) {
            debugPrint('エラー: $err');
            return 0.0; // エラー時のデフォルト値
          },
        );

    Future<void> setupSessionAndLoadAudio() async {
      try {
        final session = await AudioSession.instance;
        await session.configure(const AudioSessionConfiguration.speech());
        await mainPlayer.setAsset(Assets.sounds.audio);
        mainPlayer.play();
        mainPlayer.setLoopMode(LoopMode.one);
        debugPrint('音声ファイルロード完了');
      } catch (e) {
        debugPrint('Error: $e');
      }
    }

    useEffect(() {
      setupSessionAndLoadAudio();
      device.mockConnectToDevice(ref, mainPlayer);
      return () => device.stopMock();
    }, [mainPlayer]);

    return Scaffold(
      appBar: AppBar(title: const Text('RP連携')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '距離: $filldNum',
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
