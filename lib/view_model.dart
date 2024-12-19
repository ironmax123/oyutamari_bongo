import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:oyutamaribondo/state.dart';

part 'view_model.g.dart';

@riverpod
class HomePageVM extends _$HomePageVM {
  @override
  Future<HomePageState> build() async {
    return const HomePageState(test: 'test');
  }
}
