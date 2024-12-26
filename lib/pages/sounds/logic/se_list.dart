import 'audio_map.dart';

class SE {
  final String seid;
  final String displayName;

  SE({required this.seid, required this.displayName});
}

class SEList {
  static final List<SE> seOptions = [
    SE(seid: 'age', displayName: 'あげ'),
    SE(seid: 'awa_awa', displayName: 'あわあわ'),
    SE(seid: 'bath_time', displayName: 'バスタイム'),
    SE(seid: 'bongo', displayName: 'ボンゴ'),
    SE(seid: 'bukubuku', displayName: 'ブクブク'),
    SE(seid: 'cool_down', displayName: 'クールダウン'),
    SE(seid: 'oi', displayName: 'おい'),
    SE(seid: 'daki', displayName: 'だき'),
    SE(seid: 'desu', displayName: 'です'),
    SE(seid: 'disco', displayName: 'ディスコ'),
    SE(seid: 'douga', displayName: '動画'),
    SE(seid: 'doumo', displayName: 'どうも'),
    SE(seid: 'fever', displayName: 'フィーバー'),
    SE(seid: 'floor', displayName: 'フロア'),
    SE(seid: 'gannbatte', displayName: '頑張って'),
    SE(seid: 'hai', displayName: 'はい'),
    SE(seid: 'ikimasyou', displayName: '行きましょう'),
    SE(seid: 'kanta', displayName: 'カンタ'),
    SE(seid: 'kyoumo', displayName: '今日も'),
    SE(seid: 'mainiti', displayName: '毎日'),
    SE(seid: 'mantann', displayName: '満タン'),
    SE(seid: 'masimasi', displayName: 'ましまし'),
    SE(seid: 'Michael_2', displayName: 'マイケル！'),
    SE(seid: 'Michael', displayName: 'マイケル'),
    SE(seid: 'mizutamaribondo', displayName: '水溜まりボンド'),
    SE(seid: 'ne', displayName: 'ね、'),
    SE(seid: 'nuruku', displayName: 'ぬるく'),
    SE(seid: 'ohuroga', displayName: 'お風呂が'),
    SE(seid: 'onegaisimasu', displayName: 'お願いします'),
    SE(seid: 'oreha', displayName: '俺は'),
    SE(seid: 'osiete', displayName: '教えて'),
    SE(seid: 'otsukare', displayName: 'お疲れ'),
    SE(seid: 'pikapika', displayName: 'ピカピカ'),
    SE(seid: 'sage', displayName: 'さげ'),
    SE(seid: 'saiko', displayName: '最高'),
    SE(seid: 'stop', displayName: 'ストップ'),
    SE(seid: 'tappuri', displayName: 'たっぷり'),
    SE(seid: 'tomi', displayName: 'トミー'),
    SE(seid: 'tyaputyapu', displayName: 'ちゃぷちゃぷ'),
    SE(seid: 'unten', displayName: '運転'),
    SE(seid: 'wakasu', displayName: '沸かす'),
    SE(seid: 'wakimasita', displayName: '沸きました'),
    SE(seid: 'yorosiku', displayName: 'よろしく'),
    SE(seid: 'yu-sen', displayName: '優先'),
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
