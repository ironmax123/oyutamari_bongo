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
}
