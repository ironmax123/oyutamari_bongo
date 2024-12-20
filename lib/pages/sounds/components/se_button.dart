import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../logic/se_list.dart';

Widget soundButtonWidget(AudioPlayer audioPlayer) {
  return Column(
    children: SEList.seOptions.map((button) {
      return ElevatedButton(
        onPressed: () async {
          final index = SEList.seOptions
              .indexWhere((se) => se.displayName == button.displayName);
          if (index != -1) {
            final path = SEList.getPath(index);
            if (path != null) {
              await audioPlayer.setAsset(path);
              await audioPlayer.play();
            }
          }
        },
        child: Text(button.displayName),
      );
    }).toList(),
  );
}
