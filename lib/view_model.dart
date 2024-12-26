import 'dart:math';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '/state.dart';
import 'package:just_audio/just_audio.dart';
import 'package:oyutamaribondo/pages/sounds/logic/se_list.dart';
part 'view_model.g.dart';

@riverpod
class HomePageVM extends _$HomePageVM {
  @override
  Future<HomePageState> build(AudioPlayer audioPlayer) async {
    final random = Random();
    final randomOptions = List<SE>.from(SEList.seOptions)..shuffle(random);
    final selectedOptions = randomOptions.take(13).toList();

    return HomePageState(seList: selectedOptions);
  }

  Future<void> playSe(SE se) async {
    try {
      final path = SEList.getPathBySeId(se.seid);
      print('Resolved path: $path');

      if (path == null) {
        return;
      }

      // AudioPlayerにファイルを設定
      await audioPlayer.setAsset(path);
      await audioPlayer.play();
      print('Playback started for SE: ${se.displayName}');
    } catch (e, stackTrace) {
      print('Error while playing SE: ${se.displayName}');
      print('Exception: $e');
      print('StackTrace: $stackTrace');
    }
  }
}
