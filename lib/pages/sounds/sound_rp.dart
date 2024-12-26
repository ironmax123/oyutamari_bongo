import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:just_audio/just_audio.dart';
import 'package:oyutamaribondo/pages/sounds/logic/play.dart';
import 'package:oyutamaribondo/pages/sounds/logic/rpData.dart';
import 'package:oyutamaribondo/sectionVM.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SoundsRp extends HookConsumerWidget {
  const SoundsRp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final device = useMemoized(() => MockDevice());
    final mainPlayer = useMemoized(() => AudioPlayer());
    final playAudio = useMemoized(() => PlayAudio());
    final filldNum = ref.watch(sectionPageVMProvider).when(
          data: (data) => data.filldNum,
          loading: () => 0.0, // デフォルト値
          error: (err, stack) {
            debugPrint('エラー: $err');
            return 0.0; // エラー時のデフォルト値
          },
        );

    useEffect(() {
      playAudio.setPath(mainPlayer);
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
