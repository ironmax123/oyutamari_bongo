import './audio_map.dart';

class SE {
  final String seid;
  final String displayName;

  SE({required this.seid, required this.displayName});
}

class SEList {
  static final List<SE> seOptions = [
    SE(seid: 'se1', displayName: 'たっぷり'),
    SE(seid: 'se2', displayName: 'あつく'),
    SE(seid: 'se3', displayName: 'ぬるく'),
    SE(seid: 'se4', displayName: '満タン'),
  ];

  static String? getPath(int index) {
    if (index < 0 || index >= seOptions.length) {
      return null;
    }
    return AudioMap.getPathById(seOptions[index].seid);
  }
}
