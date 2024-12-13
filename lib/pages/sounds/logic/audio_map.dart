import '/gen/assets.gen.dart';

class AudioMap {
  Map<String, dynamic> idPath = {
    //id(表示名):path(ファイルパス),
    'se1': Assets.sounds.se1,
    'se2': Assets.sounds.se2,
    'se3': Assets.sounds.se3,
    'se4': Assets.sounds.se4,
  };
  Map<String, dynamic> getidPath() {
    return idPath;
  }
}
