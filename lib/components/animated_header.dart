import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oyutamaribondo/pages/sounds/logic/change_speed.dart';
import 'package:oyutamaribondo/view_model.dart';
import 'package:rive/rive.dart';
import '../enums/animation_path.dart'; // 変更箇所: AnimationPath をインポート

class AnimatedHeader extends HookConsumerWidget {
  const AnimatedHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // アニメーションコントローラとパスを状態管理
    final controller = useMemoized(() => SimpleAnimation('Timeline 1'));
    SoundsSettings setting = SoundsSettings();
    final paths = useState<String>(AnimationPath.first.path);

    final filldNum = ref.watch(homePageVMProvider).when(
          data: (data) => data.filldNum,
          loading: () => 0.0,
          error: (err, stack) {
            debugPrint('エラー: $err');
            return 0.0;
          },
        );

    useEffect(() {
      Future<void> updatePath() async {
        paths.value = (await setting.setPath(filldNum));
        debugPrint('path:${paths.value}');
      }

      updatePath(); // 非同期関数を呼び出し
      return null; // クリーンアップ不要
    }, [filldNum]); // 依存関係を設定
    // アニメーションパス切り替え関数
    /*void toggleAnimation() {
      animationPath.value = animationPath.value == AnimationPath.second
          ? AnimationPath.third
          : AnimationPath.second;
    }*/

    debugPrint('Building AnimatedHeader widget');

    return Stack(
      children: [
        Container(
          height: 300,
          color: Colors.blue,
          child: Center(
            child: RiveAnimation.asset(
              paths.value,
              controllers: [controller],
              fit: BoxFit.cover,
              onInit: (_) {
                debugPrint('Rive animation loaded');
              },
            ),
          ),
        ),
        /*Positioned(
          bottom: 20,
          right: 20,
          child: ElevatedButton(
            onPressed: toggleAnimation,
            child: const Text('Toggle Animation'),
          ),
        ),*/
      ],
    );
  }
}
