import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:oyutamaribondo/gen/assets.gen.dart';
import 'package:oyutamaribondo/pages/sounds/logic/se_list.dart';
import 'package:oyutamaribondo/view_model.dart';

class SwitchButton extends HookConsumerWidget {
  const SwitchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sePlayer = useMemoized(() => AudioPlayer());
    final isOn = useState(false);

    return GestureDetector(
      onTap: () {
        final se = isOn.value
            ? SE(seid: 'on', displayName: '')
            : SE(seid: 'off', displayName: '');
        ref.read(homePageVMProvider(sePlayer).notifier).playSe(
              se,
              isConstant: true,
            );
        isOn.value = !isOn.value;
      },
      child: SizedBox(
        width: 120,
        height: 100,
        child: Image.asset(
          isOn.value
              ? Assets.images.switchOn.path
              : Assets.images.switchOff.path,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
