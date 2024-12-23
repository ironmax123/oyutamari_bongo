import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../logic/se_list.dart';
//import 'dart:math';

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

/*Widget randomButtonWidget(AudioPlayer audioPlayer) {
  final random = Random();
  final randomOptions = List<SE>.from(SEList.seOptions)..shuffle(random);
  final selectedOptions = randomOptions.take(2).toList();

  return Column(
    children: selectedOptions.map((button) {
      return ElevatedButton(
        onPressed: () async {
          final index =
              SEList.seOptions.indexWhere((se) => se.seid == button.seid);
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
*/