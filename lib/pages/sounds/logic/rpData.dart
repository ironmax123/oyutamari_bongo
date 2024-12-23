import 'dart:async';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oyutamaribondo/pages/sounds/logic/change_speed.dart';
import 'package:oyutamaribondo/view_model.dart';

class MockDevice {
  Timer? _timer; // タイマーの状態
  String len = "20cm"; // 初期値
  double mocklen = 20.0; // モックデータの初期値
  final setting = SoundsSettings();

  // モックデータの接続シミュレーション
  void mockConnectToDevice(WidgetRef ref, mainPlayer) {
    // 既存のタイマーを停止
    _timer?.cancel();

    // 新規タイマーを開始
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      mocklen += 1.5;
      setting.settings(
        mocklen,
        mainPlayer,
      );

      len = "${mocklen}cm";

      // Riverpod状態を更新
      ref.read(homePageVMProvider.notifier).updateFilldNum(mocklen);
      if (mocklen >= 100) {
        timer.cancel();
      }
    });
  }

  void stopMock() {
    _timer?.cancel();
  }
}
//TODO:mockから実際のラズパイのデータに変更
