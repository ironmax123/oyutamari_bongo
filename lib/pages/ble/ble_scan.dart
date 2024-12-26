import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:just_audio/just_audio.dart';
import 'package:oyutamaribondo/pages/home/home_page.dart';

//import '../sounds/sound_rp.dart';
import '../../view_model.dart';
import '../sounds/logic/change_speed.dart';
import '../sounds/logic/play.dart';

class BleScanPage extends HookConsumerWidget {
  const BleScanPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // スキャン中の状態を管理
    final isScanning = useState(false);
    SoundsSettings setting = SoundsSettings();
    final mainPlayer = useMemoized(() => AudioPlayer());
    final playAudio = useMemoized(() => PlayAudio());

    // 接続されたデバイスと特性を管理
    final connectedDevice = useState<BluetoothDevice?>(null);
    final temperatureCharacteristic = useState<BluetoothCharacteristic?>(null);

    // 気温データの状態を管理
    final temperature = useState<String>("Waiting...");
    //mock

    // スキャンを開始する関数
    void startScan() {
      isScanning.value = true;
      FlutterBluePlus.startScan(timeout: const Duration(seconds: 5));
    }

    // BLEデバイスに接続
    void connectToDevice(BluetoothDevice device) async {
      await device.connect();
      connectedDevice.value = device;

      // サービスを探索して特性を取得
      List<BluetoothService> services = await device.discoverServices();
      for (var service in services) {
        for (var characteristic in service.characteristics) {
          if (characteristic.uuid.toString().toUpperCase() ==
              "6E400003-B5A3-F393-E0A9-E50E24DCCA9E") {
            temperatureCharacteristic.value = characteristic;

            // 通知を有効化し、データをリッスン
            await characteristic.setNotifyValue(true);
            characteristic.lastValueStream.listen((value) {
              final temp = String.fromCharCodes(value);
              temperature.value = "$temp°C";

              // ViewModelのfilldNumを更新
              double parsedTemp = double.tryParse(temp) ?? 0.0;
              ref.read(homePageVMProvider.notifier).updateFilldNum(parsedTemp);
            });
          }
        }
      }
    }

// filldNumを監視して設定を変更
    final filldNum = ref.watch(homePageVMProvider).when(
          data: (data) => data.filldNum,
          loading: () => 0.0,
          error: (err, stack) {
            debugPrint('エラー: $err');
            return 0.0;
          },
        );

// filldNumの変化に合わせて設定を更新
    useEffect(() {
      setting.settings(filldNum, mainPlayer);
      return null; // クリーンアップ不要
    }, [filldNum]);

    // スキャン結果をリッスン
    useEffect(() {
      final subscription = FlutterBluePlus.scanResults.listen((results) {
        for (var result in results) {
          if (result.device.platformName == "お湯溜りボンゴ") {
            FlutterBluePlus.stopScan();
            isScanning.value = false;
            connectToDevice(result.device);
            break;
          }
        }
      });
      playAudio.setPath(mainPlayer);
      return subscription.cancel;
    }, []);

    // 初回レンダリング時にスキャンを開始
    useEffect(() {
      startScan();
      return null; // クリーンアップ不要
    }, []);

    return Scaffold(
      body: Center(
        child: connectedDevice.value == null
            ? isScanning.value
                ? const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SpinKitDoubleBounce(
                        color: Colors.orange,
                        size: 150.0,
                      ),
                      SizedBox(height: 24),
                      Text("端末を探しています"),
                    ],
                  )
                : ElevatedButton(
                    onPressed: startScan,
                    child: const Text("Retry Scan"),
                  )
            : const HomePage(),
        /*Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Connected to: ${connectedDevice.value?.platformName}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Temperature: ${temperature.value}",
                    style: const TextStyle(fontSize: 32),
                  ),
                ],
              ), //TODO:Home画面に置き換え*/
      ),
    );
  }
}
