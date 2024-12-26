import 'audio_map.dart';

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
    SE(seid: 'se5', displayName: '少なめ'),
    SE(seid: 'se6', displayName: '多め'),
    SE(seid: 'se7', displayName: '甘く'),
    SE(seid: 'se8', displayName: '辛く'),
    SE(seid: 'se9', displayName: '柔らかめ'),
    SE(seid: 'se10', displayName: '硬め'),
    SE(seid: 'se11', displayName: '薄め'),
    SE(seid: 'se12', displayName: '濃いめ'),
    SE(seid: 'se13', displayName: '軽め'),
    SE(seid: 'se14', displayName: '重め'),
    SE(seid: 'se15', displayName: '冷たく'),
    SE(seid: 'se16', displayName: '温かく'),
    SE(seid: 'se17', displayName: '香ばしく'),
    SE(seid: 'se18', displayName: 'まろやかに'),
    SE(seid: 'se19', displayName: 'サクサク'),
    SE(seid: 'se20', displayName: 'ふんわり'),
  ];

  static String? getPath(int index) {
    if (index < 0 || index >= seOptions.length) {
      return null;
    }
    return AudioMap.getPathById(seOptions[index].seid);
  }

  static String? getPathBySeId(String seid) {
    final se = seOptions.firstWhere(
      (se) => se.seid == seid,
    );
    return AudioMap.getPathById(se.seid);
  }
}
