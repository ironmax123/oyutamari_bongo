import '/gen/assets.gen.dart';

class SoundButton {
  final String id; // ボタンのユニークID
  final String name; // ボタンの表示名
  final String soundPath; // 効果音のファイルパス

  const SoundButton({
    required this.id,
    required this.name,
    required this.soundPath,
  });
}

class AudioMap {
  static final List<SoundButton> buttons = [
    SoundButton(id: 'se1', name: 'ドン！', soundPath: Assets.sounds.se1),
    SoundButton(id: 'se2', name: 'パフッ！', soundPath: Assets.sounds.se2),
    SoundButton(id: 'se3', name: 'ピー', soundPath: Assets.sounds.se3),
    SoundButton(id: 'se4', name: 'ブォオン', soundPath: Assets.sounds.se4),
  ];

  static SoundButton? getButtonById(String id) {
    return buttons.firstWhere((button) => button.id == id);
  }

  static List<String> getAllPaths() {
    return buttons.map((button) => button.soundPath).toList();
  }

  static String? getPathById(String id) {
    switch (id) {
      case 'se1':
        return Assets.sounds.se1;
      case 'se2':
        return Assets.sounds.se2;
      case 'se3':
        return Assets.sounds.se3;
      case 'se4':
        return Assets.sounds.se4;
      case 'michael':
        return Assets.sounds.michael;
      case 'michael2':
        return Assets.sounds.michael2;
      case 'age':
        return Assets.sounds.age;
      case 'atsuatsu':
        return Assets.sounds.atsuatsu;
      case 'audio':
        return Assets.sounds.audio;
      case 'awaAwa':
        return Assets.sounds.awaAwa;
      case 'bathTime':
        return Assets.sounds.bathTime;
      case 'bongo':
        return Assets.sounds.bongo;
      case 'bukubuku':
        return Assets.sounds.bukubuku;
      case 'cool_down':
        return Assets.sounds.coolDown;
      case 'daki':
        return Assets.sounds.daki;
      case 'desu':
        return Assets.sounds.desu;
      case 'disco':
        return Assets.sounds.disco;
      case 'douga':
        return Assets.sounds.douga;
      case 'doumo':
        return Assets.sounds.doumo;
      case 'fever':
        return Assets.sounds.fever;
      case 'floor':
        return Assets.sounds.floor;
      case 'gannbatte':
        return Assets.sounds.gannbatte;
      case 'hai':
        return Assets.sounds.hai;
      case 'ikimasyou':
        return Assets.sounds.ikimasyou;
      case 'kanta':
        return Assets.sounds.kanta;
      case 'kati':
        return Assets.sounds.kati;
      case 'kyoumo':
        return Assets.sounds.kyoumo;
      case 'lightUp':
        return Assets.sounds.lightUp;
      case 'mainiti':
        return Assets.sounds.mainiti;
      case 'mantann':
        return Assets.sounds.mantann;
      case 'masimasi':
        return Assets.sounds.masimasi;
      case 'mizutamaribondo':
        return Assets.sounds.mizutamaribondo;
      case 'ne':
        return Assets.sounds.ne;
      case 'nuruku':
        return Assets.sounds.nuruku;
      case 'ohuro':
        return Assets.sounds.ohuro;
      case 'ohuroga':
        return Assets.sounds.ohuroga;
      case 'oi':
        return Assets.sounds.oi;
      case 'on':
        return Assets.sounds.on;
      case 'off':
        return Assets.sounds.off;
      case 'onegaisimasu':
        return Assets.sounds.onegaisimasu;
      case 'oreha':
        return Assets.sounds.oreha;
      case 'osiete':
        return Assets.sounds.osiete;
      case 'otsukare':
        return Assets.sounds.otsukare;
      case 'pikapika':
        return Assets.sounds.pikapika;
      case 'sage':
        return Assets.sounds.sage;
      case 'saiko':
        return Assets.sounds.saiko;
      case 'stop':
        return Assets.sounds.stop;
      case 'tappuri':
        return Assets.sounds.tappuri;
      case 'tikatika':
        return Assets.sounds.tikatika;
      case 'tomi':
        return Assets.sounds.tomi;
      case 'tyaputyapu':
        return Assets.sounds.tyaputyapu;
      case 'unten':
        return Assets.sounds.unten;
      case 'wakasu':
        return Assets.sounds.wakasu;
      case 'wakimasita':
        return Assets.sounds.wakimasita;
      case 'yorosiku':
        return Assets.sounds.yorosiku;
      case 'yuSen':
        return Assets.sounds.yuSen;
      case 'scratch1':
        return Assets.sounds.scratch1;
      case 'scratch2':
        return Assets.sounds.scratch2;
      case 'wind':
        return Assets.sounds.wind;
      default:
        return null; // デフォルトでは null を返します
    }
  }
}
