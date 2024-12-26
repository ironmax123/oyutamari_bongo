import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:oyutamaribondo/components/switch_button.dart';
import 'package:oyutamaribondo/gen/assets.gen.dart';
import 'package:oyutamaribondo/pages/home/components/handles.dart';
import 'package:oyutamaribondo/pages/home/components/button_components2.dart';
import 'package:oyutamaribondo/pages/home/components/button_full.dart';
import 'package:oyutamaribondo/pages/home/components/button_oi.dart';
import 'package:oyutamaribondo/pages/home/components/button_updown.dart';
import 'package:oyutamaribondo/pages/home/components/button_circle.dart';
import 'package:oyutamaribondo/components/animated_header.dart';
import 'package:oyutamaribondo/components/image_button.dart';
import 'package:oyutamaribondo/pages/sounds/logic/se_list.dart';
import 'package:oyutamaribondo/view_model.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sePlayer = useMemoized(() => AudioPlayer());

    return ref.watch(homePageVMProvider(sePlayer)).when(
          data: (data) {
            final List<SE> seList = data.seList;

            return Scaffold(
              body: Column(
                children: [
                  const SizedBox(height: 40),
                  const AnimatedHeader(),
                  Expanded(
                    child: Column(
                      children: [
                        Divider(
                          color: Colors.grey[150],
                          thickness: 3,
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Handles(),
                            SizedBox(
                              height: 100,
                              child: VerticalDivider(
                                color: Colors.grey[150],
                                thickness: 3,
                                width: 10,
                              ),
                            ),
                            const Expanded(
                              child: Buttoncomponents2(),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey[150],
                          thickness: 3,
                          height: 5,
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 16),
                            Column(
                              children: [
                                ImageButton(
                                  imagePath: Assets.images.a026.path,
                                  width: 200,
                                  height: 110,
                                  se: SE(seid: 'ohuro', displayName: ''),
                                  isConstant: true,
                                ),
                                SizedBox(
                                  width: 200,
                                  child: Row(
                                    children: [
                                      const SwitchButton(),
                                      const SizedBox(
                                        width: 24,
                                      ),
                                      Expanded(
                                        child: ButtonOi(
                                          se1: seList[2],
                                          se2: seList[3],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 16),
                                ButtonFull(
                                  se1: seList[4],
                                  se2: seList[5],
                                  se3: seList[6],
                                  se4: seList[7],
                                ),
                                const SizedBox(width: 16),
                              ],
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: ButtonUpdown(
                                se1: seList[8],
                                se2: seList[9],
                                se3: seList[10],
                              ),
                            ),
                            const SizedBox(width: 6),
                            ButtonCircle(
                              se1: seList[11],
                              se2: seList[12],
                              se3: seList[0],
                              se4: seList[1],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Row(
                            children: [
                              Image.asset(
                                Assets.images.dangerImage.path,
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 8),
                              const Expanded(
                                child: Text(
                                  'フロアが沸くと非常に熱くなるため、やけどなどにお気を付けください',
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          error: (error, stackTrace) => const Text('Error loading data'),
          loading: () => const SpinKitDoubleBounce(
            color: Colors.orange,
            size: 150.0,
          ),
        );
  }
}
