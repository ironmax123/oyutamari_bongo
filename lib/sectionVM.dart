import 'package:riverpod_annotation/riverpod_annotation.dart';
import './secttion_state.dart';

part 'sectionVM.g.dart';

@riverpod
class SectionPageVM extends _$SectionPageVM {
  @override
  Future<SectionPageState> build() async {
    return const SectionPageState(filldNum: 0.0);
  }

  void updateFilldNum(double? newFilldNum) {
    if (newFilldNum != null) {
      state = AsyncValue.data(state.value!.copyWith(filldNum: newFilldNum));
    }
  }
}
