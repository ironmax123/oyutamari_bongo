import 'dart:async';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oyutamaribondo/pages/sounds/logic/change_speed.dart';
import 'package:oyutamaribondo/view_model.dart';

class MockDevice {
  Timer? _timer; // タイマーの状態
  String lengthcm = "20cm"; // 初期値
  double len = 20.0; // モックデータの初期値
  final setting = SoundsSettings();

  // モックデータの接続シミュレーション
  void mockConnectToDevice(WidgetRef ref, mainPlayer) {
    // 既存のタイマーを停止
    _timer?.cancel();

    // 新規タイマーを開始
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      len += 1.5;
      setting.settings(
        len,
        mainPlayer,
      );

      lengthcm = "${len}cm";

      // Riverpod状態を更新
      ref.read(homePageVMProvider.notifier).updateFilldNum(len);
      if (len >= 100) {
        timer.cancel();
      }
    });
  }

  void stopMock() {
    _timer?.cancel();
  }
}
//TODO:mockから実際のラズパイのデータに変更
