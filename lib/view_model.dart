import 'package:riverpod_annotation/riverpod_annotation.dart';
import '/state.dart';

part 'view_model.g.dart';

@riverpod
class HomePageVM extends _$HomePageVM {
  @override
  Future<HomePageState> build() async {
    return const HomePageState(filldNum: 0.0);
  }

  void updateFilldNum(double? newFilldNum) {
    if (newFilldNum != null) {
      state = AsyncValue.data(state.value!.copyWith(filldNum: newFilldNum));
    }
  }
}
