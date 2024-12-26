import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyutamaribondo/pages/sounds/logic/se_list.dart';

part 'state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState(
      {required double filldNum, required List<SE> seList}) = _HomePageState;
}
